<%@page import="db.memo.MemoDao"%>
<%@page import="db.memo.MemoDto"%>
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

	String unum= request.getParameter("unum");
	String uwriter= request.getParameter("uwriter");
	String ustory= request.getParameter("ustory");
	String uavata= request.getParameter("uavata");
	
	MemoDto dto=new MemoDto();
	
	dto.setNum(unum);
	dto.setWriter(uwriter);
	dto.setStory(ustory);
	dto.setAvata(uavata);
	
	MemoDao dao=new MemoDao();
	dao.updateMemo(dto);
	
	//response.sendRedirect("memo.html");
%>
</body>
</html>