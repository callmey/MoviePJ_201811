<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginOk</title>
</head>
<body>

	<jsp:useBean id="vo" class="bean.Memberbean" scope="session"></jsp:useBean>
	
	<jsp:setProperty property="memberid" name="vo" param="id"/>
	<jsp:setProperty property="memberpw" name="vo" param="pw"/>
	
	<jsp:getProperty property="memberid" name="vo" />
	<jsp:getProperty property="memberpw" name="vo" />
	
	<jsp:forward page="../head/nav.jsp"></jsp:forward>
</body>
</html>