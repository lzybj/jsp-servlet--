package com.bdqn.domain;

public class Message {
	private int msgid = 0;
	private int state = 0;
	private String sento = "";
	public Message(int msgid, int state, String sento) {
		super();
		this.msgid = msgid;
		this.state = state;
		this.sento = sento;
	}
	public int getMsgid() {
		return msgid;
	}
	public void setMsgid(int msgid) {
		this.msgid = msgid;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getSento() {
		return sento;
	}
	public void setSento(String sento) {
		this.sento = sento;
	}
	
}
