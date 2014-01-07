package com.taglib;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyTag extends TagSupport {
	private String pre = "";

	public String getPre() {
		return pre;
	}

	public void setPre(String pre) {
		this.pre = pre;
	}
	
	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub
		JspWriter out = pageContext.getOut();
		try {
			out.println("这是我的第一个TAG" + pre + "<br>");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return this.SKIP_BODY;
	}
	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		return this.EVAL_PAGE;
	}
}
