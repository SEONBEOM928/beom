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
<style type="text/css">
	#selphoto{
		
		position: absolute;
		left: 500px;
		top: 100px;
		width: 200px;
		border-radius: 20px;
	}
</style>

<script type="text/javascript">
	$(function() {
		
		//select된 선택값 얻기
		var srcImg=$("#photo").val();
		//selphoto
		$("#selphoto").attr("src",srcImg);
		
		$("#photo").change(function() {
		
			var s=$(this).val();
			$("#selphoto").attr("src",s);
		})
	})
</script>
</head>
<body>
<form action="addAction.jsp" method="post">
	<table class="table table-bordered" style="width: 400px;">
	
		<tr>
			<th>상품명</th>
			<td>
			<input type="text" name="sangpum">
			</td>
		</tr>
		<tr>
			<th>사진</th>
			<td>
			<select name="photo" id="photo">
				<option value="../쇼핑몰사진/3.jpg">모자</option>
				<option value="../쇼핑몰사진/11.jpg">단화</option>
				<option value="../쇼핑몰사진/4.jpg">청바지</option>
				<option value="../쇼핑몰사진/11.jpg">구두</option>
				<option value="../쇼핑몰사진/25.jpg">원피스</option>
			</select>
			</td>
		</tr>
		<tr>
			<th>가격</th>
			<td>
			<input type="text" name="price">
			</td>
		</tr>
		<tr>
			<th>입고날짜</th>
			<td>
			<input type="date" name="ipgoday">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="전송" class="btn btn-info">
				<input type="button" value="목록" onclick="location.href='list.jsp'" class="btn btn-success">
			</td>
		</tr>
	</table>
</form>
	<img alt="" src="" id="selphoto">
</body>
</html>