<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'res.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%!
    String testStr = "";
    public void test(){
      System.out.println("dasdas");
    }
   %>
  <body>
    <%
    Connection
    	  List<String> data = new ArrayList<String>();
    	 //1.��ȡPIDֵ
    	 String pid = request.getParameter("pid");
    	 //2.��session�л�ȡ��������
    	 if(session.getAttribute("data") == null){//��һ��ȡ��
    	 	data.add(pid);
    	 }else{//�ٴ�ȡ��
    	    data = (ArrayList<String>)session.getAttribute("data");
    	    data.add(pid);
    	 }
    	 session.setAttribute("data",data);
    	 //��ʾdata�����ڵ���
    	 for(int i = 0;i < data.size();i++){
    	 %>
    	 <h1><%= data.get(i)%></h1><br>
    	 <%
    	 }
     %>
     <a href='test.jsp'><h1>����</h1></a>
  </body>
</html>
