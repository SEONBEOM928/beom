<%@page import="model.intro.IntroDto"%>
<%@page import="java.util.Vector"%>
<%@page import="model.intro.IntroDao"%>
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
	IntroDao dao=new IntroDao();
	Vector<IntroDto> list=dao.getData();
%>

<body>
<table class="table table-bordered" style="width: 1000px;">
<tr align="center"><th>이름</th><th>혈액형</th><th>핸드폰번호</th><th>주소</th><th>가입날짜</th><th>편집</th></tr>
<%
	for(int i=0;i<list.size();i++)
	{
		IntroDto dto=list.get(i);
		%>
		
		<tr>
			<td align="center" valign="middle"><%=dto.getIntro_name() %></td>
			<td align="center" valign="middle"><%=dto.getIntro_blood() %></td>
			<td align="center" valign="middle"><%=dto.getIntro_hp() %></td>
			<td align="center" valign="middle"><%=dto.getIntro_city()%></td>
			<td align="center" valign="middle"><%=dto.getGaipday()%></td>
			<td align="center" valign="middle">
				<button type="button" class="btn btn-info btn-sm"
				onclick="location.href='updateForm.jsp?Intro_num=<%=dto.getIntro_num()%>'">수정</button>
				<button type="button" class="btn btn-danger btn-sm"
				onclick="location.href='deleteintro.jsp?Intro_num=<%=dto.getIntro_num()%>'">삭제</button>
			</td>
			
		</tr>
	<%}
%>
</table>
</body>
</html>