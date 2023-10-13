<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Moirai+One&family=Nanum+Pen+Script&family=Orbit&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
  <h3>ex3번 예제</h3>
  <br>
  <button type="button" id="btn1" class="btn btn-warning">list3 json데이터 출력하기</button>
 <div id="out1"></div>

<script type="text/javascript">
	$("#btn1").click(function() {
		
		$.ajax({
			type:"get",
			dataType:"json",
			url:"list3",
			success:function(res){
				
				var s="";
				$.each(res,function(i,elt){
					
					s+="<figure>";
					s+="<img src='image/"+elt.photo+"' width=100>";
					s+="<figcaption><b>";
					s+=elt.name;
					s+="</b></figcaption>";
					s+="</figure>";
				});
				
				$("#out1").html(s);
			}
		})
	})	
</script>
</body>
</html>