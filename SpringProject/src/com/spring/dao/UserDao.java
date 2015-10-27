package com.spring.dao;

import com.spring.domain.User;

public interface UserDao {
	public User getUserLogin(User user);
	public User getUserInfo(String uid);
}
