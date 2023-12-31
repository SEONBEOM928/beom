<%@page import="data.dao.GuestDao"%>
<%@page import="data.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR&display=swap" rel="stylesheet">  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
 <script type="text/javascript">
 	$(function() {
		
 		$("i.camera").click(function(){
 			
 			$("#photo").trigger("click");//이벤트 강제 클릭한 효과
 		})
	})
	
	function readURL(input) {
       if (input.files && input.files[0]) {
           var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
           reader.onload = function (e) {
           //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
               //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정 
               $('#showimg').attr('src', e.target.result);
           }
           //File내용을 읽어 dataURL형식의 문자열로 저장 
           reader.readAsDataURL(input.files[0]);
       }
   }
 	
 </script>
</head>
<%
	String num = request.getParameter("num");
	String currentPage = request.getParameter("currentPage");
	
	GuestDao dao = new GuestDao();
	GuestDto dto = dao.getData(num);
%>
<body>

<!-- 이미지 미리보기 -->
<img alt="" src="<%=dto.getPhotoname()==null?"":"save/"+dto.getPhotoname() %>" id="showimg" style="position: absolute; left: 800px; top: 100px;
max-width: 200px;">

<form action="guest/updateproc.jsp" method="post" enctype="multipart/form-data">
<!-- 수정폼은 반드시 hidden으로 num넘긴다. -->
	<input type="hidden" name="num" value="<%=num%>">
	<input type="hidden" name="currentPage" value="<%=currentPage%>">
	<table class="table table-bordered" style="width: 600px;">
		<caption align="top"><b>방명록 등록</b>
			<i class="bi bi-camera fs-2 camera" style="cursor: pointer;"></i>
			<input type="file" name="photo" id="photo" style="visibility: hidden" onchange="readURL(this)">
		</caption>
		
		<tr height="100">
			<td width="520">
				<textarea style="width: 500px; height: 100px;" name="content" required="required" class="form-control" autofocus="autofocus"><%=dto.getContent() %></textarea>
			</td>
			
			<td>
				<input type="submit" class="btn btn-outline-info" style="width: 100px; height: 100px;" value="수정">
			</td>
		</tr>
		
	</table>
</form>
</body>
</html>