<%@page import="model.sinsang.SinsangDto"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.myteam.teamDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.myteam.teamDao"%>
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
	teamDao dao=new teamDao();
	ArrayList<teamDto> list=dao.getAllMyTeams();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>

	<a href="addForm.jsp">팀원추가</a>
	<br>
	<table class="table table-bordered" style="width:800px;">
	<tr align="center" class="table-warning">
		<th width="60">번호</th>
		<th width="120">이름</th>
		<th width="80">운전면허</th>
		<th width="260">주소</th>
		<th width="160">작성일</th>
		<th width="120">수정|삭제</th>
	</tr>
	
<%
	for(int i=0;i<list.size();i++)
	{
		teamDto dto=list.get(i); //i번지의 dto를 꺼낸다.
		%>
		
		<tr>
			<td><%=i+1 %></td>
			<td><%=dto.getName() %></td>
			<td><%=dto.getDriver() %></td>
			<td><%=dto.getAddr() %></td>
			<td><%=dto.getWriteday() %></td>
			<td>
				<button type="button" class="btn btn-info btn-sm"
				onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
				<button type="button" class="btn btn-danger btn-sm"
           		 onclick="delete1(<%=dto.getNum()%>)">삭제</button>
			</td>
		</tr>	
	<%}
%>
	</table>
	<script>
      function delete1(num){
         var a = confirm("정말 삭제 하시겠습니까?");
         if(a){
            location.href='teamdelete.jsp?num=' + num;
         }
         else{
            return;
         }
      }
   </script>
</body>
</html>