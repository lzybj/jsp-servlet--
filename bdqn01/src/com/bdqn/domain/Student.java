package com.bdqn.domain;

public class Student {
	private String studentNo = "";
	private String studentName = "";
	private String sex = "";
	private int age = 0;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Student(String studentNo, String studentName, String sex, int age) {
		super();
		this.studentNo = studentNo;
		this.studentName = studentName;
		this.sex = sex;
		this.age = age;
	}
	
}
