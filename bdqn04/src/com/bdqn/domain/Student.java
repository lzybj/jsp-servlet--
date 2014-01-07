package com.bdqn.domain;

public class Student {
	private String studentNo = "";
	private String studentName = "";
	private String sex = "";
	public String getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Student(String studentNo, String studentName, String sex) {
		super();
		this.studentNo = studentNo;
		this.studentName = studentName;
		this.sex = sex;
	}
}
