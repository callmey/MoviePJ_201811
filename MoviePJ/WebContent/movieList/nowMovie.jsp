<%@page import="java.util.ArrayList"%>
<%@page import="vo.MovieVO"%>
<%@page import="dao.MovieDBDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="../css/movieList.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#title").on('click', function(){
				/* var mid = $("#mid").val();
				location.href = "detailOk.jsp?mid=" + mid; */
			 });
		});
	</script>
</head>
<body>
	<div id="container">
		<div class="article">
			<div class="obj_section">	
				<h3 class="title"><img src="https://ssl.pstatic.net/static/movie/2012/09/tit_movie1.png" width="120" height="24" alt="현재 상영영화"></h3>
				<div class="view">
					<ul class="view_sort">
						<li class="on">
							<a href="#" class="item1" title="리스트뷰">리스트뷰</a>
						</li>
						<li>
							<a href="#" class="item2" title="이미지뷰">이미지뷰</a>
						</li>
					</ul>
				</div>

				<div class="tab_t1">
					<ul class="tab1">
						<li class="on"><a href="#">상영영화</a></li>
					</ul>
					<ul class="tab_order">
						<li class="on"><a href="#" class="item2" title="예매순 정렬">예매순</a></li>	
						<li><a href="#" class="item1" title="개봉순 정렬">개봉순</a></li>
						<li><a href="#" class="item3" title="평점순 정렬">평점순</a></li>
						<li><a href="#" class="item6" title="좋아요순 정렬">좋아요순</a></li>
					</ul>
				</div>

				<div id="lst_wrap">
					<ul id="lst_detail_t1">
					<%
						MovieDBDAO dao = new MovieDBDAO();
						ArrayList<MovieVO> list = dao.SelectAll();
						
						for(MovieVO vo : list) {
					%>
					 <form action="#" name="frm">
						<input type="hidden" name="mid" value="<%=vo.getId() %>" />
						<input type="submit" value="" style="display:none" />
					</form> 
						<li>
							<div class="thumb"><img src="<%=vo.getImage()%>"></div>
							<dl class="lst_dsc">
								<dt class="tit">
									<span class="icon_rate"></span>
										<a href="#" id="title"><%=vo.getName() %></a>
								</dt>
								<dd>
									<dl class=info_txt1>
										<dt class="tit_t1">개요</dt>
										<dd><span class="summary"><%=vo.getOutline()%></dd>
										<dt class="tit_t2">감독</dt>
										<dd><span class="director"><%=vo.getDirector() %></span></dd>
										<dt class="title_t3">출연</dt>
										<dd class="actor"><%=vo.getActor() %></dd>
									</dl>
								</dd>
								<dd class="info_t1">
									<div class="btn_area"><a class="btn_rsv">예매하기</a></div>
								</dd>
							</dl>
						</li>
						<%
						}
						%>
					</ul>
				</div>
			</div>
		</div>
</div>
</body>
</html>