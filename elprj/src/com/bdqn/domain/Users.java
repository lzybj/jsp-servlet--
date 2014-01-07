package com.bdqn.domain;

public class Users {
	private String userName = "";
	private int age = 0;
	public Users(String userName, int age) {
		super();
		this.userName = userName;
		this.age = age;
	}
	public String getuserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
