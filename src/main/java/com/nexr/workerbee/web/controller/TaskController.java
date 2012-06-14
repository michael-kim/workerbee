package com.nexr.workerbee.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
import com.nexr.workerbee.dto.HiveTask;
import com.nexr.workerbee.dto.JdbcTask;
import com.nexr.workerbee.dto.SshTask;
import com.nexr.workerbee.dto.Task;
import com.nexr.workerbee.dto.TaskComment;
import com.nexr.workerbee.dto.TaskGroup;
import com.nexr.workerbee.service.TaskCommentService;
import com.nexr.workerbee.service.TaskGroupService;
import com.nexr.workerbee.service.TaskService;
import com.nexr.workerbee.web.validator.TaskValidator;

@Controller
@RequestMapping("/tasks")
@SessionAttributes(value={"hiveTask","jdbcTask","sshTask"})
public class TaskController {
    private static final Logger logger = LoggerFactory.getLogger(TaskController.class);

    @Resource
    TaskService taskService;
    
    @Resource
    TaskGroupService taskGroupService;
    
    @Resource
    TaskCommentService taskCommentService;
    
    @Resource
    TaskValidator taskValidator;
    
    @RequestMapping(value="view",method=RequestMethod.GET)
    public String view(@RequestParam("taskId") Long taskId, Model model){
        Task task = taskService.findById(taskId);
        if (task instanceof HiveTask){
            model.addAttribute("task",(HiveTask)task);
        }
        if (task instanceof JdbcTask){
            model.addAttribute("task", (JdbcTask)task);
        }
        if (task instanceof SshTask){
            model.addAttribute("task", (SshTask)task);
        }
        model.addAttribute("taskComments",taskCommentService.findAll(taskId));
        TaskComment comment = new TaskComment();
        comment.setTask(task);
        model.addAttribute("taskComment",comment);
        return "tiles.tasks.view";
    }
    
    
    @RequestMapping(value="list",method=RequestMethod.GET)
    public String list(
            @RequestParam("taskGroupId") Long taskGroupId,
            @RequestParam(value="pageNum",required=false,defaultValue="1") int pageNum,
            Model model){
        final int PAGE_SIZE=10;
        EntityPage<Task> pager = taskService.getPage(taskGroupId, pageNum, PAGE_SIZE);
        List<Task> tasks = pager.getList();
        TaskGroup taskGroup = taskGroupService.findTaskGroupById(taskGroupId);
        model.addAttribute("taskGroup",taskGroup);
        model.addAttribute("tasks",tasks);
        model.addAttribute("pager",pager);
        return "tiles.tasks.list";
    }
    
    @RequestMapping(value="delete",method=RequestMethod.GET)
    public String delete(@RequestParam("taskId") Long taskId, Model model,
            HttpServletRequest request){
        taskService.deleteTask(taskId);
        return "redirect:"+ request.getHeader("Referer");
    }
    
    
    @RequestMapping(value="addHiveTask",method=RequestMethod.GET)
    public String addHiveTask(@RequestParam("taskGroupId") Long taskGroupId,Model model){
        HiveTask task = new HiveTask();
        task.setTaskGroup(new TaskGroup(taskGroupId));
        model.addAttribute("hiveTask", task);
        return "tiles.tasks.add.hive";
    }
    
    @RequestMapping(value="addHiveTask",method=RequestMethod.POST)
    public String submitHiveTask(@ModelAttribute("hiveTask")HiveTask task,
            BindingResult result, SessionStatus status,Model model,HttpServletRequest request){
        
        String parentTasks = request.getParameter("precedingTasks");
        logger.error("PARENT_TASKS : "+parentTasks);
        
        
        taskValidator.validate(task, result);
        
        if (result.hasErrors()){
            model.addAttribute("hiveTask", task);
            return "tiles.tasks.add.hive";
        }else{
            status.setComplete();
        }
        
        taskService.addTask(task);
        return "redirect:list?taskGroupId="+task.getTaskGroup().getId();
    }
    
    @RequestMapping(value="addJdbcTask",method=RequestMethod.GET)
    public String addJdbcTask(@RequestParam("taskGroupId") Long taskGroupId,Model model){
        JdbcTask task = new JdbcTask();
        task.setTaskGroup(new TaskGroup(taskGroupId));
        model.addAttribute("jdbcTask", task);
        return "tiles.tasks.add.jdbc";
    }
    
    @RequestMapping(value="addJdbcTask",method=RequestMethod.POST)
    public String submitJdbcTask(@ModelAttribute("jdbcTask")JdbcTask task,
            BindingResult result, SessionStatus status,Model model){
        
        taskValidator.validate(task, result);
        
        if (result.hasErrors()){
            model.addAttribute("jdbcTask", task);
            return "tiles.tasks.add.jdbc";
        }else{
            status.setComplete();
        }
        
        taskService.addTask(task);
        return "redirect:list?taskGroupId="+task.getTaskGroup().getId();
    }
    
    @RequestMapping(value="addSshTask",method=RequestMethod.GET)
    public String addSshTask(@RequestParam("taskGroupId") Long taskGroupId,Model model){
        SshTask task = new SshTask();
        task.setTaskGroup(new TaskGroup(taskGroupId));
        model.addAttribute("sshTask", task);
        return "tiles.tasks.add.ssh";
    }
    
    @RequestMapping(value="addSshTask",method=RequestMethod.POST)
    public String submitSshTask(@ModelAttribute("sshTask")SshTask task,
            BindingResult result, SessionStatus status,Model model){
        
        taskValidator.validate(task, result);
        
        if (result.hasErrors()){
            model.addAttribute("sshTask", task);
            return "tiles.tasks.add.ssh";
        }else{
            status.setComplete();
        }
        
        taskService.addTask(task);
        return "redirect:list?taskGroupId="+task.getTaskGroup().getId();
    }
    
    @RequestMapping(value="edit",method=RequestMethod.GET)
    public String edit(@RequestParam("taskId") Long taskId, Model model){
        Task task = taskService.findById(taskId);
        if (task instanceof HiveTask){
            model.addAttribute("hiveTask",(HiveTask)task);
            return "tiles.tasks.edit.hive";
        }
        if (task instanceof JdbcTask){
            model.addAttribute("jdbcTask", (JdbcTask)task);
            return "tiles.tasks.edit.jdbc";
        }
        if (task instanceof SshTask){
            model.addAttribute("sshTask", (SshTask)task);
            return "tiles.tasks.edit.ssh";
        }
        return "tiles.tasks.list";
    }
    
    
    @RequestMapping(value="edithive",method=RequestMethod.POST)
    public String updateHiveTask(@ModelAttribute("hiveTask")HiveTask task,
            BindingResult result, SessionStatus status,Model model){
        
        taskValidator.validate(task, result);
        
        if (result.hasErrors()){
            model.addAttribute("hiveTask",task);
            return "tiles.tasks.edit.hive";
        }else{
            status.setComplete();
        }
        taskService.updateTask(task);
        return "redirect:list?taskGroupId="+task.getTaskGroup().getId();
    }
    
    @RequestMapping(value="editjdbc",method=RequestMethod.POST)
    public String updateJdbcTask(@ModelAttribute("jdbcTask")JdbcTask task,
            BindingResult result, SessionStatus status,Model model){
        
        taskValidator.validate(task, result);
        
        if (result.hasErrors()){
            model.addAttribute("jdbcTask",task);
            return "tiles.tasks.edit.jdbc";
        }else{
            status.setComplete();
        }
        taskService.updateTask(task);
        return "redirect:list?taskGroupId="+task.getTaskGroup().getId();
    }
    
    @RequestMapping(value="editssh",method=RequestMethod.POST)
    public String updateSshTask(@ModelAttribute("sshTask")SshTask task,
            BindingResult result, SessionStatus status,Model model){
        
        taskValidator.validate(task, result);
        
        if (result.hasErrors()){
            model.addAttribute("sshTask",task);
            return "tiles.tasks.edit.ssh";
        }else{
            status.setComplete();
        }
        taskService.updateTask(task);
        return "redirect:list?taskGroupId="+task.getTaskGroup().getId();
    }
    
}
