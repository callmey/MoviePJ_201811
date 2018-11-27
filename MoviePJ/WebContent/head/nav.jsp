<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav.jsp</title>
<link rel="stylesheet" href="../css/nav.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#menu01").click(function(){
			$("#menu02").removeClass("menu02_on");
			$("#menu05").removeClass("menu05_on");
			$("#obj").load("<%= request.getContextPath() %>/movieList/home.jsp");
			$("#menu01").removeClass("menu01");
			$("#menu01").addClass("menu01_on");
		});
		$("#menu02").click(function(){
			$("#menu01").removeClass("menu01_on");
			$("#menu05").removeClass("menu05_on");			
			$("#obj").load("<%= request.getContextPath() %>/movieList/nowMovie.jsp");
				$("#menu02").removeClass("menu02");
				$("#menu02").addClass("menu02_on");	
			});
		});
	
	/* function removeClass(controlIndex, classPrefix) {
		$("[class^=menu]")
		var classes = $("#"+controlIndex).attr("class").split(" ");
		$.each(classes, function(index) {
			if(classes[index].indexOf(classPrefix)==0) {
				$("#"+controlIndex).removeclass(classes[index]);
			}
		})
	} */
</script>
</head>
<body>
	<div class="nav" style="bottom : 0px;">
		<h1 id="H1">1조 영화</h1>

		<ul class="navi" id="navi">
			<li>
				<a title="영화홈" class="menu01" id="menu01"><strong>영화홈</strong></a>
			</li>
			<li>
				<a href="#" class="menu02" id="menu02" title="상영작·예정작">	
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
