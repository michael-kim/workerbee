package com.nexr.workerbee.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nexr.workerbee.dao.impl.EntityPage;
import com.nexr.workerbee.dto.Task;
import com.nexr.workerbee.dto.TaskGroup;
import com.nexr.workerbee.service.TaskGroupService;
import com.nexr.workerbee.service.TaskService;

@Controller
@RequestMapping("/tasks")
public class TaskController {
    
    
    @Resource
    TaskService taskService;
    
    @Resource
    TaskGroupService taskGroupService;
    
    
    @RequestMapping(value="list",method=RequestMethod.GET)
    public String list(
            @RequestParam("taskGroupId") Long taskGroupId,
            @RequestParam(value="pageNum",required=false,defaultValue="1") int pageNum,
            Model model){
        final int PAGE_SIZE=2;
        EntityPage<Task> pager = taskService.getPage(taskGroupId, pageNum, PAGE_SIZE);
        List<Task> tasks = pager.getList();
        TaskGroup taskGroup = taskGroupService.getTaskGroup(taskGroupId);
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
    
    
}
