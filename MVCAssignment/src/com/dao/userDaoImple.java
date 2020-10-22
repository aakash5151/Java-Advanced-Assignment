package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.conn.MyConn;
import com.dto.User;

public class userDaoImple implements UserDao{

	private MyConn myconn;
 
	public userDaoImple() {
	
		myconn=new MyConn();
}
 
	@Override
	public int insertUser(User user) {
 		int i=0;
		try {
			Connection con=myconn.getConn();
			PreparedStatement s=con.prepareStatement("insert into user2 (fullname,username,userpass) values(?,?,?)");
			s.setString(1,user.getFullName());
			s.setString(2,user.getUserName());
			s.setString(3, user.getUserPass());
			i=s.executeUpdate();
			con.close();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
 		
		return i;
	}

	@Override
	public boolean login(User user) {
		boolean flag=false;
		try {
			Connection con=myconn.getConn();
			PreparedStatement s=con.prepareStatement("select * from user2 where username=? and userpass=?");
			s.setString(1,user.getUserName());
			s.setString(2, user.getUserPass());
			ResultSet rs=s.executeQuery();
			if(rs.next()) {
				flag=true;
			}
			con.close();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
 		
		return flag;
	}

	
	
}
