<%@page import="data.dao.smartDao"%>
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
  smartDao dao=new smartDao();
  String currentPage=request.getParameter("currentPage");
  
  dao.deleteSmart(num);
  
  response.sendRedirect("../index.jsp?main=board/boardlist.jsp?currentPage="+currentPage);
%>
</body>
</html>