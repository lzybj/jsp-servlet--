package com.bdqn.inf;

import java.util.List;

import com.bdqn.domain.Message;

public interface IMessageDao {
	public boolean insertMessage(Message message);
	public List<Message> selectAll();
}
