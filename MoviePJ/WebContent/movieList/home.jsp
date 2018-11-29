<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>naver movie</title>
	<style type="text/css">

		table {
			overflow:hidden;
			position:relative;
			height:492px;
			padding: 40px;
			padding-top:30px;
			border:1px solid #000;
			background:url(https://ssl.pstatic.net/static/movie/2012/09/bg_home.png);
			border-bottom:0
		}

		tr {
			border: none;

		}

		td {
			padding-right: 10px;
		}

		

		
		#rate1, #rate2, #rate3,#rate4,#rate5,#rate6,#rate7,#rate8,#rate9,#rate10 {
			padding-left: 5px;
			color:#fff;
			font-weight:bold;
			vertical-align: top;
			padding-right: 10px;
		}

		#per1, #per2,#per3,#per4,#per5,#per6,#per7,#per8,#per9,#per10 {

			color: #FF4646;
			font-weight: bold;
			font-size: 14px;
		}

		.div1 {
			margin-top: -3px;
			padding-top: 3px;
			background-color: #000;
			width: 108px;
			border: 1px solid black;
			height:20px;
			filter:alpha(opacity=75);
			opacity:.75;
		
		}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#menu01").removeClass("menu01");
			$("#menu01").addClass("menu01_on");
		});
	</script>
</head>
<body>
<jsp:include page="../head/nav.jsp"></jsp:include>
	<div id="obj">
		<table>
			<tr>
				<td><img src="../Image/movie_image1.jpg" width="110px" height="140px"><div class="div1"><span id="rate1">예매율</span><span id="per1">27.75%</span></div></td>
	
				<td><img src="../Image/movie_image2.jpg" width="110px" height="140px"><div class="div1"><span id="rate2">예매율</span><span id="per2">20.13%</span></div></td>
	
				<td><img src="../Image/movie_image3.jpg" width="110px" height="140px"><div class="div1"><span id="rate3">예매율</span><span id="per3">19.14%</span></div></td>
	
				<td><img src="../Image/movie_image4.jpg" width="110px" height="140px"><div class="div1"><span id="rate4">예매율</span><span id="per4">11.34%</span></div></td>
	
				<td><img src="../Image/movie_image5.jpg" width="110px" height="140px"><div class="div1"><span id="rate5">예매율</span><span id="per5">6.64%</span></div></td>
	
			</tr>
			<tr>
				<td><img src="../Image/movie_image6.jpg" width="110px" height="140px"><div class="div1"><span id="rate6">예매율</span><span id="per6">2.40%</span></div></td>
	
				<td><img src="../Image/movie_image7.jpg" width="110px" height="140px"><div class="div1"><span id="rate7">예매율</span><span id="per7">2.21%</span></div></td>
	
				<td><img src="../Image/movie_image8.jpg" width="110px" height="140px"><div class="div1"><span id="rate8">예매율</span><span id="per8">1.76%</span></div></td>
	
				<td><img src="../Image/movie_image9.jpg" width="110px" height="140px"><div class="div1"><span id="rate9">예매율</span><span id="per9">1.10%</span></div></td>
	
				<td><img src="../Image/movie_image10.jpg" width="110px" height="140px"><div class="div1"><span id="rate10">예매율</span><span id="per10">1.06%</span></div></td>
	
			</tr>
		</table>
	</div>
</body>
</html>