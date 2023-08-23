<%@page import="Mysawon.model.MysawonDto"%>
<%@page import="Mysawon.model.MysawonDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Cute+Font&family=Diphylleia&family=Dongle:wght@300&family=Hi+Melody&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%



int num=Integer.parseInt(request.getParameter("num"));

MysawonDao dao=new MysawonDao();
MysawonDto dto=dao.getData(num);

%>
	<form action="mysawonUpdateAction.jsp" method="post">
		<input type="hidden" name="num" value="<%=dto.getNum()%>">
		
	<div class="container">
  <h2>사원정보수정</h2>
  <table class="table">
    <tbody>   
      <tr class="success">
        <td>이름</td>
        <td><input type="text" name="name" class="form-control"
        required="required" style="width:150px;" value="<%=dto.getName()%>"></td>
      </tr>
      <tr class="danger">
        <td>사진</td>
        <td>
        <input type="file" name="image" value="<%=dto.getImage()%>">
      
        </td>
      </tr>
      <tr class="danger">
        <td>성별</td>
        <td>
        <input type="radio" name="gender" value="남자">해야됨남
        <input type="radio" name="gender" value="여자">해야됨여
        </td>
      </tr>
      <tr class="info">
        <td>주소</td>
        <td><input type="text" name="addr" class="form-control"
        required="required" style="width:150px;" value="<%=dto.getAddr()%>"></td>
      </tr>
      <tr class="warning">
        <td>주민번호</td>
        <td><input type="text" name="joomin" class="form-control"
        required="required" style="width:150px;" value="<%=dto.getJoomin()%>"></td>
      </tr>
      <tr class="active">
        <td>전화번호</td>
        <td><input type="text" name="hp" class="form-control"
        required="required" style="width:150px;" value="<%=dto.getHp()%>"></td>
      </tr>
      <tr>
        <td>이메일</td>
        <td><input type="text" name="email" class="form-control"
        required="required" style="width:150px;" value="<%=dto.getEmail()%>"></td>
      </tr>
    </tbody>
    
    <tr>
    	<td colspan="2" align="center">
    		<button type="submit" class="btn btn-info">수정</button>
    		<button type="button" class="btn btn-success" onclick="location.href='MysawonSetting.jsp'">목록</button>
    	</td>
    </tr>
  </table>
  
</div>
		
	</form>
</body>
</html>