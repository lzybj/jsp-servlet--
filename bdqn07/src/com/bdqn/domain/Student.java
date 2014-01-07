package com.bdqn.domain;

public class Student {
	private int stuid = 0;
	private String studentNo = "";
	private String studentName = "";
	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
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
	public Student(int stuid, String studentNo, String studentName) {
		super();
		this.stuid = stuid;
		this.studentNo = studentNo;
		this.studentName = studentName;
	}
}
