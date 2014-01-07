package com.bdqn.servcie;

public class UsersService {
	public boolean isLogin(String userName,String passWord){
		if(userName.equals("¿œ÷£") && passWord.equals("qaz123")){
			return true;
		}
		return false;
	}
}
