<%@page import="model.mymall.MallDto"%>
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
<style>
td{
	border:2px solid yellow;
}
</style>
</head>
<%
String no=request.getParameter("no");
MallDao dao = new MallDao();
MallDto dto = dao.getSangpum(no);
%>
<body>
<div>
<table style="border:2px solid yellow";><b style= 'margin-left:150px;'>상품 상세보기</b>
<tr>
<td rowspan="3" align="center" valign="middle"><img src="<%= dto.getPhoto() %>"><h5>사진확대</h5></td>
<td>상품명: <%=dto.getSangpum() %><br></td>
</tr>
<tr>
<td>가격: <%=dto.getPrice() %><br></td>
</tr>
<tr>
<td>입고날짜: <%=dto.getIpgoday() %></td>
</tr>
</table>
</div>

</body>
</html>