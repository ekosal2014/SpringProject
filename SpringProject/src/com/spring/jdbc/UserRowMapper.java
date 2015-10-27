package com.spring.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.domain.User;

public class UserRowMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet result, int line) throws SQLException {
		// TODO Auto-generated method stub
		UserExtractor userExtractor=new UserExtractor();
		return userExtractor.extractData(result);
	}
}
