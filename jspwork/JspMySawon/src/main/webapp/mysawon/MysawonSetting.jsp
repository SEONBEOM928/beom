<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Mysawon.model.MysawonDto"%>
<%@page import="java.util.Vector"%>
<%@page import="Mysawon.model.MysawonDao"%>
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
	request.setCharacterEncoding("utf-8");

	MysawonDao dao=new MysawonDao();
	Vector<MysawonDto> list=dao.getAllSawons();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy년 MM월 dd일");
	
%>
<body>
<b style="font-size: 2em; margin-left: 400px; color: green;">계정관리</b>
<table class="table table-bordered" style="width:1000px";>
<tr>
<th>번호</th><th>사진</th><th>이름</th><th>성별</th><th>주소</th><th>주민번호</th><th>전화번호</th><th>이메일</th><th>수정 | 삭제</th>
</tr>
<%
	for(int i=0;i<list.size();i++)
	{
		MysawonDto dto=list.get(i);
		%>
		<tr>
			<td>
				<b><%=i+1 %></b>
			</td>
		
			<td>
				<b><%=dto.getImage() %></b>
			</td>
		
			<td>
				<b><%=dto.getName() %></b>
			</td>
		
			<td>
				<b><%=dto.getGender()%></b>
			</td>
		
			<td>
				<b><%=dto.getAddr()%></b>
			</td>
		
			<td>
				<b><%=dto.getJoomin()%></b>
			</td>
		
			<td>
				<b><%=dto.getHp()%></b>
			</td>
		
			<td>
				<b><%=dto.getEmail()%></b>
			</td>
			
			<td>
				<input type="button" value="수정"
				onclick="location.href='mysawonUpdateForm.jsp?num=<%=dto.getNum()%>'" 
				class="btn btn-success btn-sm">
				<input type="button" value="삭제"
				onclick="del(<%=dto.getNum() %>)" 
				class="btn btn-danger btn-sm">
			</td>
		</tr>
		<%}
	%>
		</table>

<script>
function del(num){
	var a = confirm("정말 삭제하시겠습니까?");
	if(a){
		location.href='mysawonDelete.jsp?num='+num;
	}
	else{
		return;
	}
}
</script>

</body>
</html>