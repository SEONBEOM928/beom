<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<div style="margin: 100px 100px;">
<form action="insert" method="post" enctype="multipart/form-data">
	<table class="table table-dark" style="width: 400px;">
		<caption align="top"><b>영화정보입력</b></caption>
		<tr>
			<td>제목</td>
			<td>
			<input type="text" name="mv_title" class="form-control" style="width: 200px" required="required">
			</td>
		</tr>
		<tr>
			<td>영화포스터</td>
			<td>
			<input type="file" name="poster" style="width: 200px">
			</td>
		</tr>
		<tr>
			<td>감독</td>
			<td>
			<input type="text" name="mv_director" class="form-control" style="width: 200px" required="required">
			</td>
		</tr>
		<tr>
			<td>개봉일</td>
			<td>
			<input type="date" name="mv_opendate" required="required" >
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-info">저장</button>
				<button type="button" class="btn btn-info"
				onclick="location.href='list'">목록</button>
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>