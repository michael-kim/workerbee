package com.nexr.workerbee.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.nexr.workerbee.web.model.Reservation;
import com.nexr.workerbee.web.validator.ReservationValidator;

@Controller
@SessionAttributes("reservation")
public class FormController {
    private static final Logger LOG = LoggerFactory.getLogger(FormController.class);
    
    @RequestMapping(value="/simpleForm",method=RequestMethod.GET)    
    public String simpleForm(Model model){
        return "simpleForm";
    }
    
    @RequestMapping(value="/form",method=RequestMethod.GET)
    public String setupForm(Model model){
        Reservation reservation = new Reservation();
        reservation.setId("KEY");
        model.addAttribute("reservation",reservation);
        return "form/form";
    }
    
    @Autowired
    private ReservationValidator reservationValidator;
    
    @RequestMapping(value="/form",method=RequestMethod.POST)
    public String submitForm(@ModelAttribute("reservation") Reservation reservation,
            BindingResult result, SessionStatus status,Model model){
        reservationValidator.validate(reservation, result);
        if (result.hasErrors()){
            model.addAttribute("reservation",reservation);
            return "form/form";
        }else{
            status.setComplete();
        }
        return "redirect:/formSuccess";
    }
    
    @RequestMapping(value="/formSuccess",method=RequestMethod.GET)
    public String success(){
        return "form/formSuccess";
    }
    
}
