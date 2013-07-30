package com.nexr.workerbee.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class LoginController {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String signin(@RequestParam(value = "error", defaultValue = "false", required = false) Boolean isError,
            ModelMap model) {
        if (isError) {
            model.put("isError", isError);
        }
        return "login/login";
    }

    @RequestMapping(value = "/forgot", method = RequestMethod.GET)
    public String forgot() {
        return "login/forgot";
    }


    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signup() {
        return "login/signup";
    }
    
}
