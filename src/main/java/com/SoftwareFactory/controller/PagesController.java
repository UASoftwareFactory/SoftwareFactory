package com.SoftwareFactory.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class PagesController {

    @RequestMapping(value = { "/aboutUs" }, method = RequestMethod.GET)
    public ModelAndView aboutSofac() {
        ModelAndView modelAndView = new ModelAndView("aboutUs");
        return modelAndView;
    }

    @RequestMapping(value = { "/branch" }, method = RequestMethod.GET)
    public ModelAndView branch() {
        ModelAndView modelAndView = new ModelAndView("branch");
        return modelAndView;
    }

    @RequestMapping(value = { "/control" }, method = RequestMethod.GET)
    public ModelAndView control() {
        ModelAndView modelAndView = new ModelAndView("control");
        return modelAndView;
    }

    @RequestMapping(value = { "/documents" }, method = RequestMethod.GET)
    public ModelAndView documents() {
        ModelAndView modelAndView = new ModelAndView("documents");
        return modelAndView;
    }

    @RequestMapping(value = { "/guide" }, method = RequestMethod.GET)
    public ModelAndView guide() {
        ModelAndView modelAndView = new ModelAndView("guide");
        return modelAndView;
    }

    @RequestMapping(value = { "/fxm" }, method = RequestMethod.GET)
    public ModelAndView gxm() {
        ModelAndView modelAndView = new ModelAndView("fxm");
        return modelAndView;
    }

    @RequestMapping(value = { "/portfolio" }, method = RequestMethod.GET)
    public ModelAndView portfolio() {
        ModelAndView modelAndView = new ModelAndView("portfolio");
        return modelAndView;
    }

    @RequestMapping(value = { "/whatIsCase" }, method = RequestMethod.GET)
    public ModelAndView whatIsCase() {
        ModelAndView modelAndView = new ModelAndView("whatIsCase");
        return modelAndView;
    }

    @RequestMapping(value = { "/whatIsSofac" }, method = RequestMethod.GET)
    public ModelAndView whatIsSofac() {
        ModelAndView modelAndView = new ModelAndView("whatIsSofac");
        return modelAndView;
    }

    @RequestMapping(value = { "/technology" }, method = RequestMethod.GET)
    public ModelAndView technology() {
        ModelAndView modelAndView = new ModelAndView("technology");
        return modelAndView;
    }

    @RequestMapping(value = { "/pricing" }, method = RequestMethod.GET)
    public ModelAndView pricing() {
        ModelAndView modelAndView = new ModelAndView("pricing");
        return modelAndView;
    }

}
