<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detailmovie.jsp</title>
<style type="text/css">
	.Div{		
		margin-left: 180px;
		background-color: white;
		width: 800px;
		height:694px;
	}
	.Div1{
		margin-left: 30px;
		float: left;	
		width: 300px;	
	}
	img{		
		margin-top: 30px;
		margin-left: 100px;
		width: 200px;
		height:300px;						
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
</head>
<body>
<jsp:include page="../movieList/mainmovie.jsp"></jsp:include>
	<div class="Div">
		<div class="Div1">
			<h2>이름들어올자리엄청길구나구나구나구ㅏㄴ구나구나구나구나구ㅏㄴㅁㄻㄴㄻㄴㄻㄴㄻㄴㄻㄴㄹㄴㅁㄹ
				<a href="nowMovie.jsp"><input type="button" value="상영중" id="btn1"/></a>			
			</h2>
			<hr />
			<dl>
				<dt>개요</dt>
				<dd>개요받아옴</dd>
				<dt>감독</dt>
				<dd>감독받아옴</dd>
				<dt>출연</dt>
				<dd>출연받아옴</dd>
				<dt>등급</dt>
				<dd>등급받아옴</dd>
				<dt>흥행</dt>
				<dd>흥행받아옴</dd>			
			</dl>
				<input type="button" value="예매하기" id="btn2"/><br /><br />
			<hr />
			줄거리
			<p>줄거리 받아올곳</p>
		
		</div>
		
		<img src="../Images/bul.jpg" alt="이미지받아옴" />	
		<br />
		
	</div>	
</body>
</html>
