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
<style type="text/css">
table{
	font-weight: bold;
	font-size: 13pt;
	margin: 100px 200px;
}
</style>
</head>
<body>
<form action="update"  method="post" enctype="multipart/form-data">
	<input type="hidden" name="num" value=${dto.num }>
	<table class="table table-bordered-dark table-primary table-striped" style="width: 600px">
		<caption align="top"><b>상품등록</b></caption>
				<tr>
					<th>상품명</th>
					<td>
						<input type="text" name="sangpum" class="form-control"
						style="width: 120px;" required="required" value="${dto.sangpum}">
					</td>
				</tr>
				<tr>
					<th>단가</th>
					<td>
						<input type="text" name="price" class="form-control"
						style="width: 150px;" required="required" value="${dto.price}">
					</td>
				</tr>
				<tr>
					<th>카테고리</th>
					<td>
						<select name="category" style="width: 150px;" required="required" value="${dto.category}">
							<option value="outer">아우터</option>
							<option value="top">상의</option>
							<option value="pants">바지</option>
							<option value="onepiece">원피스</option>
							<option value="skirt">스커트</option>
							<option value="shoes">신발</option>
							<option value="bag">가방</option>
							<option value="headwear">모자</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>사진</th>
					<td>
						<input type="file" name="photo" class="form-control"
						style="width: 200px;" multiple="multiple">
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
</body>
</html>