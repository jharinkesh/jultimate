/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.home;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getHomePage() {
        return "home/index";
    }

    @RequestMapping(value = "/header", method = RequestMethod.GET)
    public ModelAndView getHeader(ModelMap model1) {

        ModelAndView model = new ModelAndView();
        model.setViewName("home/header");
        model.addObject("isLoggedIn", 0);
        model.addObject("keywords", "Java Basics, Collections, Multithreading, Oops Concepts, Exception Handling, Data Structures, Design Patterns, Spring Framework, Spring Core, Spring MVC, "
                + "Spring Security, Spring Mail, Spring Data, Computer Basics, MS Office");
        model.addObject("description", "Study Material for Java Basics, Collections, Multithreading, Oops Concepts, Exception Handling, Data Structures, Design Patterns, Spring Framework, Spring Core, Spring MVC, "
                + "Spring Security, Spring Mail, Spring Data, Computer Basics, MS Office");
        model.addObject("title", "Java Ultimate | A Complete Place For Learning Java : Study Material for Java Basics, Collections, Multithreading, Oops Concepts, Exception Handling, Data Structures, Design Patterns, Spring Framework, Spring Core, Spring MVC, "
                + "Spring Security, Spring Mail, Spring Data, Computer Basics, MS Office");

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth == null) {
            return model;
        }

        Object principal = auth.getPrincipal();
        if (!(principal instanceof User)) {
            return model;
        }

        User user = (User) principal;
        model.addObject("isLoggedIn", 1);
        System.out.println(user.getUsername() + " is current user");
        model1.addAttribute("loggedUser", user.getUsername());
        return model;
    }

    @RequestMapping(value = "/header/page", method = RequestMethod.GET)
    public ModelAndView getHeaderForPage(ModelMap model1) {

        ModelAndView model = new ModelAndView();
        model.setViewName("home/header");
        model.addObject("isLoggedIn", 0);

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth == null) {
            return model;
        }

        Object principal = auth.getPrincipal();
        if (!(principal instanceof User)) {
            return model;
        }

        User user = (User) principal;
        model.addObject("isLoggedIn", 1);
//        System.out.println(user.getUsername() + " is current user");
        model1.addAttribute("loggedUser", user.getUsername());
        return model;
    }

    @RequestMapping(value = "/body", method = RequestMethod.GET)
    public String getBody() {
        return "home/body";
    }

    @RequestMapping(value = "/footer", method = RequestMethod.GET)
    public String getFooter() {
        return "home/footer";
    }

    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String getErrorPage() {
        return "home/error";
    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String getContactUsPage() {
        return "home/contact";
    }

    @RequestMapping(value = "/contactbody", method = RequestMethod.GET)
    public String getContactBody() {
        return "home/contactbody";
    }

    @RequestMapping(value = "/forgotpassword_template", method = RequestMethod.GET)
    public String getForgotPage() {
        return "templates/forgotpassword_template";
    }

}
