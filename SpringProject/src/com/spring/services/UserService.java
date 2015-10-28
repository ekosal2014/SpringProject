package com.spring.services;

import com.spring.domain.User;

public interface UserService {
	public User getUserLogin(User user);
	public void insertUserInfo(User user);

}
