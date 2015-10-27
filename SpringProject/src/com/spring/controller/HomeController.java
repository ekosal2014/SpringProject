package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value="/home")
	public ModelAndView defaultpage(){
		return new ModelAndView("home");
	}

}
