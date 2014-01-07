<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String userName = "laozheng";
	List<String> data = new ArrayList<String>();
	data.add("1");
	data.add("2");
	data.add("3");
	//将其两个对象放入到请求共享域中
	request.setAttribute("un",userName);
	request.setAttribute("myarr",data);
	//转发,参数写转发地址
	request.getRequestDispatcher("test2.jsp").forward(request,response);
	//response.sendRedirect("test2.jsp");
%>
<!--  
<a href='test2.jsp'>test2</a>
-->