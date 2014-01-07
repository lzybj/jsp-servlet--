package com.bdqn.factory;

import com.bdqn.imp.MessageDaoImp;
import com.bdqn.inf.IMessageDao;

public class DAOFactory {
	public static IMessageDao getMessageDao(){
		return MessageDaoImp.getInstancs();
	}
}
