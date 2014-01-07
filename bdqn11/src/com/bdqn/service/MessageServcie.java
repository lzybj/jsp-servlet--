package com.bdqn.service;

import java.util.List;

import com.bdqn.domain.Message;
import com.bdqn.factory.DAOFactory;
import com.bdqn.imp.MessageDaoImp;

public class MessageServcie {
	public boolean addMessage(Message message){
		return DAOFactory.getMessageDao().insertMessage(message);
	}
	public List<Message> findByAll(){
		return DAOFactory.getMessageDao().selectAll();
	}
	
	public List<Message> fy(int nowPage){
		return ((MessageDaoImp)(DAOFactory.getMessageDao())).findByPageNum(nowPage);
	}
	
}
