<%@page import="org.json.simple.JSONObject"%>
<%@page import="netscape.javascript.JSObject"%>
<%@page import="data.dao.AnswerDao"%>
<%@page import="data.dto.AnswerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String idx=request.getParameter("idx");
	AnswerDao dao=new AnswerDao();
	String content=dao.getcontent(idx);
	
	JSONObject ob=new JSONObject();
	ob.put("idx",idx);
	ob.put("story",content);
%>
<%=ob.toString()%>