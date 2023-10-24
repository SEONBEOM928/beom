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
</head>
<body>
<c:if test="${totalCount==0 }">
<div class="alert alert-info">
	<b>저장된 상품정보가 없습니다</b>
</div>
</c:if>
<c:if test="${totalCount>0}">
<div class="alert alert-info">
	<b>총 ${totalCount }개의 상품이 있습니다</b>
</div>
</c:if>

<table class="table table-bordered">
	  	<tr align="center">
	  	  <th width="60">번호</th>
	  	  <th width="130">상품명</th>
	  	  <th width="100">가격</th>
	  	  <th width="220">입고일</th>
	  	  <th width="200">편집</th>
	  	</tr>
	  	<tr>
	  	  <c:forEach var="mdto" items="${list }" varStatus="i">
	  	  	<tr align="center">
	  	  	  <td>${i.count }</td>
	  	  	  <td>
	  	  	  <c:if test="${mdto.photoname!='no' }">
	  	  	  <img src="../save/${mdto.photoname }" width="40" height="40" border="1" hspace="10">
	  	  	  </c:if>
	  	  	  <c:if test="${mdto.photoname=='no' }">
	  	  	  <img src="../save/noimage.png" width="40" height="40" border="1" hspace="10">
	  	  	  </c:if>
	  	  	  <br>
	  	  	  ${mdto.sang }
	  	  	  </td>
	  	  	  <td><fmt:formatNumber value="${mdto.price }" type="currency"/></td>
	  	  	  <td><fmt:formatDate value="${mdto.ipgoday}" pattern="yyyy-MM-dd HH:mm"/></td>
	  	  	  <td>
	  	  	  	  <button type="button" class="btn btn-info btn-sm"
	  	  	  	  onclick="location.href=''">수정</button>
	  	  	  	  <button type="button" class="btn btn-danger btn-sm"
	  	  	  	  onclick="location.href='delete?num=${mdto.num}'">삭제</button>
	  	  	  </td>
	  	  	</tr>
	  	  </c:forEach>	
	  	</tr>
	  </table>
	  
<div style="margin: 50px 100px;">
<button type="button" class="btn btn-info"
onclick="location.href='writeform'">글쓰기</button>
</div>
</body>
</html>