<%@page import="db.simpleguest.SimpleDao"%>
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
	String num=request.getParameter("num");
	String pass=request.getParameter("pass");
	
	SimpleDao dao=new SimpleDao();
	
	if(dao.isEqualPass(num, pass))
	{
		
		dao.deleteGuest(num);
	
		response.sendRedirect("guestlist.jsp");
	}else{ //틀리면 자바스크립트로 경고후 이전화면으로 이동
		%>
		<script type="text/javascript">
		 alert("비밀번호가 맞지 않습니다");
		 history.back();
		</script>	
	<%} 
	
%>
<body>
	

</body>
</html>