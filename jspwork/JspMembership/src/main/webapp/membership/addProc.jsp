<%@page import="membership.model.membershipDto"%>
<%@page import="membership.model.membershipDao"%>
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
	membershipDao dao=new membershipDao();
	membershipDto dto=new membershipDto();
	
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	String name=request.getParameter("name");
	String hp=request.getParameter("hp");
	String birth=request.getParameter("birth");
	String gender=request.getParameter("gender");
	String race=request.getParameter("race");
	String mail=request.getParameter("mail");
	String addr=request.getParameter("addr");
	
	dto.setId(id);
	dto.setPass(pass);
	dto.setName(name);
	dto.setHp(hp);
	dto.setBirth(birth);
	dto.setGender(gender);
	dto.setRace(race);
	dto.setMail(mail);
	dto.setAddr(addr);
	
	dao.insertMembership(dto);
	
	response.sendRedirect("membershipList.jsp");
			
%>
	
</body>
</html>