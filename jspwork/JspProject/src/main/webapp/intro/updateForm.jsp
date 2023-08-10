<%@page import="model.intro.IntroDto"%>
<%@page import="model.intro.IntroDao"%>
<%@page import="model.mymall.MallDto"%>
<%@page import="model.mymall.MallDao"%>
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
String Intro_num=request.getParameter("Intro_num");
IntroDao dao = new IntroDao();
IntroDto dto = dao.getName(Intro_num);
%>
<body>
	<form action="updateAction.jsp" method="post">
		<input type="hidden" name="num" value="<%=dto.getIntro_num()%>">
		<table class="table table-dark" style="width: 400px;"></table>
		<caption align="top"><h3>수정</h3></caption>
		 
		  <tr>
		  	<th style="text-align: center">이름</th>
		  	<td>
		  	<input type="text" name="name" class="form-control"
		  	required="required" style="width: 150px"; placeholder="상품명"
		  	value="<%=dto.getIntro_name()%>">
		  	</td>
		  </tr>
		  
		  <tr>
		  	<th style="text-align: center">혈액형</th>
		  	<td>
		  	<input type="text" name="blood" class="form-control"
		  	required="required" style="width: 150px";
		  	value="<%=dto.getIntro_blood()%>">
		  	</td>
		  </tr>
		  
		  <tr>
		  	<th style="text-align: center">핸드폰</th>
            <td>
          	<input type="text" name="hp" class="form-control"
		  	required="required" style="width: 150px";
		  	value="<%=dto.getIntro_hp()%>">
            </td>
		  </tr>
		  
		  <tr>
            <th style="text-align: center">지역</th>
            <td>
			<input type="radio" name="city" value="서울" <%=dto.getIntro_city() .equals("서울")?"checked":""%>>서울
			<input type="radio" name="city" value="인천" <%=dto.getIntro_city() .equals("인천")?"checked":""%>>인천
			<input type="radio" name="city" value="대구" <%=dto.getIntro_city() .equals("대구")?"checked":""%>>대구
			<input type="radio" name="city" value="부산" <%=dto.getIntro_city() .equals("부산")?"checked":""%>>부산
			<input type="radio" name="city" value="제주" <%=dto.getIntro_city() .equals("제주")?"checked":""%>>제주	
			</td>
         </tr>
          
         <tr>
			<td colspan="2" align="center">
				<input type="submit" value="전송" class="btn btn-info">
				<input type="button" value="목록" onclick="location.href='list.jsp'" class="btn btn-success">
			</td>
		</tr> 
	</form>
	
</body>
</html>