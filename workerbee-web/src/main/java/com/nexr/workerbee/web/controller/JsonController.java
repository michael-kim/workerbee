package com.nexr.workerbee.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nexr.workerbee.dto.Task;
import com.nexr.workerbee.service.TaskService;

@Controller
@RequestMapping("/json")
public class JsonController {
    
    @Resource
    TaskService taskService;
    
    @RequestMapping(value="getTasks",method=RequestMethod.GET)
    public String jsonTask(
            @RequestParam("taskGroupId")Long taskGroupId,
            Model model){
        List<Task> tasks = taskService.findByTaskGroupId(taskGroupId);
        
        List<Map> list = new ArrayList<Map>();
        for(Task task:tasks){
            Map map = new HashMap();
            map.put("id", task.getId());
            map.put("name", task.getName());
            map.put("description", task.getDescription());
            map.put("type", task.getTaskType());
            map.put("summary", task.getSummaryText());
            map.put("search",task.getTaskType().toString()+" "+task.getId()+" - "+task.getName());
            list.add(map);
        }
        model.addAttribute("list", list);
        return "jsonViewWithoutRoot";
    }
    
}
