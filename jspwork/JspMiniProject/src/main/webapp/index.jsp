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
<style type="text/css">
	div.layout{
		border:0px solid gray;
		position:absolute;
	}
	
	div.title{
		width: 100%;
		height: 80px;
		line-height: 70px;
		font-size: 30pt;
		font-family: 'Diphylleia';
		text-align: center;
	}
	
	div.menu{
		width: 100%;
		height: 70px;
		line-height: 80px;
		font-size: 20pt;
		font-family: 'Diphylleia';
		text-align: center;
		top: 100px;
		
	}
	
	div.info{
		width: 210px;
		height: 500px;
		line-height: 10px;
		font-family: 'Diphylleia';
		font-size: 15pt;
		left: 30px;
		top: 250px;
		padding: 20px 10px;
		border: 5px groove green;
		border-radius: 30px;
	}
	
	div.main{
	
		width: 700px;
		height: 800px;
		font-size: 13pt;
		font-family: 'Diphylleia';
		left: 300px;
		top: 300px;
		
	}
</style>
</head>
<%
	//절대경로잡기
	String root=request.getContextPath();
	String mainPage="layout/main.jsp";

	//url을 통해서 main값을 얻어서 메인웹페이지에 출력한다
	if(request.getParameter("main")!=null)
	{
		mainPage=request.getParameter("main");
	}
%>
<body>
 <!-- 이 페이지는 프로젝트 제작 후 실행을 위한 메인페이지를 만들기 위함 -->
 <div class="layout title">
 	<jsp:include page="layout/title.jsp"/>   
 </div>
 <div class="layout menu">
 	<jsp:include page="layout/menu.jsp"/>   
 </div>
 <div class="layout info">
 	<jsp:include page="layout/info.jsp"/>   
 </div>
 <div class="layout main">
   <jsp:include page="<%=mainPage %>"/>
 </div> 
</body>
</html>