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
@RequestMapping("/user")
public class UserController {
	
	public static ApplicationContext context=new ClassPathXmlApplicationContext("Beans.xml");	
	UserService userService=new UserServiceImpl();
	
	
	@RequestMapping(value="/login.html",method=RequestMethod.POST)
	public String loginPage(@ModelAttribute("user") User user){
		User userLogin=new User();
		userLogin=userService.getUserLogin(user);
		if (userLogin == null){
			return "redirect:login.html";
		}
		return "redirect:user/userinfo.html";
	}
	
	@RequestMapping(value="/userinfo.html",method=RequestMethod.GET)
	public ModelAndView Userpage(){
		return new ModelAndView("userinfo");
	}
	
	@RequestMapping(value="/register.html",method=RequestMethod.GET)
	public ModelAndView defaultRegisterPage(){
		return new ModelAndView("register");
	}
	
	@RequestMapping(value="/register.html",method=RequestMethod.POST)
	public String defaultRegisterSubmi(@ModelAttribute("user") User user){
		//System.out.println(user.getName()+"  "+user.getSex()+"  "+user.getDob()+"  "+user.getUsername()+"  "+user.getPassword()+"  "+user.getPhone()+"  "+user.getEmail()+"  "+user.getAddress());
		userService.insertUserInfo(user);
		return "redirect:userinfo.html";
	}
	
	@RequestMapping(value="/userinfo.html",method=RequestMethod.POST)
	public ModelAndView defaultUserPage(){
		return new ModelAndView("userinfo");
	}
	
	@RequestMapping(value="acticle.html",method=RequestMethod.GET)
	public ModelAndView defaultUserActicle(){
		return new ModelAndView("acticle");
	}
	
	@RequestMapping(value="/information.html",method=RequestMethod.GET)
	public ModelAndView defaultUserInformation(){
		return new ModelAndView("information");
	}
	
}
