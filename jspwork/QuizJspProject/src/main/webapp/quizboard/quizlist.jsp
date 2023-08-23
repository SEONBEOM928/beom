<%@page import="db.quiz.QuizBoardDto"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.quiz.QuizBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Cute+Font&family=Diphylleia&family=Dongle:wght@300&family=Hi+Melody&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<%
	QuizBoardDao dao=new QuizBoardDao();
	//List<QuizBoardDto> list=dao.getAllBoards();
	
	int totalCount=dao.getTotalCount(); //전체갯수
	int totalPage; //총 페이지수
	int startPage; //각블럭에서 보여질 시작페이지
	int endPage; //각블럭에서 보여질 끝페이지
	int startNum; //db에서 가져올 글의 시작번호(mysql은 첫글이 0,오라클은 1)
	int perPage = 3; //한페이지당 보여질 글의 갯수
	int perBlock = 5; //한 블럭당 보여질 페이지 개수
	int currentPage; //현재페이지
	int no; //각페이지당 출력할 시작번호
	
	//현재페이지 읽기(단 null일경는 1페이지로 준다)계산을 해야하므로 int로 형변환해줌
		if (request.getParameter("currentPage") == null)
			currentPage = 1;
		else
			currentPage = Integer.parseInt(request.getParameter("currentPage"));

		//총페이지수 구하기
		//총 글의 개수 / 한페이지당 보여질 개수로 나눔(7/5=1)
		//나머지가 1이라도 있으면 무조건 페이지 추가(1+1=2페이지가 필요)
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

		//각블럭당 보여야할 시작페이지
		//perBlock=5일경우는 현재페이지 1~5 시작:1 끝:5
		//현재페이지 13 시작:11 끝:15
		startPage = (currentPage - 1) / perBlock * perBlock + 1;

		endPage = startPage + perBlock - 1;

		//총페이지가 23일경우 마지막블럭은 25가 아니라 23이다
		if (endPage > totalPage)
			endPage = totalPage;
		
		//각페이지에서 보여질 시작번호
		//1페이지:0, 2페이지 5, 3페이지 10 ....
		startNum=(currentPage-1)*perPage;
		
		//각페이지당 출력할 시작번호 구하기 no
		//총글개수가 23이면 1페이지 23,2페이지는 18,3페이지는 13...
		no=totalCount-(currentPage-1)*perPage;	
		
		
		//페이지에서 보여질 글만 가져오기
		List<QuizBoardDto> list=dao.getPagingList(startNum, perPage);
	%>

<body>
<div style="margin: 30px; 30px; width: 800px;">
  	<button type="button" class="btn btn-outline-info"
  	onclick="location.href='quizform.jsp'"><i class="bi bi-pencil-fill"></i>글쓰기</button>
  	<button type="button" class="btn btn-outline-success"
  	onclick="location.href='quizimagelist.jsp'">사진확인모드</button>
  <br><br>
  <h6><b>총 <%=totalCount%>개의 게시글이 있습니다</b></h6>
  
  <table class="table table-bordered">
  	<caption align="top"><b>간단 게시판 목록</b></caption>
  	<tr>
  		<th width="60">번호</th>
  		<th width="360">제목</th>
  		<th width="100">작성자</th>
  		<th width="120">작성일</th>
  		<th width="60">조회</th>
  	</tr>
  	
  	<%
  	  if(list.size()==0)
  	  {%>
  	  	  <tr>
  	  	    <td colspan="5" align="center">
  	  	      <h6><b>등록된 게시글이 없습니다</b></h6>
  	  	    </td>
  	  	  </tr>
  	  <%}else
  		{
  		  
  		    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
  		  
  			for(int i=0;i<list.size();i++)
  			{
  				QuizBoardDto dto=list.get(i);
  				%>
  				<tr>
  				  <td align="center"><%=dto.getQ_num()%></td>
  				  <td><a href="contentview.jsp?num=<%=dto.getQ_num()%>"><%=dto.getTitle() %><img src="../upload/<%=dto.getImgname()%>" width="50px"></a></td>
  				  <td align="center"><%=dto.getWriter()%></td>
  				  <td align="center"><%=sdf.format(dto.getWriteday()) %></td>
  				  <td align="center"><%=dto.getReadcount() %></td>
  				</tr>
  			<%}
  		}
  	%>
  	 </table>
  	 
  	 <div>
  <ul class="pagination justify-content-center">
  
    <%
      //이전
      if(startPage>1)
      {%>
    	   <li>
    	   <a class="page-link" href="quizlist.jsp?currentPage=<%=startPage-perBlock%>" tabindex="-1" aria-disabled="true">이전</a>
    	   </li>
      <%}
    	
   		for(int pp=startPage; pp<=endPage; pp++)
   		{
   			if(pp==currentPage)
   			{%>
   				<li class="page-item active">
   				  <a class="page-link" href="quizlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
   				</li>
   			<%}else
   			{%>
   				<li>
   				   <a class="page-link" href="quizlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
   				</li>   
   			<%}
   		}
   		%>
   		   <% if(endPage<totalPage)
   		   {%>
   		   <li>
    	   <a class="page-link" href="quizlist.jsp?currentPage=<%=endPage+1%>" tabindex="+1" aria-disabled="true">다음</a>
    	   </li>
   			<%}
    		%>
    		
  </ul>
  
  </div>
  	</div>
</body>
</html>