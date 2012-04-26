package com.nexr.workerbee.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.Project;
import com.nexr.workerbee.dto.TaskGroup;
import com.nexr.workerbee.service.ProjectService;
import com.nexr.workerbee.service.TaskGroupService;
import com.nexr.workerbee.web.validator.TaskGroupValidator;


@Controller
@RequestMapping("/taskgroups")
@SessionAttributes("taskGroup")
public class TaskGroupController {
    private static final Logger logger = LoggerFactory.getLogger(TaskGroupController.class);
    
    @Resource
    TaskGroupService taskGroupService;
    
    @Resource
    ProjectService projectService;
    
    @Resource
    TaskGroupValidator taskGroupValidator;
    
    @RequestMapping(value="list",method=RequestMethod.GET)
    public String list(
            @RequestParam("projectId") Long projectId,
            @RequestParam(value="pageNum",required=false,defaultValue="1") int pageNum,
            Model model){
        final int PAGE_SIZE=2;
        
        EntityPage<TaskGroup> pager = taskGroupService.getTaskGroupPage(projectId, pageNum, PAGE_SIZE);
        List<TaskGroup> taskGroups = pager.getList();
        
        Project project = projectService.getProject(projectId);
        List<Project> projects = projectService.getAllProjects();
        model.addAttribute("projects",projects);
        model.addAttribute("project",project);
        model.addAttribute("taskGroups",taskGroups);
        model.addAttribute("pager",pager);
        return "tiles.taskgroups.list";
    }
    
    @RequestMapping(value="delete",method=RequestMethod.GET)
    public String delete(@RequestParam("taskGroupId") Long taskGroupId, Model model,
            HttpServletRequest request){
        taskGroupService.deleteTaskGroup(taskGroupId);
        return "redirect:"+ request.getHeader("Referer");
    }
    
    @RequestMapping(value="add",method=RequestMethod.GET)
    public String add(@RequestParam("projectId") Long projectId,Model model){
        TaskGroup taskGroup = new TaskGroup();
        taskGroup.setProject(new Project(projectId));
        model.addAttribute("taskGroup", taskGroup);
        return "tiles.taskgroups.add";
    }
    
    @RequestMapping(value="add",method=RequestMethod.POST)
    public String submit(@ModelAttribute("taskGroup")TaskGroup taskGroup,
            BindingResult result, SessionStatus status,Model model){
        
        taskGroupValidator.validate(taskGroup, result);
        
        if (result.hasErrors()){
            model.addAttribute("taskGroup", taskGroup);
            return "tiles.taskgroups.add";
        }else{
            status.setComplete();
        }
        taskGroupService.addTaskGroup(taskGroup);
        return "redirect:list?projectId="+taskGroup.getProject().getId();
    }
    
    
    @RequestMapping(value="edit",method=RequestMethod.GET)
    public String edit(@RequestParam("taskGroupId") Long taskGroupId, Model model){
        
        TaskGroup taskGroup = taskGroupService.getTaskGroup(taskGroupId);
        model.addAttribute("taskGroup",taskGroup);
        return "tiles.taskgroups.edit";
    }
    
    @RequestMapping(value="edit",method=RequestMethod.POST)
    public String update(@ModelAttribute("taskGroup")TaskGroup taskGroup,
            BindingResult result, SessionStatus status,Model model){
        
        taskGroupValidator.validate(taskGroup, result);
        
        if (result.hasErrors()){
            model.addAttribute("taskGroup",taskGroup);
            return "tiles.taskgroups.edit";
        }else{
            status.setComplete();
        }
        
        taskGroupService.updateTaskGroup(taskGroup);
        return "redirect:list?projectId="+taskGroup.getProject().getId();
    }

    
}
