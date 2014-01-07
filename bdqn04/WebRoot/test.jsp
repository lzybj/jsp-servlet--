<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%> 
    <%
    		session.setAttribute("username","laozheng");
    		session.setAttribute("sex","man");
    		session.setAttribute("age",34);
    		List<String> arr = new ArrayList<String>();
    		arr.add("1");
    		arr.add("2");
    		arr.add("3");
    		session.setAttribute("data",arr);
    		response.sendRedirect("test2.jsp");
     %>