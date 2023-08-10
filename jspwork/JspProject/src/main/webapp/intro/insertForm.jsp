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
<form action="insertAction.jsp" method="post">
	<table class="table table-dark" style="width: 400px;">
		
		<tr>
			<th>이름</th>
			<td>
			<input type="text" name="name">
			</td>
		</tr>
		<tr>
			<th>혈액형</th>
			<td>
			<input type="text" name="blood">
			</td>
		</tr>
		<tr>
			<th>핸드폰</th>
			<td>
			<select name="phone1" id="phone1">
			 <option>010</option>
			 <option>011</option>
			 <option>017</option>
			 <option>032</option>
			</select>
			<b>-</b>			 
			<input type="text" name="phone2" id="phone2" style="width:50px";>
			<b>-</b>
			<script>
			$("#phone2").keyup(function(){
				
				if($(this).val().length==4)
				{
					$("#phone3").focus();
				}
			})
			</script>
			<input type="text" name="phone3" id="phone3" style="width:50px";>
			</td>
		</tr>
		<tr>
			<th>지역</th>
			<td>
			<input type="radio" name="city" value="서울">서울
			<input type="radio" name="city" value="인천">인천
			<input type="radio" name="city" value="대구">대구
			<input type="radio" name="city" value="부산">부산
			<input type="radio" name="city" value="제주">제주	
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
</body>
</html>