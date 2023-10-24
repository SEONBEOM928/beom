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
<style type="text/css">
img{
  border: 2px solid yellow;
  border-radius: 10px;
}

body{
  background-color: black;
}
</style>
</head>
<body>
<button type="button" class="btn btn-info" 
onclick="location.href='writeform'">영화추가</button>
<div style="margin-top: 100px; margin-left: 100px;">
<table>
<tr>
<c:forEach var="modto" items="${list }" varStatus="i">
	<td>
	<c:if test="${modto.mv_poster!='no' }" >
	<a href="detail?num=${modto.mv_num }"><img src="../moviephoto/${modto.mv_poster }" width="150px;" height="220px;" style="margin-right: 50px;"></a>
	
	</c:if>
	<c:if test="${modto.mv_poster=='no' }">
	<img src="../moviephoto/noimage.png" width="150px;" height="220px;" style="margin-right: 50px;">
	</c:if>
        <p style="color: yellow;" font-size: 1.1em;>${modto.mv_title}</p>
   </td>
   </c:forEach>
</tr>


</table>
</div>
</body>
</html>