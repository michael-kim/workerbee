package com.nexr.workerbee.controller.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.nexr.workerbee.repository.impl.EntityPage;
import com.nexr.workerbee.dto.TaskProperty;
import com.nexr.workerbee.service.TaskPropertyService;
import com.nexr.workerbee.controller.validator.TaskPropertyValidator;

@Controller
@RequestMapping(value="/taskproperties")
@SessionAttributes("taskProperty")
public class TaskPropertyController {
    
    @Resource
    TaskPropertyService taskPropertyService;
    
    @Resource
    TaskPropertyValidator taskPropertyValidator;
    
    @RequestMapping(value="list")
    public String list(
            @RequestParam(value="pageNum",defaultValue="1",required=false) int pageNum, 
            Model model){
        final int pageSize=20;
        
        EntityPage<TaskProperty> pager = taskPropertyService.getPage(pageNum, pageSize);
        List<TaskProperty> taskProperties = pager.getList();
        model.addAttribute("taskProperties", taskProperties);
        model.addAttribute("pager", pager);
        return "tiles.taskproperties.list";
    }
 
    @RequestMapping(value="add",method=RequestMethod.GET)
    public String add(Model model){
        TaskProperty property = new TaskProperty();
        model.addAttribute("taskProperty", property);
        return "tiles.taskproperties.add";
    }
    
    @RequestMapping(value="add",method=RequestMethod.POST)
    public String submit(@ModelAttribute("taskProperty")TaskProperty taskProperty,
            BindingResult result, SessionStatus status,Model model){
        
        taskPropertyValidator.validate(taskProperty, result);
        
        if (result.hasErrors()){
            model.addAttribute("taskProperty", taskProperty);
            return "tiles.taskproperties.add";
        }else{
            status.setComplete();
        }
        
        taskPropertyService.add(taskProperty);
        return "redirect:list";
    }
    
    @RequestMapping(value="edit",method=RequestMethod.GET)
    public String edit(@RequestParam("taskPropertyId") Long taskPropertyId, Model model){
        TaskProperty taskProperty = taskPropertyService.findById(taskPropertyId);
        model.addAttribute("taskProperty",taskProperty);
        return "tiles.taskproperties.edit";
    }
    
    @RequestMapping(value="edit",method=RequestMethod.POST)
    public String update(@ModelAttribute("taskProperty")TaskProperty taskProperty,
            BindingResult result, SessionStatus status,Model model){
        
        taskPropertyValidator.validate(taskProperty, result);
        
        if (result.hasErrors()){
            model.addAttribute("taskProperty", taskProperty);
            return "tiles.taskproperties.edit";
        }else{
            status.setComplete();
        }
        
        taskPropertyService.add(taskProperty);
        return "redirect:list";
    }
    
    @RequestMapping(value="delete",method=RequestMethod.GET)
    public String delete(@RequestParam("taskPropertyId") Long taskPropertyId, Model model,
            HttpServletRequest request){
        taskPropertyService.delete(taskPropertyId);
        return "redirect:"+ request.getHeader("Referer");
    }
}
