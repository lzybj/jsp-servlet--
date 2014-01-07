package com.bdqn.service;

import com.bdqn.domain.Users;
import com.bdqn.factory.DAOFactory;
import com.bdqn.inf.IUsersDao;

public class UsersService {
	public Users isLogin(String uName,String uPwd){
		IUsersDao usersDao = DAOFactory.getUsersDAO();
		Users myUser = usersDao.findByUserName(uName);
		if(myUser != null){
			if(myUser.getuPwd().equals(uPwd)){
				return myUser;
			}
		}
		return null;
	}
}
