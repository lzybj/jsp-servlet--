package com.bdqn.domain;

public class Users {
	private String userName = "";
	private String passWord = "";
	private String sex = "";
	public Users(String userName, String passWord, String sex) {
		super();
		this.userName = userName;
		this.passWord = passWord;
		this.sex = sex;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
}
