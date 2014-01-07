package com.bdqn.service;

import com.bdqn.domain.Users;

public class UsersService {
	public Users isLogin(String userName,String passWord){
		if(userName.equals("laozheng") && passWord.equals("qaz123")){
			return new Users("laozheng", "qaz123", "man");
		}
		return null;
	}
}
