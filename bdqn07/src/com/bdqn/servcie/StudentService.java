package com.bdqn.servcie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bdqn.domain.Student;

public class StudentService {
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private String url = "jdbc:sqlserver://192.168.240.129:1433;DatabaseName=Myschool";
	private String sql = "";
	public List<Student> getFYStudent(int pageCount,int nowPage){
		List<Student> data = new ArrayList<Student>();
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(url, "sa", "qaz123");
			stmt = conn.createStatement();
			sql = "select top "+ pageCount +" Stuid,studentno,StudentName from Student where Stuid not in (select top "+ (nowPage - 1) * pageCount +" Stuid from Student)";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				int stuid = rs.getInt("stuid");
				String studentNo = rs.getString("studentno");
				String studentname = rs.getString("studentname");
			    Student mystu = new Student(stuid,studentNo,studentname);
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
	public static void main(String[] args) {
		StudentService ss = new StudentService();
		System.out.println(ss.getFYStudent(10, 7).size());
	}
}
