package com.spring.dao;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
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
		String sql="SELECT * FROM tblusers u WHERE u.Username=? and u.Password=?";
		JdbcTemplate jdbcTempleate=new JdbcTemplate(getDataSource());
		try{
			userlogin=jdbcTempleate.queryForObject(sql,new Object[]{user.getUsername(),user.getPassword()},new UserRowMapper());
		}catch(DataAccessException e){
			e.printStackTrace();
		}
		return userlogin;
	}

	@Override
	public User getUserInfo(String user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertUserInfo(User user) {
		String sql="INSERT INTO tblUsers(name,sex,dob,username,password,phone,email,address) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		JdbcTemplate jdbcTemplate=new JdbcTemplate(getDataSource());
		jdbcTemplate.update(sql,new Object[] {user.getName(),user.getSex(),user.getDob(),user.getUsername(),user.getPassword(),user.getPhone(),user.getEmail(),user.getAddress()});
	}

}
