<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String userName = "laozheng";
	List<String> data = new ArrayList<String>();
	data.add("1");
	data.add("2");
	data.add("3");
	//��������������뵽����������
	request.setAttribute("un",userName);
	request.setAttribute("myarr",data);
	//ת��,����дת����ַ
	request.getRequestDispatcher("test2.jsp").forward(request,response);
	//response.sendRedirect("test2.jsp");
%>
<!--  
<a href='test2.jsp'>test2</a>
-->