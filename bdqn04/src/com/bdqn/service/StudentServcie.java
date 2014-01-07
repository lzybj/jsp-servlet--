package com.bdqn.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bdqn.domain.Student;

public class StudentServcie {
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private String sql = "";
	private String url = "jdbc:sqlserver://192.168.240.129:1433;DatabaseName=Myschool";
	public List<Student> findByStudentName(String studentName){
		List<Student> data = new ArrayList<Student>();
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(url,"sa","qaz123");
			stmt = conn.createStatement();
			sql = "select studentno,studentname,sex from student where studentname like '%"+ studentName +"%'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				String db_studentno = rs.getString("studentno");
				String db_studentname = rs.getString("studentname");
				String db_sex = rs.getString("sex");
				Student myStu = new Student(db_studentno,db_studentname,db_sex);
				data.add(myStu);
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
}
