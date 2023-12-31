<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gugi&family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<!-- 네이버 로그인 -->
 <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
   <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<title>Insert title here</title>
<style type="text/css">
hr{
   width: 40%;
   border: 2px solid #666666;
   margin-left: 3%;
}

.loginform {
   margin-left: 35%;
   margin-top: 5%;
   color: silver;
}


</style>
</head>
<%
   //세션값얻기
   String saveok=(String)session.getAttribute("saveok");
   
   String myid="";
   
   if(saveok!=null)
   {
      myid=(String)session.getAttribute("myid");
   }
%>

 
<body>
<hr>

<div class="loginform">
   <form action="login/loginaction.jsp" method="post">
   <div class="container" style="width: 1000px;">
   <h1 style="color: white;">Login</h1>
	<hr style="border: 3px solid white; width: 500px;">
      <b style="color: silver;">아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</b>
      <br>
      <table style="width: 500px; margin-top: 1%;">
         <tr>
         <td>
            <i class="bi bi-person"></i>
            <input type="text" name="id" class="from-control" required="required" value="<%=myid %>"
            style="width: 250px; border: 5px solid #666666;">
         </td>
         </tr>
         <tr>
         <td>
            <i class="bi bi-lock"></i>
            <input type="password" name="pass" class="from-control" required="required"
            style="width: 250px; border: 5px solid #666666;">
         </td>
         </tr>
         
         <tr>
            <td>
            &nbsp;&nbsp;&nbsp;
            
            <input type="image" src="./image/loginbutton.png" style="width: 250px; border-radius: 10px" id="btnlogin">
            <!--지워도되는데 input image로 submit 대체 안될시 이거쓸예정/ <button type="submit" class="btn btn-danger" id="btnlogin"
            style="width: 250px;">로그인</button> -->
            </td>
         </tr>
         <tr>   
            <td>
            &nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="cbsave"
            <%=saveok==null?"":"checked" %> style="color: silver;">아이디저장
               <a href="#" style="color: silver;">아이디 찾기></a>
               <a href="#" style="color: silver;">비밀번호 찾기></a>
            </td>
         </tr>
         <tr>
            <td>
            <br>
            &nbsp;&nbsp;&nbsp;
            <b>간편로그인</b>
            </td>
         </tr>
         <tr>
            <td>
            &nbsp;&nbsp;&nbsp;
             <div id="naver_id_login" style="width: 250px; height: auto; margin-left: 30px;"><!-- <img style="width: 250px; height: auto; border-radius: 10px" src="./image/naverlogin.png"/> --></div> 
               
                <!-- //네이버 로그인 버튼 노출 영역 -->
          <script type="text/javascript">
              var naver_id_login = new naver_id_login("cOzHuKVMK_K9_kRKGF4L", "http://localhost:8080/SemiProject/login/callback.jsp");
              var state = naver_id_login.getUniqState();
              naver_id_login.setButton("green", 3,50);
              naver_id_login.setDomain("http://localhost:8080/SemiProject/login/callback.jsp");
              naver_id_login.setState(state);
              naver_id_login.setPopup();
              naver_id_login.init_naver_id_login();
          </script>
            
             
             
            </td>
         </tr>
         <tr>
         	<td>
         	
         	 <a href="javascript:kakaoLogin()"><img height="38px"  src="image/kakao_login_medium_narrow.png" style="margin-left: 30px;width: 230px;height: 50px;"></a>
       
         	
         	<!-- 카카오스크립트 -->
         	
         	<script type="text/javascript">
         	Kakao.init("aa8fa91006ff299919c69a3d7526fed0");
         	console.log(Kakao.isInitialized())
         	
         	function kakaoLogin() {
        	Kakao.Auth.login({
            success: function (response) {
                Kakao.API.request({
                    url: '/v2/user/me',
                    success: function (response) {
                        
                    	 id=response.id;
                    	 kakao_account=response.kakao_account;
                    	 nickname=kakao_account.profile.nickname;
                    	 email=kakao_account.email;
                    	 gender=kakao_account.gender;
                    	 birth=kakao_account.birthday;
                    	 
                    	 if(gender=="female"){
                    		 gender="여자";
                    	 }
                    	 if(gender=="male"){
                    		 gender="남자";
                    	 }
                    	 
                    	 if(birth&&birth.length==4){
                    		 birth=birth.substring(0,2)+"-"+birth.substring(2); //첫번째 substring은 0번째부터 2번째 직전까지 가져온다는 뜻 , 두번째는 substring은 2번째부터 마지막까지 출력
                    	 }
                    	 
                    	alert(id);
                    	alert(gender)
              			alert(nickname);
              			alert(email);
              			
              			
              			 $.ajax({
              			
              				type:"post",
              				dataType:"html",
              				url:"login/kakao.jsp",
              				data:{"id":id,"nickname":nickname,"email":email,"gender":gender,"birth":birth},
              				success:function(res){
              					
              					location.href="index.jsp?main=layout/main.jsp";
              				}
              			})  
              			
                    	 
                        
                        
                    },
                    fail: function (error) {
                        alert(JSON.stringify(error))
                    },
                })
            },
            fail: function (error) {
                alert(JSON.stringify(error))
            },
        })
    }
         	</script>
         	</td>
         </tr>
         
      </table>
      </div>
   </form>

</div>
<hr>
<br><br>
</body>
</html>