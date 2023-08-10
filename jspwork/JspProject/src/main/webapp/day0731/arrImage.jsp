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
	String [] str={"1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","17.jpg","24.jpg","33.jpg","34.jpg"};
	int n=0;
%>

<table class="table table-bordered" style="width: 460px;">
	<%
	for(int i=0;i<3;i++)
	{%>
		<tr>
		<%
		for(int j=0;j<3;j++)
		{%>
			<td>
			<img src="../image/<%=str[n]%>" width="150" height="150">
			</td>
		<%
		  n++; //자바 안에서 실행되야함
		}
		%>
		</tr>
	<%}
	%>
</table>
</body>
</html>