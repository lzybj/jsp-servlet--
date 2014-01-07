<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test3.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <form name="form1" method="post" action="test4.jsp">
  <p>
    <input type="text" name="userName">
  </p>
  <p>
    <label for="select"></label>
    <select name="grade" id="select">
    <option value="s1">accp s1</option>
    <option value="s2">accp s2</option>
    <option value="y2">accp y2</option>
    </select>
  </p>
  <p>
    <input type="checkbox" name="aihao" id="checkbox" value="lanqiu">
    <label for="checkbox"></label>
    足球
  </p>
  <p>
    <input type="checkbox" name="aihao" id="checkbox2" value="zuqiu">
    <label for="checkbox2"></label>
  篮球</p>
  <p>
    <input type="checkbox" name="aihao" id="checkbox3" value="ppqiu">
    <label for="checkbox3"></label>
  乒乓球</p>
  <p>
    <input type="submit" name="button" id="button" value="提交" />
  </p>
</form>
    <h1><a href='test4.jsp?newid=1&type='>这是一个新闻标题......</a></h1>
  </body>
</html>
