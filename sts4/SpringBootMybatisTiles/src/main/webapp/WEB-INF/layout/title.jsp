<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
</style>
<script type="text/javascript">
	
	$(function() {
		
		$("#btnloginok").click(function() {
			
			//아이디 비번읽기
			var id=$("#loginid").val();
			var pass=$("#loginpass").val();
			
			//alert(id+","+pass);
			var root='${root}';
			console.log("root"+root);
			
			$.ajax({
				
				type:"get",
				url:root+"/member/login",
				dataType:"json", /* 넘길 data값이 없을때 json형식으로 사용 */
				data:{"id":id,"pass":pass},
				success:function(res){
					if(res.result=='fail')
					  {
						alert("아이디나 비번이 맞지않습니다");
					  }else{
						  location.reload();
					  }
				}
			})
		})
		
		$("#btnlogout").click(function() {
			
			var root='${root}';
			$.ajax({
				
				type:"get",
				url:root+"/member/logout",
				dataType:"html",
				success:function(){
					location.reload();  
				}
			})
			
		})
	});
</script>
</head>
<body>
	<c:set var="root" value="<%=request.getContextPath()%>" />
	<img src="${root }/image/title1.png" width="100%" height="80px;">
	<a href="/${root }"><img src="${root }/image/musinsa.png"
		width="150px;" style="margin-left: 20px; margin-top: 20px"></a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<c:if test="${sessionScope.loginok==null }">
		<button type="button" class="btn btn-outline-success"
			onclick="location.href='${root}/login/main'">Login</button>
	</c:if>

	<c:if test="${sessionScope.loginok!=null }">
		<b>${sessionScope.myid }님이 로그인중입니다</b>
		<button type="button" class="btn btn-outline-danger"
			onclick="location.href='${root}/login/logoutprocess'">Logout</button>
	</c:if>

	<!-- ajax login -->
    
   <c:if test="${sessionScope.loginok==null }">
	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal" id="btnlogin">ajaxlogin</button>
   </c:if>
   
    <c:if test="${sessionScope.loginok!=null }">
	<button type="button" class="btn btn-danger" data-bs-toggle="modal" id="btnlogout">ajaxlogout</button>
   </c:if>
   
	<!-- The Modal -->
	<div class="modal" id="myModal">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">로그인</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
				<input type="text" class="form-control" id="loginid" placeholder="아이디 입력"><br>
				<input type="password" class="form-control" placeholder="비밀번호 입력" id="loginpass">
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="submit" class="btn btn-info" id="btnloginok" data-bs-dismiss="modal">로그인</button>
					<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>

</body>
</html>