package com.spring.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.spring.domain.User;
import com.spring.jdbc.UserRowMapper;

public class UserDaoImpl implements UserDao{
    
	private DataSource dataSource;
	public DataSource getDataSource(){
		return this.dataSource;
	}
	
	public void setDataSource(DataSource dataSource){
		this.dataSource=dataSource;
	}
	
	
	@Override
	public User getUserLogin(User user) {
		User userlogin=new User();
		String sql="SELECT * FROM tbluser u WHERE u.Username=? and u.Password=?";
		JdbcTemplate jdbcTempleate=new JdbcTemplate(getDataSource());
		userlogin=jdbcTempleate.queryForObject(sql,new Object[]{user.getUid(),user.getPassword()},new UserRowMapper());
		return userlogin;
	}

	@Override
	public User getUserInfo(String user) {
		// TODO Auto-generated method stub
		return null;
	}

}