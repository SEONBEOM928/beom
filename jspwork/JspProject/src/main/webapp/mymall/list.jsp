<%@page import="model.mymall.MallDto"%>
<%@page import="java.util.Vector"%>
<%@page import="model.mymall.MallDao"%>
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
	MallDao dao=new MallDao();
	Vector<MallDto> list=dao.getAllDatas();
%>
<body>
<button type="button" class="btn btn-info"
onclick="location.href='addForm.jsp'">데이터추가</button>
<br><br>
<table class="table table-bordered" style="width: 1000px;">
<tr class="table-success" style="text-align: center;">
	<th width="60">번호</th>
	<th width="150">상품명</th>
	<th width="100">사진</th>
	<th width="150">가격</th>
	<th width="200">입고날짜</th>
	<th width="200">현재날짜</th>
	<th width="300">편집</th>
</tr>

<%
	for(int i=0;i<list.size();i++)
	{
		MallDto dto=list.get(i);
		%>
		
		<tr>
			<td align="center" valign="middle"><%=dto.getNo() %></td>
			<td align="center" valign="middle"><%=dto.getSangpum() %></td>
			<td><img src='<%=dto.getPhoto() %>' width='100px' onclick="location.href='detailPage.jsp?no=<%=dto.getNo()%>'"></td>
			
			<td align="center" valign="middle"><%=dto.getPrice() %></td>
			<td align="center" valign="middle"><%=dto.getIpgoday() %></td>
			<td align="center" valign="middle"><%=dto.getWriteday() %></td>
			<td align="center" valign="middle">
				<button type="button" class="btn btn-info btn-sm"
				onclick="location.href='updateForm.jsp?no=<%=dto.getNo()%>'">수정</button>
				<button type="button" class="btn btn-danger btn-sm"
				onclick="location.href='delete.jsp?no=<%=dto.getNo()%>'">삭제</button>
			</td>
		</tr>
	<%}
%>
</table>
</body>
</html>