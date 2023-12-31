<%@page import="Dao.MemberDao"%>
<%@page import="Dto.MemberDto"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="Dao.ReservationDao"%>
<%@page import="Dto.ReservationDto"%>
<%@page import="Dto.SeatDto"%>
<%@page import="Dao.SeatDao"%>
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
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<style>
button#payKakao{
all:unset;
cursor: pointer;
}

</style>
<%
	//로그인한 id를 가져옴
	//String id = (String)session.getAttribute("myid");	
	NumberFormat nf = NumberFormat.getCurrencyInstance();
	
	int seat_no = Integer.parseInt(request.getParameter("seat_no"));

	SeatDao sdao = new SeatDao();
	SeatDto sdto = sdao.getData(seat_no);
	
	ReservationDao rdao = new ReservationDao();
	ReservationDto rdto = rdao.getData(Integer.parseInt(sdto.getRev_no()));
	
	String id = rdto.getMem_id();
	
	String[] mv_titles = rdto.getRev_title().split(";");
	String mv_title = mv_titles[2];
	//System.out.println(mv_title);
	
	MemberDao mdao = new MemberDao();
	String name = mdao.getName(id);
	
%>

<script type="text/javascript">
$(function(){
	
	//번호입력시 focus이동
	$("#cardNum1").on("keyup", function(){
		if ($(this).val().length == 4) {
			$("#cardNum2").focus();
		}
	});
	
	$("#cardNum2").on("keyup", function(){
		if ($(this).val().length == 4) {
			$("#cardNum3").focus();
		}
	});
	
	$("#cardNum3").on("keyup", function(){
		if ($(this).val().length == 4) {
			$("#cardNum4").focus();
		}
	});
	
	$("#cardNum4").on("keyup", function(){
		if ($(this).val().length == 4) {
			$("#expM").focus();
		}
	});
	
	$("#expM").on("keyup", function(){
		if ($(this).val().length == 2) {
			$("#expY").focus();
		}
	});
	
	$("#expY").on("keyup", function(){
		if ($(this).val().length == 2) {
			$("#cardPw").focus();
		}
	});
	
	$("#cardPw").on("keyup", function(){
		if ($(this).val().length == 2) {
			$("#birth").focus();
		}
	});
	
	//카카오페이 결제
	IMP.init("imp10502566");

	$("#payKakao").click(function(){
		//alert("test");
		IMP.request_pay({
			pg:"kakaopay.TC0ONETIME",
			pay_method:"card",
			merchant_uid : "3cine(1)"+ Date.now(),
			name:"<%=mv_title%>",
			amount:<%=sdto.getTotalPrice()%>,
			buy_name:"<%=id%>"
		},function(rsp){
			
			if(rsp.success){
				var msg="결제가 완료되었습니다.";
				msg+="\n영화 :"+"<%=mv_title%>";
				msg+="\n극장 : 3cine"+"<%=rdto.getRev_name()+rdto.getRev_place()%>";
				msg+="\n날짜 : "+"<%=rdto.getRev_date()%>";
				msg+="\n인원 : "+"<%=(sdto.getAdultCnt()!=0)?"성인 "+sdto.getAdultCnt()+"명 ":""%>"+
				"<%=(sdto.getTeenCnt()!=0)?"청소년 "+sdto.getAdultCnt()+"명 ":""%>"+
				"<%=(sdto.getChildCnt()!=0)?"아동 "+sdto.getAdultCnt()+"명":""%>";
				msg+="\n좌석 : "+"<%=sdto.getSeat_name()%>";
				msg+="\n결제금액 : "+"<%=sdto.getTotalPrice()%>"+"원";
				
				alert(msg);
				location.href="index.jsp";
			}
			else{
				var msg = "결제에 실패하였습니다.\n";
				msg+=rsp.error_msg;
				
				
				//실패시 reload
				location.reload();
			}
			alert(msg);
		
		});
	});

	//kg이니시스 결제
	$("#kg").click(function(){
		//alert("test");
		IMP.request_pay({
			pg:"html5_inicis.INIBillTst",
			pay_method:"card",
			merchant_uid : "3cine(1)"+ Date.now(),
			name:"<%=mv_title%>",
			amount:<%=sdto.getTotalPrice()%>,
			buy_name:"<%=id%>"
		},function(rsp){
			
			if(rsp.success){
				var msg="결제가 완료되었습니다.";
				msg+="\n영화 :"+"<%=mv_title%>";
				msg+="\n극장 : 3cine"+"<%=rdto.getRev_name()+rdto.getRev_place()%>";
				msg+="\n날짜 : "+"<%=rdto.getRev_date()%>";
				msg+="\n인원 : "+"<%=(sdto.getAdultCnt()!=0)?"성인 "+sdto.getAdultCnt()+"명 ":""%>"+
				"<%=(sdto.getTeenCnt()!=0)?"청소년 "+sdto.getAdultCnt()+"명 ":""%>"+
				"<%=(sdto.getChildCnt()!=0)?"아동 "+sdto.getAdultCnt()+"명":""%>";
				msg+="\n좌석 : "+"<%=sdto.getSeat_name()%>";
				msg+="\n결제금액 : "+"<%=sdto.getTotalPrice()%>"+"원";
				
				alert(msg);
				location.href="index.jsp";
			}
			else{
				var msg = "결제에 실패하였습니다.\n";
				msg+=rsp.error_msg;
				
				//실패시 reload
				location.reload();
			}
			alert(msg);
		
		});
	});
	
});

</script>

</head>

<body>
<br><br>
<div class="container">
<h1 style="color: white;font-weight: bold;margin-left: 40px;">결제하기</h1>
<hr style="color: white">
<hr style="border: 3px solid white;">
<table class="table" style= "vertical-align: middle;" >
	<caption align="top"><b>결제정보</b></caption>
	<tr class="table table-danger" style="text-align: center;">
		<th style="background-color: #b0c4de;color: white;">&nbsp;&nbsp;&nbsp;주문자명</th>
		<th style="background-color: #b0c4de;color: white;">영화</th>
		<th style="background-color: #b0c4de;color: white;">극장명</th>
		<th style="background-color: #b0c4de;color: white;">상영관</th>
		<th style="background-color: #b0c4de;color: white;">날짜</th>
		<th style="background-color: #b0c4de;color: white;">좌석</th>
		<th style="background-color: #b0c4de;color: white;">인원</th>
		<th style="background-color: #b0c4de;color: white;">총가격</th>
	</tr>
	<tr style="text-align: center">
		<td><%=name %></td>
		<td>
		<!-- <img src="upload/Oppenheimer2.jpg" style="width: 100px;"> -->
			<%=rdto.getRev_poster() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<b><%=rdto.getRev_title() %></b>
		</td>
		<td><b><%=rdto.getRev_name() %></b></td>
		<td><b><%=rdto.getRev_place() %></b></td>
		<td><b><%=rdto.getRev_date() %></b></td>
		<td><b><%=sdto.getSeat_name() %></b></td>
		<td>
			<b><%=sdto.getAdultCnt()!=0?"성인:"+sdto.getAdultCnt()+"명<br>":"" %></b>
			<b><%=sdto.getTeenCnt()!=0?"청소년:"+sdto.getTeenCnt()+"명<br>":"" %></b>
			<b><%=sdto.getChildCnt()!=0?"아동:"+sdto.getChildCnt()+"명<br>":"" %></b>
		</td>
		<td><b><%=nf.format(sdto.getTotalPrice()) %></b></td>
	</tr>
	<tr>
		<td colspan="8" align="center">
			<b>최종결제 수단</b>
		</td>
	</tr>

	<tr>
		<td colspan="8" align="center">
			<button type="button" id="payKakao"><img src="image/kakaopay.png"></button>
			<input type="button" value="신용카드" class="btn btn-secondary" id="kg">
		</td>
	</tr>
	
</table>
</div>
<br><br>

</body>
</html>