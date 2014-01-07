package com.bdqn.inf.imp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.bdqn.domain.Users;
import com.bdqn.inf.IUsersDao;

public class UsersDaoImp implements IUsersDao {
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private String url = "jdbc:sqlserver://192.168.240.129:1433;DatabaseName=BDQN_NEWS";
	private String sql = "";
	
	private UsersDaoImp(){
	}
	
	public static UsersDaoImp getInstance(){
		return new UsersDaoImp();
	}
	
	public Users findByUserName(String uName) {
		// TODO Auto-generated method stub
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/BDQN_NEWS");
			conn = ds.getConnection();
			stmt = conn.createStatement();
			sql = "select * from users where uname = '"+ uName +"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				return new Users(rs.getInt("uid"),rs.getString("uname"),rs.getString("upwd"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				stmt.close();
				conn.close();				
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return null;
	}

}
