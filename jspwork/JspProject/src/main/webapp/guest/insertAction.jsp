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
<%-- -	<% 
	request.setCharacterEncoding("utf-8");
	
	String image=request.getParameter("image");
	String nick=request.getParameter("nick");
	String pass=request.getParameter("pass");
	String story=request.getParameter("story");
	
	SimpleGuestDto dto=new SimpleGuestDto();
	
	dto.setImage(image);
	dto.setNick(nick);
	dto.setPass(pass);
	dto.setStory(story);
	
	SimpleGuestDao dao=new SimpleGuestDao();
	dao.insertGuest(dto);
	
	response.sendRedirect("guestlist.jsp");
	
	%> --%>
	
	<!-- 자바빈즈로 변경하려면?
		useBean은 new로 객체를 생성하는것과 같다 -->
	<%
		request.setCharacterEncoding("utf-8");
	%>
	
	<jsp:useBean id="db" class="db.simpleguest.SimpleDao"/>
	<jsp:useBean id="dt" class="db.simpleguest.SimpleDto"/>
	
	<jsp:setProperty property="*" name="dt"/>
	
	<%
	
		//db에 insert
		db.simpleInsert(dt);
	
		//목록으로이동	
		response.sendRedirect("guestlist.jsp");
	%>
	
</body>
</html>