<%@page import="java.util.List"%>
<%@page import="db.quiz.QuizBoardDto"%>
<%@page import="db.quiz.QuizBoardDao"%>
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
<%
	QuizBoardDao dao=new QuizBoardDao();
	//QuizBoardDto dto=new QuizBoardDto();
	
	List <QuizBoardDto> list=dao.getAllBoards();
%>
<body>
	<table class="table table-bordered" style="width: 500px; margin: 100px; 100px;">
	<tr>
	<% for(int i=0;i<list.size();i++)
	{   
		QuizBoardDto dto=list.get(i); %>
	
			<td>
			<img src="../upload/<%=dto.getImgname() %>" width="150px;"><br>
			작성자: <%=dto.getWriter() %><br>
			제목: <%=dto.getTitle() %><br>
			</td>
		<%if(i%5==4)
		{%>
			</tr>
			<tr>	
		<%}%>	
			
	<%}
	%>
	</tr>
	</table>
</body>
</html>