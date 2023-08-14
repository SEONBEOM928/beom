<%@page import="idx.model.idxDao"%>
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

	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	String save=request.getParameter("savechk");
	
	//아이디와 비번이 맞는지 확인
	idxDao db=new idxDao();
	boolean flag=db.isLogin(id, pass);
	
	//맞으면 세션지정 후 로그인메인으로 이동
	if(flag)
	{
		//로그인중인지 알수있는 세션저장
		session.setAttribute("loginok", "yes");
		//아이디 세션 저장
		session.setAttribute("idok", id);
		//체크값 세션저장..체크하면 값이 on,안하면 null
		session.setAttribute("saveok", save);
		
		//세션 유지시간
		session.setMaxInactiveInterval(60*60*8);
		//로그인메인으로 이동
		response.sendRedirect("loginMain.jsp");
	}else{%>
		
		<script type="text/javascript">
			alert("아이디와 비밀번호가 맞지않습니다");
			history.back();
		</script>
	<%}
	
%>
</body>
</html>