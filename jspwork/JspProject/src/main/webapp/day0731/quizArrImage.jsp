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
<!-- f1~f20.png 4행 5열로 하세요 -->
<%
	/*String [] str={"f1.png","f2.png","f3.png","f4.png","f5.png","f6.png","f7.png","f8.png","f9.png","f10.png",
			"f11.png","f12.png","f13.png","f14.png","f15.png","f16.png","f17.png","f18.png","f19.png","f20.png"};  생략가능*/ 
	int n=0;
%>

<table class="table table-bordered" style="width: 1000px;">

	<%
	for(int i=0;i<4;i++)
	{%>
		<tr>
		<%
		for(int j=0;j<5;j++)
		{
			n++;
		%>
			<td>
			<img src="../image/f<%=n %>.png" width="200" height="200" >
			</td>
		<%
		}
		%>
		</tr>
	<%}
		
	%>

</table>
</body>
</html>