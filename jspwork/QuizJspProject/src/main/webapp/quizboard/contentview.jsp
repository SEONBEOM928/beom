<%@page import="db.quiz.QuizBoardDto"%>
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
	<jsp:useBean id="dao" class="db.quiz.QuizBoardDao"/>
<%
	//num을 읽는다
	String q_num=request.getParameter("q_num");
	
	//dao선언
	//조회수 1증가
	dao.updateReadCount(q_num);
	//dto
	QuizBoardDto dto=dao.getBoard(q_num);		
%>

<h2>조회수 올리는용</h2>
<br><br><br><br>
<button type="button" class="btn btn-outline-success"
        onclick="location.href='quizlist.jsp'"><i class="bi bi-list-ul"></i>목록</button>
</body>
</html>