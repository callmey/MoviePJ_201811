<%@page import="vo.MovieVO"%>
<%@page import="dao.MovieDBDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detailmovie.jsp</title>
<style type="text/css">
	.Div{		
		background-color: white;
		width: 800px;
		height:694px;
   		position: absolute;
	}
	.Div1{
		margin-left: 90px;
		float: left;	
		width: 600px;	
	}
	img{		
		margin-left: 100px;
		width: 200px;
		height:300px;	
		float: right;					
	}
	#btn1{
		border: 1px solid blue;		
		background-color: rgb(73,138,210);
	}
	#btn2{
		border: 1px solid pink;	
		background-color: rgb(239,81,81);
	}
	dt{
		float: left;
	}
</style>
<script type="text/javascript">
	$(function() {
		$("#menu02").removeClass("menu02");
		$("#menu02").addClass("menu02_on");
	});
</script>
</head>
<body>
<jsp:include page="../head/nav.jsp"></jsp:include>
<%
	MovieDBDAO dao = new MovieDBDAO();
	MovieVO vo = new MovieVO();

	String id = request.getParameter("mid");
	
	if(id!=null) {
		int mid = Integer.parseInt(id);
		vo = dao.getData(mid);
	}else {
		response.sendRedirect("../movieList/nowMovie.jsp");
	}

%>
	<div id="obj">
	<div class="Div">
		<div class="Div1">
			<h2><%= vo.getName()%>
				<a href="nowMovie.jsp"><input type="button" value="상영중" id="btn1"/></a>			
			</h2>
			<hr />
			<div>
			<img src="<%=vo.getImage() %>" alt="이미지받아옴" />	
			<dl>
				<dt>개요</dt>
				<dd><%=vo.getOutline() %></dd>
				<dt>감독</dt>
				<dd><%=vo.getDirector() %></dd>
				<dt>출연</dt>
				<dd><%=vo.getActor() %></dd>
				<dt>등급</dt>
				<dd><%=vo.getFilmrate() %></dd>
				<dt>흥행</dt>
				<dd><%=vo.getHighlight() %></dd>			
			</dl>
			</div>
				<input type="button" value="예매하기" id="btn2"/><br /><br />
			<hr />
			줄거리
			<p><%=vo.getSummary() %></p>
		
		</div>
		
	</div>
	</div>	
</body>
</html>
