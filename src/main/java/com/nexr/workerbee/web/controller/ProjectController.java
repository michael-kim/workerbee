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

import com.nexr.workerbee.dto.Project;
import com.nexr.workerbee.service.ProjectService;
import com.nexr.workerbee.web.validator.ProjectValidator;

@Controller
@RequestMapping("/projects")
@SessionAttributes("project")
public class ProjectController {
    private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
    
    @Resource
    ProjectService projectService;
    
    @Resource
    ProjectValidator projectValidator;
    
    @RequestMapping(value="list",method=RequestMethod.GET)
    public String list(Model model){
        List<Project> projects = projectService.findAll();
        model.addAttribute("projects",projects);
        return "tiles.projects.list";
    }
    
    @RequestMapping(value="delete",method=RequestMethod.GET)
    public String delete(@RequestParam("projectId") Long projectId, Model model,
            HttpServletRequest request){
        projectService.deleteProject(projectId);
        return "redirect:"+ request.getHeader("Referer");
    }
    
    @RequestMapping(value="add",method=RequestMethod.GET)
    public String add(Model model){
        Project project = new Project();
        model.addAttribute("project", project);
        return "tiles.projects.add";
    }
    
    @RequestMapping(value="add",method=RequestMethod.POST)
    public String submit(@ModelAttribute("project")Project project,
            BindingResult result, SessionStatus status,Model model){
        
        projectValidator.validate(project, result);
        
        if (result.hasErrors()){
            model.addAttribute("project", project);
            return "tiles.projects.add";
        }else{
            status.setComplete();
        }
        
        projectService.addProject(project);
        return "redirect:list";
    }
    
    
    @RequestMapping(value="edit",method=RequestMethod.GET)
    public String edit(@RequestParam("projectId") Long projectId, Model model){
        
        Project project = projectService.findById(projectId);
        model.addAttribute("project",project);
        return "tiles.projects.edit";
    }
    
    @RequestMapping(value="edit",method=RequestMethod.POST)
    public String update(@ModelAttribute("project")Project project,
            BindingResult result, SessionStatus status,Model model){
        
        projectValidator.validate(project, result);
        
        if (result.hasErrors()){
            model.addAttribute("project",project);
            return "tiles.projects.edit";
        }else{
            status.setComplete();
        }
        
        projectService.updateProject(project);
        return "redirect:list";
    }

    
}
