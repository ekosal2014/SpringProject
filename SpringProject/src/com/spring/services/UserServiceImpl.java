package com.spring.services;

import com.spring.controller.UserController;
import com.spring.dao.UserDao;
import com.spring.domain.User;

public class UserServiceImpl implements UserService {

	UserDao userDao=(UserDao)UserController.context.getBean("userDao");
	
	@Override
	public User getUserLogin(User user) {
		// TODO Auto-generated method stub
		return userDao.getUserLogin(user);
	}

	@Override
	public void insertUserInfo(User user) {
		// TODO Auto-generated method stub
		userDao.insertUserInfo(user);
	}

}
