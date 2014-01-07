package com.bdqn.factory;

import com.bdqn.inf.IBNewsDao;
import com.bdqn.inf.IUsersDao;
import com.bdqn.inf.imp.BNewsDaoImp;
import com.bdqn.inf.imp.UsersDaoImp;

public class DAOFactory {
	public static IUsersDao getUsersDAO(){
		return UsersDaoImp.getInstance();
	}
	
	public static IBNewsDao getBNewsDao(){
		return BNewsDaoImp.getInstance();
	}
}
