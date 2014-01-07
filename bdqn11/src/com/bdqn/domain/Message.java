package com.bdqn.domain;

public class Message {
	private int id = 0;
	private String message = "";
	private String author = "";
	private String postTime = "";
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPostTime() {
		return postTime;
	}
	public void setPostTime(String postTime) {
		this.postTime = postTime;
	}
	public Message(String message, String author) {
		super();
		this.message = message;
		this.author = author;
	}
	public Message(int id, String message, String author, String postTime) {
		super();
		this.id = id;
		this.message = message;
		this.author = author;
		this.postTime = postTime;
	}
	
}
