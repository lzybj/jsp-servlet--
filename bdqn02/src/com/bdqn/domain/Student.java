package com.bdqn.domain;

public class Student {
	private String studentNO = "";
	private String studentName = "";
	private String sex = "";
	private String borndate = "";
	public String getStudentNO() {
		return studentNO;
	}
	public void setStudentNO(String studentNO) {
		this.studentNO = studentNO;
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
	public String getBorndate() {
		return borndate;
	}
	public void setBorndate(String borndate) {
		this.borndate = borndate;
	}
	public Student(String studentNO, String studentName, String sex,
			String borndate) {
		super();
		this.studentNO = studentNO;
		this.studentName = studentName;
		this.sex = sex;
		this.borndate = borndate;
	}
	public Student(String studentNO, String studentName, String sex) {
		super();
		this.studentNO = studentNO;
		this.studentName = studentName;
		this.sex = sex;
	}
	
}
