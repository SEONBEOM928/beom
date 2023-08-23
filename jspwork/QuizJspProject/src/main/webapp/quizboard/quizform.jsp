<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Cute+Font&family=Diphylleia&family=Dongle:wght@300&family=Hi+Melody&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
	
</style>
</head>
<body>
  <div style="margin: 30px 30px; width: 500px;">
    <form action="quizaction.jsp" method="post" enctype="multipart/form-data" class="form-inline">
      <table class="table table-bordered">
      	 <caption align="top"><h4><i class="bi bi-pencil-square"></i><b>글쓰기</b></h4></caption>
      	 <tr>
      	 	<th style="background-color: #f08080;">작성자</th>
      		<td>
      		   <input type="text" name="writer" class="form-control"
      		   required="required" autofocus="autofocus" style="width: 150px">
      		</td>
      	 </tr>
      	 <tr>
      	 	<th style="background-color: #f08080;">제목</th>
      		<td>
      			<input type="text" name="title" class="form-control"
      		   required="required" style="width: 250px">
      		</td>
      	 </tr>
      	 <tr>
      	 	<th style="background-color: #f08080;">내용</th>
      		<td>
      			<textarea style="width: 400px; height: 200px;"
      			class="form-control" required="required" name="content"></textarea>
      		</td>
      	 </tr>
      	 <tr>
      	 	<th style="background-color: #f08080;">이미지</th>
      		<td>
      			<input type="file" class="form-control" name="imgname">
      		</td>
      	 </tr>
      	 <tr>
      	 	<td colspan="2" align="center" style="background-color: #f08080;">
      	 	  <input type="image" src="../image/submit.png" style="width:70px;">
      	 	  
      	 	  <input type="image" src="../image/list.png" style="width:70px;"
      	 	  onclick="location.href='quizlist.jsp' return false;">
      	 	</td>
      	 </tr>
      </table>
    
    </form>
  </div>
</body>
</html>