<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
%>

<h1><%=name %>:<%=age %></h1>