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
<div style="margin: 80px 444px;">
	<form action="addProc.jsp">
		<img alt="" src="../image/logoImg/musinsa.png" style="width :400px">
		<table class="table table-dark" style="width: 400px">
			<caption align="top"><h4><b>회원가입</b></h4></caption>
			<tr>
				<td style="width: 100px;" align="center">아이디</td>
				<td>
				<input type="text" class="form-control" name="id" required="required" readonly="readonly" id="mid" style="width: 150px; float: left;">&nbsp;&nbsp;
				<button type="button" class="btn btn-danger btn-sm" onclick="openId()" style="width: 100px;">아이디입력</button>
				</td>
			</tr>
			<tr>
				<td style="width: 100px;" align="center">비밀번호</td>
				<td><input type="password" class="form-control" name="pass" required="required" style="width: 200px;"></td>
			</tr>
			<tr>
				<td style="width: 100px;" align="center">이름</td>
				<td><input type="text" class="form-control" name="name" required="required" style="width: 200px;"></td>
			</tr>
			<tr>
				<td style="width: 100px;" align="center">핸드폰</td>
				<td>
					<input type="text" class="form-control" style="width: 200px;"
						name="hp" required="required">
				</td>
			</tr>
			<tr>
				<td style="width: 100px;" align="center">생년월일</td>
				<td>
					<input type="date" style="width: 200px;"
						name="birth">
				</td>
			</tr>
			<tr>
				<td style="width: 100px;" align="center">성별</td>
				<td>
					<input type="radio" name="gender" value="남자" checked="checked">남자
					<input type="radio" name="gender" value="여자">여자
				</td>
			</tr>
			<tr>
				<td style="width: 100px;" align="center">외국인/내국인</td>
				<td>
					<input type="radio" name="race" value="내국인" checked="checked">내국인
					<input type="radio" name="race" value="외국인">외국인
				</td>
			</tr>
			<tr>
				<td style="width: 100px;" align="center">이메일</td>
				<td>
					<input type="text" class="form-control" style="width: 200px;"
						name="mail" required="required">
				</td>
			</tr>
			<tr>
				<td style="width: 100px;" align="center">주소</td>
				<td>
					<input type="text" class="form-control" style="width: 200px;"
						name="addr" required="required">
				</td>
			</tr>
		
			<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-success btn lg" id="btnGaip"
						style="width: 100px;" onclick="location.href=''">회원가입</button>
					</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>