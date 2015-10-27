package com.spring.services;

import com.spring.controller.HomeController;
import com.spring.dao.UserDao;
import com.spring.domain.User;

public class UserServiceImpl implements UserService {

	UserDao userDao=(UserDao)HomeController.context.getBean("userDao");
	
	@Override
	public User getUserLogin(User user) {
		// TODO Auto-generated method stub
		return userDao.getUserLogin(user);
	}

}
