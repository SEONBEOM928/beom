<%@page import="java.text.SimpleDateFormat"%>
<%@page import="member.model.MemberDto"%>
<%@page import="java.util.Vector"%>
<%@page import="member.model.MemberDao"%>
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
	MemberDao dao=new MemberDao();
	Vector<MemberDto> list=dao.getAllMembers();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<body>
<div style="margin: 50px; 100px; "></div>
<table class="table table-dark" style="width: 1000px">
<th>번호</th><th>아이디</th><th>회원명</th><th>핸드폰</th><th>가입일</th><th>편집</th>
</table>
<%
	
	for(int i=0;i<list.size();i++)
	{
		MemberDto dto=list.get(i);
		
		%>
		
		<table class="table" style="width: 500px">
		<tr>
			<td>
				<b><%=i+1 %></b>
			</td>
			<td>
				<b><%=dto.getId() %></b>
			</td>
			<td>
				<div>
				<img src="../<%=dto.getImage()%>">
				</div>
				<b><%=dto.getName() %></b>
			</td>
			<td>
				<b><%=dto.getHp() %></b>
			</td>
			<td>
				<b><%=sdf.format(dto.getGaip())%></b>
			</td>
			<td>
			<input type="button" value="수정" onclick="location.href='updateForm.jsp?num=<%=dto.getNum() %>'"
			class="btn btn-success btn-sm">
			<input type="button" value="삭제" onclick="location.href='deleteGuest.jsp?num=<%=dto.getNum() %>'"
			class="btn btn-waring btn-sm">
			</td>
		</tr>
		
		<br><br>
		</table>
		
	<%}
%>

</body>
</html>