<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav.jsp</title>
<!-- <link rel="stylesheet" href="../css/nav.css" /> -->
<style type="text/css">
	body{
		background-color: rgb(133,133,133);
	}
	
	.nav{		
		/*width: 148px;
		height: 694px;
		background-color: rgb(43,43,43);	
		float: left;	*/
		margin-left: 220px;
		position: fixed;
	    top: 0;
	    bottom: 0;
	    z-index: 10000;
	    width: 148px;
	    border-left: 1px solid #212121;
	    border-right: 1px solid #212121;
	    background: #2b2b2b;
	    min-height: 100%;
	    text-align: left;
	    position: absolute;
	    left: 0;
	    z-index: auto;
	}

	#H1{
		margin-left: 12px;
		color: white;
	}


	.navi{
		list-style: none;
		margin-left:-40px;
	}

	a{
		text-decoration: none;
	}

	.navi>li>a {
	    display: block;
	    overflow: hidden;
	    height: 39px;
	    background: url(https://ssl.pstatic.net/static/movie/2013/10/sp_nav.png) no-repeat;
	    vertical-align: top;
	}


	.navi>li>a>strong {
    display: block;
    text-indent: -9999px;
	}

	.navi>li>a.menu01 {
    background-position: 0 0;
	}

	.navi>li>a.menu01_on {
    background-position: -150px 0;
	}
	.navi>li>a.menu02 {
	    background-position: 0 -39px;
	}
	.navi>li>a.menu02_on {
    	background-position: -150px -39px;
	}

	.navi_sub {
		list-style: none;
	}

	.navi>li ul.navi_sub {
    padding: 2px 0 12px 15px;
    border-bottom: 1px solid #2c2c2c;
    background: #474747;
	}

	.navi>li ul.navi_sub li a {
	    display: block;
	    overflow: hidden;
	    width: 120px;
	    height: 15px;
	    margin-top: 9px;
	    background: url(https://ssl.pstatic.net/static/movie/2016/03/sp_nav2.png) no-repeat -9999px -9999px;
	}

	.navi>li ul.navi_sub li a.sub2_1_on{background-position:-150px 0}

	.navi>li ul.navi_sub li a em {
	    display: block;
	    text-indent: -9999px;
	}
	.navi>li>a.menu05 {
    background-position: 0 -156px;
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#menu01").click(function(){
			//alert("dkssud");
			$("#obj").load("<%= request.getContextPath() %>/movieList/home.jsp");
			$("#menu01").removeClass("menu01");
			$("#menu01").addClass("menu01_on");
		});
		$("#menu02").click(function(){
			$("#obj").load("nowMovie.jsp");
				$("#menu02").removeClass("menu02");
				$("#menu02").addClass("menu02_on");	
			});
		});
</script>
</head>
<body>
	<div class="nav" style="bottom : 0px;">
		<h1 id="H1">1조 영화</h1>

		<ul class="navi">
			<li>
				<a title="영화홈" class="menu01" id="menu01"><strong>영화홈</strong></a>
			</li>
			<li>
				<a href="#" class="menu02" title="상영작·예정작">	
					<strong>상영작·예정작</strong>
				</a>		
				<ul class="navi_sub" id="navi_movie" style="display: block;">
                    <li><a href="#" title="현재 상영영화" class="sub2_1_on"><em>현재 상영영화</em></a></li>
                </ul>
			</li>
			<li><a href="#" title="예매" class="menu05"><strong>예매</strong></a></li>
		</ul>
	</div>
	<div id="obj"></div>
</body>
</html>
