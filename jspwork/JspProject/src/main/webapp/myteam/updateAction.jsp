<%@page import="model.myteam.teamDao"%>
<%@page import="model.myteam.teamDto"%>
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
	String num=request.getParameter("num");
	String name=request.getParameter("name");
	String driver=request.getParameter("driver");
	
	System.out.println(driver); //확인체크안할경우 null,체크할경우 on
	String addr=request.getParameter("addr");
	
	//dto선언
	teamDto dto=new teamDto();
	dto.setNum(num);
	dto.setName(name);
	dto.setDriver(driver==null?"":"있음");
	dto.setAddr(addr);
	
	teamDao dao=new teamDao();
	dao.UpdateMyteam(dto);
	
	response.sendRedirect("list.jsp");
%>
</body>
</html>