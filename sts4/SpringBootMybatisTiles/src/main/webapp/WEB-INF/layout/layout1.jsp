<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
  /* div.layout div{
  	border: 1px solid black;
  } */
  
  div.layout div.title{
    position: absolute;
    /* left: 450px; */
    height: 150px;
    width: 100%;
    background-color: black;
  }
  
  div.layout div.menu{
  	position: absolute;
    top: 150px;
    height: 70px;
    width: 100%;
    background-color: black;
  }
  
  div.layout div.info{
  	position: absolute;
    top: 220px;
    height: 100%;
    font-family: 'Dongle';
    font-size: 17px;
    width: 300px;
  }
  
  div.layout div.main{
  	position: absolute;
    top: 220px;
    left: 300px;
    height: 2000px;
    font-size: 17px;
    width: 80%;
  }
</style>
</head>
<body>
<div class="layout">
  <div class="title">
  	<tiles:insertAttribute name="title"/>
  </div>
  <div class="menu">
  	<tiles:insertAttribute name="menu"/>
  </div>	
  <div class="info">
  	<tiles:insertAttribute name="info"/>
  </div>	
  <div class="main">
  	<tiles:insertAttribute name="main"/>
  </div>		
</div>
</body>
</html>