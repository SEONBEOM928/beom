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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
  $(function() {
	
	 $(".btnnewphoto").click(function() {
		
		  $("#newphoto").trigger("click");
	})
	
	$("#newphoto").change(function() {
		var num=$(this).attr("num");
		console.log(num);
		
		var form=new FormData();
		form.append("photo",$(this)[0].files[0]); //선택한 1개만 추가
		form.append("num",num);
		
		console.dir(form);
		
		$.ajax({
			
			type:"post",
			dataType:"html",
			url: "updatephoto",
			processData:false,
			contentType:false,
			data:form,
			success:function(){
				
				location.reload();
			}
		})
	})
	
	//탈퇴
	$(".btndelete").click(function(){
		
		var num=$(this).attr("num");
		//alert(num);
		
		var ans=confirm("정말 탈퇴하시겠습니까?");
		
		if(ans){
			
			$.ajax({
				
				type:"get",
				dataType:"html",
				url:"deletemyinfo",
				data:{"num":num},
				success:function(){
					
					alert ("삭제하시겠습니까?");
					location.href="/";
				}
			})
		}
			
	})
	
	 $("#modalupdate").click(function() {
		
		 var num=$(this).attr("num");
		 var name=$("#ajaxname").val();
		 var email=$("#ajaxemail").val();
		 var hp=$("#ajaxhp").val();
		 var addr=$("#ajaxaddr").val();
		 
		 $.ajax({
			 type:"post",
			 url:"updatemyinfo",
			 dataType:"html",
			 data:{"num":num,"name":name,"email":email,"hp":hp,"addr":addr},
			 success:function(data){
				 location.reload();
			 }
		 });
		 
	})
	
	/*$("#modalupdate").click(function() {   =>location.reload() 없이 기존 myinfo의 텍스트값을 직접 변경하여 하는방법
		
		 var num=$(this).attr("num");
		 var name=$("#ajaxname").val();
		 var email=$("#ajaxemail").val();
		 var hp=$("#ajaxhp").val();
		 var addr=$("#ajaxaddr").val();
		 
		 $.ajax({
			 type:"post",
			 url:"updatemyinfo",
			 dataType:"json",
			 data:{"num":num,"name":name,"email":email,"hp":hp,"addr":addr},
			 success:function(data){
				 $(".infoName").html(data.name);
				 $(".infoAddr").html(data.addr);
				 $(".infoHp").html(data.hp);
				 $(".infoEmail").html(data.email);
			 }
		 });*/
		 
	})
})
</script>
</head>
<body>
<div style="margin: 200px;">
<c:forEach var="dto" items="${list}">
<table class="table table-bordered" >
		<c:if test="${sessionScope.loginok!=null and sessionScope.myid==dto.id }">
		<tr>
			<td style="width: 250px" align="center" rowspan="5">
				<img src="../membersave/${dto.photo}" width="230" height="250" border="1">
				<br>
				<input type="file" style="display: none;" num=${dto.num} id="newphoto" }><!-- 사진 수정시 호출 -->
				<button type="button" class="btn btn-info btnnewphoto">사진수정</button>
			</td>
			<td style="width: 300px" class="infoName">회원명 : ${dto.name}</td>	
			<td rowspan="5" align="center" valign="bottom" style="width: 200px; vertical-align: middle;">	
				
				<button type="button" class="btn btn-outline-secondary" num=${dto.num} data-bs-toggle="modal" data-bs-target="#updateModal"
				id="btnupdate">수정</button>
				<br><br>
				<!-- 회원정보수정 ajax -> 하단 모달창 -->
				<button type="button" class="btn btn-outline-secondary btndelete" num=${dto.num}>삭제</button>
				
							
			</td>	
		</tr>
		<tr>
			<td>아이디:${dto.id}</td>
		</tr>
		<tr>
			<td class="infoEmail">이메일:${dto.email}</td>
		</tr>
		<tr>
			<td class="infoHp">핸드폰:${dto.hp}</td>
		</tr>
		<tr>
			<td class="infoAddr">주소:${dto.addr}</td>
		</tr>
		
		</c:if>
		</table>
		
		<!-- 회원정보수정 -->
<div class="modal" id="updateModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">회원정보수정</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <table class="table table-bordered">
        	<tr>
        		<td>회원명</td>
        		<td>
        		<input type="text"  class="form-control" name="name" id="ajaxname" placeholder="이름" 
        		required="required" style="width: 150px;" value="${dto.name }">	
        		</td>
        	</tr>
        	<tr>
        		<td>이메일</td>
        		<td>
        		<input type="text"  class="form-control" name="email" id="ajaxemail" placeholder="이메일" 
        		required="required" style="width: 250px;" value="${dto.email }">		
        		</td>
        	</tr>
        	<tr>
				  <td>전화번호</td>
				  	<td>
				  	  <input type="text"  class="form-control" name="hp" id="ajaxhp" placeholder="전화번호" 
				  	  required="required" style="width: 250px;" value="${dto.hp }">	
				  	</td>
				  </tr>
			<tr>
				  <td>주소</td>		  
				  <td>
				  	 <input type="text"  class="form-control" name="addr" id="ajaxaddr" placeholder="주소입력" 
				  	  required="required" style="width: 300px;" value="${dto.addr }">	
				  </td>
			</tr>
					
						
        </table>
      </div>
      <!-- Modal footer -->
      <div class="modal-footer">
      	<button type="button" class="btn btn-info" data-bs-dismiss="modal" num=${dto.num} id="modalupdate">수정</button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
	</c:forEach>
	</div>
   

   
 
  
</body>
</html>