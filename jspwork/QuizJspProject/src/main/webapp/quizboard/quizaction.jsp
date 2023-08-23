<%@page import="db.quiz.QuizBoardDao"%>
<%@page import="db.quiz.QuizBoardDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	String realPath=getServletContext().getRealPath("/upload");
	int filesize=1024*1024*5;
	
	MultipartRequest multi=null;
	System.out.println(realPath);		
	
	multi=new MultipartRequest(request,realPath,filesize,"utf-8",
			new DefaultFileRenamePolicy());
	
	QuizBoardDto dto=new QuizBoardDto();
	QuizBoardDao dao=new QuizBoardDao();
	
	String writer=multi.getParameter("writer");
	String title=multi.getParameter("title");
	String content=multi.getParameter("content");
	String imgname=multi.getOriginalFileName("imgname");
	
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setContent(content);
	dto.setImgname(imgname);
	
	
	dao.insertBoard(dto);
	
	response.sendRedirect("quizlist.jsp");
%>


</body>
</html>