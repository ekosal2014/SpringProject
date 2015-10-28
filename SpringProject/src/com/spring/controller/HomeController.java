package com.spring.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import com.spring.domain.User;
import com.spring.services.UserService;
import com.spring.services.UserServiceImpl;

@Controller
public class HomeController {
	
	public static ApplicationContext context=new ClassPathXmlApplicationContext("Beans.xml");	
	UserService userService=new UserServiceImpl();
	
	@RequestMapping(value="/home")
	public ModelAndView defaultpage(){
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/login.html",method=RequestMethod.GET)
	public ModelAndView loginloadingPage(@ModelAttribute("user") User user){		
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="/login.html",method=RequestMethod.POST)
	public String loginPage(@ModelAttribute("user") User user){
		User userLogin=new User();
		userLogin=userService.getUserLogin(user);
		if (userLogin == null){
			return "redirect:login.html";
		}
		return "redirect:user/userinfo.html";
	}

	
}
