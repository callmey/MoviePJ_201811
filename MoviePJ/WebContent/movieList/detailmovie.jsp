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
	html,body{
		height:100%;

	}
	#obj {
		background-color: white;
		padding: 50px;
		float: left;	
		width: 100%;
		height: 100%;
		overflow: scroll;	
	}
	.Div{		
		background-color: white;
		width: 80%;
		height: 100%;
   		position: absolute;
	}
	
	.cont {
		font-size : 14px;	
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
	.btn_area .btn_rsv {
		    width: 76px;
		    height: 26px;
		}
	.btn_area a {
	   	float: left;
	    overflow: hidden;
	    margin-right: 4px;
	    background: url(https://ssl.pstatic.net/static/movie/2012/09/sp_lst_btn.png) no-repeat;
	    text-indent: -99999em;
	}
	dt{
		float: left;
	}
	
	.Div1 h4 {
		font-size : 20px;
	}
	
	.Div1 .smr_ct {
		font-size : 16px;
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#menu02").removeClass("menu02");
		$("#menu02").addClass("menu02_on");
	});
	
	function doImgPop(img){ 
		 img1= new Image(); 
		 img1.src=(img); 
		 imgControll(img); 
		} 
		  
	function imgControll(img){ 
	 if((img1.width!=0)&&(img1.height!=0)){ 
	    viewImage(img); 
	  } 
	  else{ 
	     controller="imgControll('"+img+"')"; 
	     intervalID=setTimeout(controller,20); 
	  } 
	}

	function viewImage(img){ 
	 W=img1.width; 
	 H=img1.height; 
	 O="width="+W+",height="+H+",top=100,left=700,scrollbars=yes"; 
	 imgWin=window.open("","",O); 
	 imgWin.document.write("<html><head><title> 이미지상세보기 </title></head>");
	 imgWin.document.write("<body topmargin=0 leftmargin=0>");
	 imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
	 imgWin.document.close();
}
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
			<div class="cont">
			<img src="<%=vo.getImage() %>" style="cursor: pointer;" title ="클릭하시면 상세이미지가 나옵니다."onclick="doImgPop('<%=vo.getImage() %>')" />
		<br />		
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
				<div class="btn_area"><a class="btn_rsv">예매하기</a></div><br /><br />
			<hr />
			<h4><strong>줄거리</strong></h4>
			<p class="smr_ct"><%=vo.getSummary() %></p>
		
		</div>
		
	</div>
	</div>	
</body>
</html>
