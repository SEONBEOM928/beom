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
<style>
	#selphoto{
		position:absolute;
		top:100px;
		left:500px;
		width:150px;
		border-radius: 20px;
	}
</style>

<script type="text/javascript">
      $(function(){
         //select 된 선택값 넣기
         var srcImg=$("#photo").val();
         //selphoto에 넣기
         $("#selphoto").attr("src",srcImg);
         
         $("#photo").change(function(){
            var s=$(this).val();
            $("#selphoto").attr("src",s);
         });
      });
</script>
</head>
<%
String no=request.getParameter("no");
MallDao dao = new MallDao();
MallDto dto = dao.getSangpum(no);
%>
<body>
	<form action="updateAction.jsp" method="post">
		<input type="hidden" name="no" value="<%=dto.getNo()%>">
		<table class="table table-dark" style="width: 400px;"></table>
		<caption align="top"><h3>등록상품수정</h3></caption>
		 
		  <tr>
		  	<th style="text-align: center">상품명</th>
		  	<td>
		  	<input type="text" name="sangpum" class="form-control"
		  	required="required" style="width: 150px"; placeholder="상품명"
		  	value="<%=dto.getSangpum()%>">
		  	</td>
		  </tr>
		  
		  <tr>
		  	<th style="text-align: center">상품사진</th>
		  	<td>
		  	<select name="photo" id="photo" class="form-control" style="width:150px;">
		  		<option value="../쇼핑몰사진/3.jpg">모자</option>
		  		<option value="../쇼핑몰사진/11.jpg">단화</option>
				<option value="../쇼핑몰사진/4.jpg">청바지</option>
				<option value="../쇼핑몰사진/11.jpg">구두</option>
				<option value="../쇼핑몰사진/25.jpg">원피스</option>
		  	</select>
		  	</td>
		  </tr>
		  
		  <tr>
		  	<th style="text-align: center">가격</th>
            <td>
            <input type="text" name="price" class="form-control"
               required="required" style="width: 150px;" placeholder="가격"
               value="<%=dto.getPrice() %>">
            </td>
		  </tr>
		  
		  <tr>
            <th style="text-align: center">입고일</th>
            <td>
            <input type="date" name="ipgoday" class="form-control"
               required="required" style="width: 150px;"></td>
         </tr>
          
          <tr>
            <td colspan="2" align="center">
               <button type="submit" class="btn btn-warning">수정</button>
               <button type="button" class="btn btn-success"
                  onclick="location.href='list.jsp'">목록</button>
            </td>
         </tr>	  
	</form>
	<img src="" id="selphoto">
</body>
</html>