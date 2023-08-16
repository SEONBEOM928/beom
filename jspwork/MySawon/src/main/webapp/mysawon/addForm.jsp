<%@page import="mysawon.model.mysawonDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Cute+Font&family=Diphylleia&family=Dongle:wght@300&family=Hi+Melody&family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="addAction.jsp" method="post">
		<table class="table table-bordered">
			<caption align="top">사원정보저장</caption>
			
			<tr>
				<td>사진: <%for(int i=1;i<10;i++){ %>
				<input type="radio" name="photo" value="<%=i%>">
				<img src="../image/avata/b<%=i %>.png">
				 <%} %>
				
			</tr>			
			<tr>
				<td>이름: <input type="text" name="name"></td>
			</tr>
			<tr>
				<td>주민번호: 
				<input type="text" name="joomin1"> -
				<input type="password" name="joomin2">
				</td>
			</tr>
			<tr>
				<td>나이: <input type="text" name="age"></td>
			</tr>
			<tr>
				<td>성별: 
				<select name="gender">
				<option value="남자">남자</option>
				<option value="여자">여자</option>
				</select>
				</td>
			</tr>
			<tr>
			
				<td>부서:
				<input type="radio" name="buseo" value="운영팀">운영팀
				<input type="radio" name="buseo" value="인사팀">인사팀
				<input type="radio" name="buseo" value="영업팀">영업팀
				<input type="radio" name="buseo" value="보안팀">보안팀
				<input type="radio" name="buseo" value="개발팀">개발팀
				</td>
			</tr>

			<tr>
				<td>
					<button type="submit">전송</button>
				</td>
			</tr>

		</table>
	</form>

</body>
</html>