<%@page import="com.google.gson.Gson"%>
<%@page import="vo.BookVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BookDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BookDAO dao = new BookDAO();
	ArrayList<BookVO> list = dao.findAll();
	Gson gson = new Gson();
	String str = gson.toJson(list);
	out.print(str);
%>