package com.kirilo.springMVC.controllers;

import com.kirilo.springMVC.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getFormLogin() {
        return new ModelAndView("login", "user", new User());
    }

    @RequestMapping(value = "/check-user", method = RequestMethod.POST)
    public ModelAndView checkUser(@ModelAttribute(value = "user") User user) {
/*        ModelAndView view = new ModelAndView();
        view.setViewName("main");
        view.addObject("user", user);
        return view;*/
        return new ModelAndView("main", "user", user);
    }


}
