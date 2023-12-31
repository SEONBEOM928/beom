<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.MemberDao"%>
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
<script type="text/javascript">
  $(function() {
	
	  $(".btndelete").click(function() {
		
		  var num=$(this).attr("num");
		  
		  var ans=confirm("정말 탈퇴하실거에요??");
		  
		  if(ans){
			  location.href="member/deleteme.jsp?num="+num;
		  }
	})
})
</script>
</head>
<%
	String num=request.getParameter("num");
	MemberDao dao=new MemberDao();
	List<MemberDto> list=dao.getAllMembers();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>
<body>
<%
	for(MemberDto dto:list)
	{
		if(dto.getNum().equals(num)){
	%>
		<table class="table table-bordered" style="width: 500px; margin: 50px 150px; border: 1px solid black;">
		<tr>
			<td rowspan="5">		
			<img alt="" src="image1/4.png" width="100px;">
			</td>
			<td style="width: 100px;">이름</td>
			<td style="width: 100px;"><%=dto.getName() %></td>
			<td rowspan="5" width="110px;" align="center">	
			<button type="button" class="btn btn-outline-success btn-sm"
			onclick="location.href='index.jsp?main=member/updateform.jsp?num=<%=dto.getNum()%>'">수정</button>
			<button type="button" class="btn btn-outline-danger btn-sm"
			onclick="location.href='member/memberdelete.jsp?num=<%=dto.getNum()%>'">삭제</button>
			</td>		
		</tr>
		<tr>
			<td style="width: 100px;">아이디</td>
			<td style="width: 100px;"><%=dto.getId() %></td>
		</tr>
		
		<tr>
			<td style="width: 150px;">연락처</td>
			<td style="width: 150px;"><%=dto.getHp() %></td>
		</tr>
		
		<tr>
			<td style="width: 100px;">주소</td>
			<td style="width: 100px;"><%=dto.getAddr() %></td>
		</tr>
		
		<tr>
			<td style="width: 100px;">이메일</td>
			<td style="width: 100px;"><%=dto.getEmail() %></td>
		</tr>
		</table>
		
	<%}
	}

%>
</body>

</html>