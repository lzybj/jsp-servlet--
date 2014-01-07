<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
/* 	String count = "1";
	application.setAttribute("count",count);
	out.println(count);
 */
 	String userName = request.getParameter("username");
 	List<String> userNames = null;
 	if(application.getAttribute("count") == null){
 		application.setAttribute("count","1");
 		userNames = new ArrayList<String>();
 		userNames.add(userName);
 		application.setAttribute("usernames", userNames);
 	}else{
 		String count = application.getAttribute("count").toString();
 		count = String.valueOf(Integer.parseInt(count) + 1);
 		application.setAttribute("count",count);
 		userNames = (List<String>)application.getAttribute("usernames");
 		userNames.add(userName);
 		application.setAttribute("usernames",userNames);
 	}
 	response.sendRedirect("test3.jsp");
%>
