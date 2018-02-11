/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.admin.controller;

import com.ultimate.admin.util.AdminConstants;
import com.ultimate.page.service.PageService;
import javax.inject.Inject;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author baba
 */
@Controller
@RequestMapping(AdminConstants.WEB_PREFIX)
@Secured("ROLE_ADMIN")
public class AdminController {

    @Inject
    PageService pageService;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView getAdminHome() {

        ModelAndView model = new ModelAndView();
        //model.addObject("content", pageService.getArticle("java_introduction").getContent());            
        model.setViewName("admin/home");

        return model;

    }

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public ModelAndView adminTest() {

        ModelAndView model = new ModelAndView();
        model.addObject("content", pageService.getArticle("java_introduction").getContent());
        model.setViewName("admin/admin_test");

        return model;

    }
    
    @RequestMapping(value = "/listsubject", method = RequestMethod.GET)
    public String getSubjectPage() {       
        return "admin/listsubject";
    }
    @RequestMapping(value = "/listtopic", method = RequestMethod.GET)
    public String getTopicPage() {
        return "admin/listtopic";
    }
    @RequestMapping(value = "/listarticle", method = RequestMethod.GET)
    public String getArticlePage() {
        return "admin/listarticle";
    }
    
    @RequestMapping(value = "/addcategory", method = RequestMethod.GET)
    public String getCategoryPage() {
        return "admin/addcategory";
    }

    @RequestMapping(value = "/addsubcategory", method = RequestMethod.GET)
    public String getSubCategoryPage() {
        return "admin/addsubcategory";
    }

    @RequestMapping(value = "/addcontent", method = RequestMethod.GET)
    public String getAddContentPage() {
        return "admin/addcontent";
    }

    @RequestMapping(value = "/allcontentlist", method = RequestMethod.GET)
    public String getAllContentList() {
        return "admin/allcontentlist";
    }

    @RequestMapping(value = "/editprofile", method = RequestMethod.GET)
    public String getEditprofileList() {
        return "admin/editprofile";
    }

}
