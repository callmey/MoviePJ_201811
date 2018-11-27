<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		body {
		    background: #727272 url(https://ssl.pstatic.net/static/movie/2012/06/body_bg.png) repeat;
		    text-align: center;
		}

		body, input, textarea, select, button, table {
			font-family: '나눔고딕',NanumGothic,'돋움',Dotum,Helvetica,AppleSDGothicNeo-Medium,AppleGothic,sans-serif;
   			font-size: 12px;
		}
		ul {
			list-style: none;
		}
		h3 .title{
			padding: 5px 0 0 55px;
		}

		

		.view {
			position: absolute !important;
			right: 55px; 
			top: 32px;
			z-index:10;
			margin: 0 !important;
		}

		.view_sort {
			overflow: hidden;
		}

		.view_sort li{
			float: left;
		}

		.view_sort li a {
			display:block;
			overflow:hidden;
			width:69px;
			height:26px;
			background:url(https://ssl.pstatic.net/static/movie/2012/09/sp_sorting.png) no-repeat;
			text-indent:-99999em;
		}

		.view_sort .item1 {
			background-position:0 0;
		}

		.view_sort .item2 {
			background-position:-72px 0;
		}

		.view_sort li .on a {
			position:relative;
			width:70px;
		}

		.view_sort li .on .item1 {
			margin-right:-1px;
			background-position:0 -30px;
		}

		.view_sort li .on .item2 {
			margin-left:-1px;
			background-position:-72px -30px;
		}

		.tab_order {zoom:1;}
		.tab_order:after{
			display:block;
			clear:both;
			content:'';
		}
		.tab_order li{
			float:left;
			margin-right:14px;
		}
		.tab_order li a{
			display:block;
			overflow:hidden;
			float:left;
			width:42px;
			height:12px;
			background:url(https://ssl.pstatic.net/static/movie/2012/09/sp_sorting2.png) no-repeat;
			text-indent:-99999em;
		}
		.tab_order .item1{background-position:0 -80px;}
		.tab_order li.on .item1{background-position:0 -60px;}
		.tab_order .item2{background-position:-50px -80px;}
		.tab_order li.on .item2{background-position:-50px -60px;}
		.tab_order .item3{background-position:-100px -80px;}
		.tab_order li.on .item3{background-position:-100px -60px;}
		.tab_order .item4{background-position:0 -120px;}
		.tab_order li.on .item4{background-position:0 -100px;}
		.tab_order .item5{background-position:-50px -120px;}
		.tab_order li.on .item5{background-position:-50px -100px;}
		.tab_order .item6{width:52px;background-position:-150px -80px;}
		.tab_order li.on .item6{background-position:-150px -60px;}
		/*.tab_order .item7{width:63px;background-position:-210px -80px;}
		.tab_order li.on .item7{background-position:-210px -60px;}*/
		.tab_t1{position:relative;margin-top:15px!important;z-index:10;}
		.tab_t1 .tab_order{position:absolute;right:-14px;top:13px;}
		.tab1{height:37px;border-top:2px solid #1f2026;border-bottom:1px solid #c7c7c9;}
		.tab1 li{float:left;}
		.tab1 li a{display:block;overflow:hidden;width:86px;height:37px;margin-right:-1px;background:url(https://ssl.pstatic.net/static/movie/2012/09/sp_tab2.png;) no-repeat;text-indent:-99999em;}
		.tab1 li.on a{position:relative;margin-bottom:-1px;border-bottom:1px solid #656565;}
		.tab1 li .item1{background-position:0 0;}
		.tab1 li.on .item1{background-position:-100px 0;}
		.tab1 li .item2{background-position:0 -40px;}
		.tab1 li.on .item2{background-position:-100px -40px;}
		.tab1 li .item3{background-position:0 -80px;}
		.tab1 li.on .item3{background-position:-100px -80px;}
		.tab1 li .item4{background-position:0 -120px;}
		.tab1 li.on .item4{background-position:-100px -120px;}
		.tab1 li .item5{background-position:0 -160px;}
		.tab1 li.on .item5{background-position:-100px -160px;}
		.tab1 li .item6{width:113px;background-position:0 -200px;}
		.tab1 li.on .item6{width:113px;background-position:0 -240px;}
		.obj_section {
			position: relative;
    		width: 775px;
    		padding: 25px 0 30px;
    		background-color: #fff;
		}
		.lst_wrap ~ .paging{margin-top:20px!important;}
		.lst_wrap+.lst_wrap{margin-top:4px!important;padding-top:4px;border-top:2px solid #b7b7b7;margin-top:-1px!important;}
		.lst_wrap+.lst_wrap:after{display:block;position:absolute;top:-7px;left:0;width:665px;height:5px;background:#fff;content:'';}
		.lst_detail_t1{clear:both;padding-bottom:1px;background:url(https://ssl.pstatic.net/static/movie/2012/08/dot_line2.gif) repeat-x 0 100%;}
		.lst_detail_t1 li{overflow:hidden;padding:15px 0 15px}
		.lst_detail_t1 li+li{padding-top:16px;background:url(https://ssl.pstatic.net/static/movie/2012/08/dot_line2.gif) repeat-x;}
		.lst_detail_t1 .thumb{float:left;width:99px;margin-right:19px;}
		.lst_detail_t1 .thumb img{vertical-align:top;}
		.lst_detail_t1 .lst_dsc{float:left;width:546px;margin-top:-4px;vertical-align:top;}
		.lst_dsc>.tit{overflow:hidden;padding-bottom:2px;font-size:17px;line-height:24px;letter-spacing:-1px;font-weight:bold;white-space:nowrap;text-overflow:ellipsis;}
		.lst_dsc .tit a{color:#000;}
		.lst_dsc .tit a:hover{text-decoration:none;color:#004cbb;}
		.lst_dsc .tit .ico_t1{margin:5px 0 0 6px;vertical-align:top;}
		.lst_dsc .tit [class^=icon_rate]{margin-right:8px;}
		.lst_dsc .info_txt1{overflow:hidden;}
		.lst_dsc .info_txt1 dt{float:left;clear:both;overflow:hidden;width:31px;height:18px;margin-top:1px;background:url(https://ssl.pstatic.net/static/movie/2014/02/sp_lst_tit.png) no-repeat;text-indent:-99999em;}
		.lst_dsc .info_txt1 .tit_t1{background-position:-110px 0;}
		.lst_dsc .info_txt1 .tit_t2{background-position:-150px 0;}
		.lst_dsc .info_txt1 .tit_t3{background-position:-190px 0;}
		.lst_dsc .info_txt1 dd{overflow:hidden;margin:2px 0 0 31px;line-height:18px;font-size:13px;color:#333;}
		.lst_dsc .info_txt1 dd a{white-space:nowrap;}
		.lst_dsc .info_txt1 dd .split{margin:0 5px;font-family:dotum,sans-serif;font-size:13px;color:#dedede;}
		.lst_dsc .info_t1{overflow:hidden;margin-top:11px;}
		.lst_dsc .btn_area .btn_rsv {
		    width: 76px;
		    height: 26px;
		}
		.lst_dsc .btn_area a {
		   	float: left;
		    overflow: hidden;
		    margin-right: 4px;
		    background: url(https://ssl.pstatic.net/static/movie/2012/09/sp_lst_btn.png) no-repeat;
		    text-indent: -99999em;
		}
		.lst_detail_t1 .lst_dsc {
		    float: left;
		    width: 546px;
		    margin-top: -4px;
		    vertical-align: top;
		}
	</style>
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
						<li>
							<div class="thumb"><img src=""></div>
							<dl class="lst_dsc">
								<dt class="tit">
									<span class="icon_rate"></span>
									<a href="#">영화제목</a>
								</dt>
								<dd>
									<dl class=info_txt1>
										<dt class="tit_t1">개요</dt>
										<dd><span class="summary">모험,가족, 판타지 등등...</span><span class="split">|</span>영화시간<span class="split">|</span>개봉날짜</dd>
										<dt class="tit_t2">감독</dt>
										<dd><span class="director">감독이름 나오는 곳</span></dd>
										<dt class="title_t3">출연</dt>
										<dd class="actor">출연배우 이름 나오는 곳</dd>
									</dl>
								</dd>
								<dd class="info_t1">
									<div class="btn_area"><a class="btn_rsv">예매하기</a></div>
								</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>
</div>
</body>
</html>