<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ChatDAO"%>
<%@page import="vo.ChatVO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ChatDAO dao = new ChatDAO();
	String method = request.getMethod();
	if(method.equals("GET")){
		ArrayList <ChatVO> list= dao.findAll();
		Gson gson = new Gson();
		String str = gson.toJson(list);
		out.print(str);	
	}else{
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String message = request.getParameter("message");
		ChatVO c = new ChatVO();
		c.setName(name);
		c.setMessage(message);
		
		dao.insert(c);
	}
%>