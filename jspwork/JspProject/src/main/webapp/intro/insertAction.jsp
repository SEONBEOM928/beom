<%@page import="model.intro.IntroDao"%>
<%@page import="model.intro.IntroDto"%>
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
	request.setCharacterEncoding("utf-8");
	
	String name=request.getParameter("name");
	String blood=request.getParameter("blood");
	String phone=request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
	String city=request.getParameter("city");
	
	IntroDto dto=new IntroDto();
	
	dto.setIntro_name(name);
	dto.setIntro_blood(blood);
	dto.setIntro_hp(phone);
	dto.setIntro_city(city);
	
	IntroDao dao=new IntroDao();
	dao.insertIntro(dto);
	
	response.sendRedirect("list.jsp");
%>
</body>
</html>