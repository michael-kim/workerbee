<%@ include file="/WEB-INF/views/common/include.jsp"%>
<%@ page  isELIgnored="false" session="false" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body>
<div class="content">
	<tiles:insertAttribute name="body"/>
</div>
</body>
</html>	