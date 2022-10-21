package com.slawomir_aleksak.spring_first_projekt.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class OmnieController {
    @RequestMapping("/omnie")
    public ModelAndView oMniePage() {
        return new ModelAndView("oMnie");
    }
}
