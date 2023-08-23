<%@page import="Mysawon.model.MysawonDao"%>
<%@page import="Mysawon.model.MysawonDto"%>
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
	
	int num=Integer.parseInt(request.getParameter("num"));
	String image=request.getParameter("image");
	String name=request.getParameter("name");
	String gender=request.getParameter("gender");
	String addr=request.getParameter("addr");
	String joomin=request.getParameter("joomin");
	String hp=request.getParameter("hp");
	String email=request.getParameter("email");
	
	MysawonDto dto=new MysawonDto();
	dto.setNum(num);
	dto.setImage(image);
	dto.setName(name);
	dto.setGender(gender);
	dto.setAddr(addr);
	dto.setJoomin(joomin);
	dto.setHp(hp);
	dto.setEmail(email);
	
	MysawonDao dao=new MysawonDao();
	dao.updateMySawon(dto);
	
	response.sendRedirect("MysawonSetting.jsp");
	
	
	%>
</body>
</html>