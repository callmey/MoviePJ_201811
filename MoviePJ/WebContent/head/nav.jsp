<%@page import="bean.Memberbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav.jsp</title>
<link rel="stylesheet" href="../css/nav.css?after" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#menu01").click(function(){
			$("#menu02").removeClass("menu02_on");
			$("#menu05").removeClass("menu05_on");
			$("#menu01").removeClass("menu01");
			$("#menu01").addClass("menu01_on");
		});
		$("#menu02").click(function(){
			$("#menu01").removeClass("menu01_on");
			$("#menu05").removeClass("menu05_on");			
				$("#menu02").removeClass("menu02");
				$("#menu02").addClass("menu02_on");	
				
			});
		$("#navi_movie").click(function(){
			$("#menu01").removeClass("menu01_on");
			$("#menu05").removeClass("menu05_on");			
				$("#menu02").removeClass("menu02");
				$("#menu02").addClass("menu02_on");	
			});
		});
	
</script>
<style type="text/css">

	.btn {
		    position: relative;
		    z-index: 2147483646;
		    font-family: '나눔고딕',NanumGothic,'돋움',Dotum,'Apple SD Gothic Neo',Helvetica,Sans-serif !important;
		    color: #444;
		    font-size: 12px;
		    letter-spacing: 0 !important;
		    line-height: normal !important;
		    text-align: left !important;
		    float: right;
    		right: 600px;
	}

    .btn .txt {
	    position: absolute;
	    top: 0;
	    left: -200px;
	    width: 45px;
	    height: 20px;
	    padding-left: 1px;
	    line-height: 21px;
	    color: #777;
	    text-align: center;
	    
    }
    .gnb_login_li {
    	height: 23px;
    	padding: 5px 7px 0 0;
    }
    .gnb_btn_login {
    	display: inline-block;
	    width: 45px;
	    height: 20px;
	    font-size: 12px;
	    border: 1px solid #444;
    	border-radius: 1px;
    }
    .gnb_btn_logout {
    	display: inline-block;
	    height: 20px;
	    font-size: 12px;
	    padding-right: 4px;
	    border: 1px solid #444;
    	border-radius: 1px;
    }
    
    .gnb_login_li {
    	color: #444;
    	cursor: pointer;
    	
    }
    .gnb_txt {
	    top: 10;
	    left: 0;
	    width: 45px;
	    height: 20px;
	    padding-left: 5px;
	    line-height: 21px;
	    color: white;
	    text-align: center;
    }
    
    .gnb_lst {
    	margin: 0;
	    padding: 0;
	   
    }
    
    .gnb_btn_login {
    	border: 1px solid #444;
    	border-radius: 1px;
    }
</style>
</head>
<body>
<%
	Object obj = session.getAttribute("vo");
	
	if(obj!=null) {
		Memberbean mb = (Memberbean)obj;
	} else {
		Memberbean mb = new Memberbean();
	}
%>
<jsp:useBean id="vo" class="bean.Memberbean" scope="session"></jsp:useBean>

	<div class="btn">
	<ul class="gnb_lst" style="display: black;">
		<li class="gnb_login_li" id="gnb_login_layer" style="display: inline-block;">
			
			<% if(vo.getMemberid()==null&&vo.getMemberpw()==null) {
				out.println("<a class='gnb_btn_login' href='../login/login.jsp' id='gnb_login_button'>");
				out.println("<span class='gnb_txt'>로그인</span></a>");
			}else {
			%>
			<span>
				<jsp:getProperty property="memberid" name="vo"/> 님 환영합니다.
			</span>
			<% 
				out.println("<a class='gnb_btn_logout' href='../login/logout.jsp' id='gnb_login_button'>");
				out.println("<span class='gnb_txt'>로그아웃</span></a>");
			}
			%>

		</li>
	</ul>
	</div>
	<div class="nav" style="bottom : 0px;">
		<h1 id="H1">1조 영화</h1>

		<ul class="navi" id="navi">
			<li>
				<a href="<%= request.getContextPath() %>/movieList/home.jsp" title="영화홈" class="menu01" id="menu01"><strong>영화홈</strong></a>
			</li>
			<li>
				<a href="<%= request.getContextPath() %>/movieList/nowMovie.jsp" class="menu02" id="menu02" title="상영작·예정작">	
					<strong>상영작·예정작</strong>
				</a>		
				<ul class="navi_sub" id="navi_movie" style="display: block;">
                    <li><a href="<%= request.getContextPath() %>/movieList/nowMovie.jsp" title="현재 상영영화" class="sub2_1_on"><em>현재 상영영화</em></a></li>
                </ul>
			</li>
			<li><a href="#" title="예매" class="menu05"><strong>예매</strong></a></li>
		</ul>
	</div>
</body>
</html>
