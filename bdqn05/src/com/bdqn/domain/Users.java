package com.bdqn.domain;

public class Users {
	private String userName = "";
	private String passWord = "";
	private int myLevel = 0;
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
	public int getMyLevel() {
		return myLevel;
	}
	public void setMyLevel(int myLevel) {
		this.myLevel = myLevel;
	}
	public Users(String userName, String passWord, int myLevel) {
		super();
		this.userName = userName;
		this.passWord = passWord;
		this.myLevel = myLevel;
	}
	
}
