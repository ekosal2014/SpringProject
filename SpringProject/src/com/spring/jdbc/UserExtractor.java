package com.spring.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.spring.domain.User;

public class UserExtractor implements ResultSetExtractor<User> {

	@Override
	public User extractData(ResultSet result) throws SQLException, DataAccessException {
		User user=new User(
				result.getString("u_id"), 
				result.getString("name") ,
				result.getString("sex"),
				result.getString("dob"),
				result.getString("username"),
				result.getString("password"),
				result.getString("email"),
				result.getString("phone"),
				result.getString("address"));
		return user;
	}

}
