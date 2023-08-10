<%@page import="model.intro.IntroDao"%>
<%@page import="model.intro.IntroDto"%>
<%@page import="model.mymall.MallDto"%>
<%@page import="model.mymall.MallDao"%>
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
   //데이터를 읽기
   String num = request.getParameter("Intro_num");
   String name=request.getParameter("Intro_name");
   String blood=request.getParameter("Intro_blood");
   String hp=request.getParameter("Intro_hp");
   String city=request.getParameter("Intro_city");
   
   
   //dto 선언 및 설정
   IntroDto dto=new IntroDto();
   
   dto.setIntro_num(num);
   dto.setIntro_name(name);
   dto.setIntro_blood(blood);
   dto.setIntro_hp(hp);
   dto.setIntro_city(city);
   
   //insert dao 메소드
   IntroDao dao=new IntroDao();
   dao.updateIntro(dto);
   
   //출력jsp ..url 변경
   response.sendRedirect("list.jsp");
   
   %>
</body>
</html>