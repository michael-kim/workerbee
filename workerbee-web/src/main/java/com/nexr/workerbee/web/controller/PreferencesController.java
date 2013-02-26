package com.nexr.workerbee.controller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PreferencesController {
    
    @RequestMapping(value={"/settings/preferences"},method=RequestMethod.GET)
    public String preferences(){
        return "tiles.settings.preferences";
    }
    
    @RequestMapping(value={"/settings/preferences/timezone"},method=RequestMethod.GET)
    public String timezone(Model model){
        model.addAttribute("tab", "timezone");
        return "tiles.settings.preferences";
    }
    
    @RequestMapping(value={"/settings/preferences/timezone"},method=RequestMethod.POST)
    public String updateTimezone(Model model){
        
        // validation
        // update time zone
        return "redirect:/settings/preferences";
    }
    
    @RequestMapping(value={"/settings/preferences/keyboard"},method=RequestMethod.GET)
    public String keyboard(Model model){
        model.addAttribute("tab", "keyboard");
        return "tiles.settings.preferences";
    }
    
    @RequestMapping(value={"/settings/preferences/keyboard"},method=RequestMethod.POST)
    public String updateKeyboard(Model model){
        
        // validation
        // update time zone
        return "redirect:/settings/preferences";
    }
    
}
