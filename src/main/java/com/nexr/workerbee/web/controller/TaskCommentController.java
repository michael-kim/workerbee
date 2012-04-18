package com.nexr.workerbee.web.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.nexr.workerbee.dto.TaskComment;
import com.nexr.workerbee.dto.User;
import com.nexr.workerbee.service.TaskCommentService;
import com.nexr.workerbee.service.UserService;
import com.nexr.workerbee.web.validator.TaskCommentValidator;

@Controller
@RequestMapping("/taskComments")
public class TaskCommentController {
    private static final Logger logger = LoggerFactory.getLogger(TaskCommentController.class);
    
    @Resource
    TaskCommentService taskCommentService;
    
    @Resource
    UserService userService;
    
    @Resource
    TaskCommentValidator taskCommentValidator;
    
    @RequestMapping(value="delete",method=RequestMethod.GET)
    public String delete(@RequestParam(required=true,value="taskCommentId")Long taskCommentId,Model model,
        HttpServletRequest request){
        taskCommentService.delete(taskCommentId);
        return "redirect:"+ request.getHeader("Referer");
    }
    
    @RequestMapping(value="add", method=RequestMethod.POST)
    public String onSubmit(@ModelAttribute("taskComment") TaskComment taskComment,
            BindingResult result,SessionStatus status, Model model){
        
        taskCommentValidator.validate(taskComment, result);
        
        if(result.hasErrors()){
            model.addAttribute("taskComment", taskComment);
            model.addAttribute("taskComments",taskCommentService.findAll(taskComment.getTask().getId()));
            return "taskcomments/listTaskComments";
        }else{
            status.setComplete();
        }
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.getUser(auth.getName());
        taskComment.setAuthor(user.getUserProfile());
        
        logger.info("post comment "+taskComment.getComment());
        taskCommentService.post(taskComment);
        
        TaskComment newComment = new TaskComment();
        newComment.setTask(taskComment.getTask());
        model.addAttribute("taskComment", newComment);
        model.addAttribute("taskComments",taskCommentService.findAll(taskComment.getTask().getId()));
        return "taskcomments/listTaskComments";
    }
}
