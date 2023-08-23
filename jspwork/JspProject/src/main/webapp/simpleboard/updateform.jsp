<%@page import="db.simpleboard.SimpleBoardDto"%>
<%@page import="db.simpleboard.SimpleBoardDao"%>
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
  String num=request.getParameter("num");

  SimpleBoardDao dao=new SimpleBoardDao();
  SimpleBoardDto dto=dao.getBoard(num);
%>
<body>
	<div style="margin: 30px 30px; width: 400px;">
		<form action="updateaction.jsp" method="post">
		<input type="hidden" name="num" value="<%=num%>">
			<table class="table table-bordered">
				<caption align="top"><b><i class="bi bi-pencil-square"></i> 글수정</b></caption>
				<tr>
				  <th style="background-color: #ffb6c1">작성자</th>
				  <td>
				  	<input type="text" name="writer" class="form-control"
				  	required="required" autofocus="autofocus" style="width:150px;" value="<%=dto.getWriter()%>">
				  </td>
				</tr>
				
				<tr>
				  <th style="background-color: #ffb6c1">제목</th>
				  <td>
				  	<input type="text" name="subject" class="form-control"
				  	required="required" style="width:270px;" value="<%=dto.getSubject()%>">
				  </td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea style="width: 390px; height: 150px;"
						class="form-control" required="required" name="story"><%=dto.getStory() %></textarea>
					</td>
				</tr>
				
				<tr>
				  <td colspan="2" align="center">
				  <!-- type이 image이거나 submit이면 기본이 submit입니다 -->
				    <input type="image" src="../image/submit.png" style="width:70px;">
				    
				    <input type="image" src="../image/list.png" style="width:70px;"
				    onclick="location.href='boardlist.jsp'; return false;">
				    
				  </td>
				</tr>
			</table>
		</form>	
	</div>
</body>
</html>