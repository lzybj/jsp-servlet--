<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String delSel = request.getParameter("num");
	List<String> data = (ArrayList<String>)session.getAttribute("data");
	if(data == null){
		response.sendRedirect("test3.jsp");
		return;
	}
	for(int i = 0;i < data.size();i++){
		String mystr = data.get(i);
		if(mystr.equals(delSel)){
			data.remove(i);
			break;
		}
	}
	session.setAttribute("data",data);//将新的集合放入SESSION中
	response.sendRedirect("test4.jsp"); 
%>