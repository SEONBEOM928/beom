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
<style>
.main1{
	width: 103%;
	height: 300vh;
	position: absolute;
	float: left;
}

.main2{
	top: 91.85vh;
	position: absolute;
	width: 103%;
	height: 1000px;
}
</style>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"/>

<div class="main1">
<img src="${root }/image/event2.png" width="49.7%" height="650vh;"  >
<img src="${root }/image/event3.png" width="49.7%" height="650vh;" >
</div>
<div class="main2">
<img src="${root }/image/event4.png" width="30%" height="30%;" style="margin-right: 56px" >
<img src="${root }/image/event5.png" width="30%" height="30%;" style="margin-right: 56px" >
<img src="${root }/image/event6.png" width="30%" height="30%;" > 
</div>

</body>
</html>