package com.bdqn.domain;

import java.io.Serializable;

public class BNews implements Serializable{
	private int nid = 0;
	private String nTitle = "";
	private String nContent = "";
	private String imgAddr = "";
	private String ctime = "";
	private int uid = 0;
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public String getImgAddr() {
		return imgAddr;
	}
	public void setImgAddr(String imgAddr) {
		this.imgAddr = imgAddr;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public BNews(String nTitle, String nContent, String imgAddr, int uid) {
		super();
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.imgAddr = imgAddr;
		this.uid = uid;
	}
	public BNews(String nTitle, String nContent, String imgAddr, String ctime) {
		super();
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.imgAddr = imgAddr;
		this.ctime = ctime;
	}
	public BNews(int nid, String nTitle) {
		super();
		this.nid = nid;
		this.nTitle = nTitle;
	}
	
}
