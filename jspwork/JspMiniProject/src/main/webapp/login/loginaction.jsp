<%@page import="data.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Cute+Font&family=Diphylleia&family=Dongle:wght@300&family=Hi+Melody&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String cbsave=request.getParameter("cbsave");

MemberDao dao=new MemberDao();
boolean b=dao.isIdPass(id, pass);

//아이디와 비번이 맞으면 3개의 세션을 저장하고 로그인메인으로 이동
if(b)
{
	session.setMaxInactiveInterval(60*60*3);
	session.setAttribute("loginok", "yes");
	session.setAttribute("myid", id);
	session.setAttribute("saveok", cbsave==null?null:"yes");
	
	//로그인메인으로 이동
	response.sendRedirect("../index.jsp?main=login/loginmain.jsp");
	
}
%>
</body>
</html>