package com.bdqn.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bdqn.domain.Student;

public class UsersService {
  	private Connection conn = null;
  	private Statement stmt = null;
  	private ResultSet rs = null;
  	private String url = "jdbc:sqlserver://192.168.240.129:1433;DatabaseName=Myschool";
  	private String sql = "";
	public List<Student> findByStudentName(String stuname){
		List<Student> data = new ArrayList<Student>();
		try {
	  		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	  		conn = DriverManager.getConnection(url, "sa","qaz123");
	  		stmt = conn.createStatement();
	  		sql = "select studentno,studentname,sex from student where studentname like '%"+ stuname +"%'";
	  		rs = stmt.executeQuery(sql);		
	  		while(rs.next()){
	  			String stuno = rs.getString("studentno");
	  			String stunamedb = rs.getString("studentname");
	  			String sex = rs.getString("sex");
	  			Student mystu = new Student(stuno, stunamedb, sex);
	  			data.add(mystu);
	  		}
	  		rs.close();
	  		stmt.close();
	  		conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return data;
	}
	public Student findByStudentNo(String stuno){
		return null;
	}
	public boolean isLogin(String userName,String passWord){
		if(userName.equals("laozheng") && passWord.equals("qaz123")){
			return true;
		}
		return false;
	}
}
