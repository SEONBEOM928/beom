<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
 $(function(){
	
	 $("#allcheck").click(function() {
		
		 var chk=$(this).is(":checked");
		 console.log(chk);
		 
		 $(".del").prop("checked",chk);
	})
	
	$("#btnmemberdel").click(function() {
		
		var cnt=$(".del:checked").length;
		//alert(cnt);
		
		if(cnt==0){
			alert("먼저 선택할 사람을 선택해주세요.");
			return;
		}
		
		$(".del:checked").each(function(i,element) {
			
			var num=$(this).attr("num");
			console.log(num);
			
			//선택한 체크 삭제
			$.ajax({
				
				type:"get",
				url:"delete",
				dataType:"html",
				data:{"num":num},
				success:function(){
					
					alert("삭제되었습니다");
					location.reload();
				}
			})
		})
	})
})
</script>
</head>
<body>
<div class="alert alert-success">총 ${totalCount }명의 회원이 있습니다.</div>
<button type="button" class="btn btn-info" onclick="location.href='form'">회원가입</button>
<table class="table table-bordered">
<caption align="top">회원목록</caption>
	<tr>
		<th>이름</th><th>아이디</th><th>연락처</th><th>주소</th><th>이메일</th><th>가입일</th>
		<th>
			<input type="checkbox" id="allcheck">삭제
		</th>
	</tr>	
  <c:forEach var="member" items="${list }">
	<tr>
		<td>${member.name }</td>
		<td>${member.id }</td>
		<td>${member.hp }</td>
		<td>${member.addr }</td>
		<td>${member.email }</td>
		<td><fmt:formatDate value="${member.gaipday }" pattern="yyyy-MM-dd"/></td>
		<td>
			<input type="checkbox" num=${member.num } class="del">
		</td>
		
	</tr>
	
	
	</c:forEach>
</table>
<button type="button" class="btn btn-danger" id="btnmemberdel">삭제</button>
</body>
</html>