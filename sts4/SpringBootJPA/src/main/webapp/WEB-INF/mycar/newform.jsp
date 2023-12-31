<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&family=Gaegu:wght@300&family=Noto+Serif+KR:wght@200&family=Single+Day&display=swap"rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
${dto.num } 번호
   <form action="update" method="post">
   <input type="hidden" name="num" value="${dto.num }">
         <table class="table table-bordered">
            <tr>
               <th>자동차명</th>
               <td>
                  <input type="text" name="carname" class="form-control" style="width: 120px;" required="required" value="${dto.carname }">
               </td>
            </tr>
            <tr>
               <th>가격</th>
               <td>
                  <input type="text" name="carprice" class="form-control" style="width: 150px;" required="required" value="${dto.carprice }">
               </td>
               
            </tr>
            <tr>
               <th>색상</th>
               <td>
                  <input type="color" name="carcolor" class="form-control" style="width: 120px;" required="required" value="${dto.carcolor }">
               </td>
            </tr>
            <tr>
               <th>구입일</th>
               <td>
                  <input type="date" name="carguip" class="form-control" style="width: 200px;" required="required" value="2023-10-20" value="${dto.carguip }">
               </td>
               
            </tr>
            <tr>
               <td colspan="2" align="center">
                  <button type="submit" class="btn btn-info">저장</button>
                  <button type="button" class="btn btn-dark" onclick="location.href='carlist'">목록</button>
               </td>
            </tr>
         </table>
      </form>
</body>
</html>