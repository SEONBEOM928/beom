<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="mysawon.model.mysawonDto"%>
<%@page import="mysawon.model.mysawonDao"%>
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

  mysawonDto dto=new mysawonDto();
  String photo=request.getParameter("photo");
  
  String name=request.getParameter("name");
  String joomin=request.getParameter("joomin1")+request.getParameter("joomin2");
  int age=Integer.parseInt(request.getParameter("age"));
  String gender=request.getParameter("gender");
  String buseo=request.getParameter("buseo");
  
  
  dto.setPhoto(photo);
  dto.setName(name);
  dto.setJoomin(joomin);
  dto.setAge(age);
  dto.setGender(gender);
  dto.setBuseo(buseo);
  
  mysawonDao dao=new mysawonDao();
 
  dao.insertMysawon(dto);
  
  response.sendRedirect("mysawonList.jsp");
  
%>
</body>
</html>