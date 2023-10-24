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
<body style="background-color: black;">
<h3 class="alert alert-info">영화 상세정보</h3>
<table style="width: 800px;" class="table table-dark">
	<tr>
		<td width="350" rowspan="3">
			<img src="../moviephoto/${dto.mv_poster }">
		</td>
		<td align="center" valign="middle">
		<h3 style="color: white;">제목: ${dto.mv_title }</h3>
		</td>
	</tr>
	<tr>
		<td align="center" valign="middle">
		<h3 style="color: white;">감독: ${dto.mv_director}</h3>
		</td>
	</tr>
	<tr>
		<td align="center" valign="middle">
		<h3 style="color: white;">개봉일: ${dto.mv_opendate}</h3>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
				<button type="button" class="btn btn-outline-info"
				onclick="location.href=''">수정</button>
				<button type="button" class="btn btn-outline-info"
				onclick="location.href=''">삭제</button>
				<button type="button" class="btn btn-outline-info"
				onclick="location.href='writeform'">등록</button>
				<button type="button" class="btn btn-outline-info"
				onclick="location.href='list'">목록</button>
		</td>
	</tr>
</table>
</body>
</html>