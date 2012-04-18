<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><tiles:getAsString name="title"/></title>
    <link href="<c:url value='/resources/css/root-style.css'/>" rel="stylesheet">
	<link href="<c:url value='/resources/css/reset.css'/>" rel="stylesheet">
    <link rel="shortcut icon" href="<c:url value='/resources/favicon.ico'/>" type="image/x-icon" />
    <link href="<c:url value='/resources/bootstrap/css/bootstrap.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/css/subnav.css'/>" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
    <script type="text/javascript" src="<c:url value='/resources/jquery/jquery-1.7.2.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>"></script>
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/layout/navbar.jsp"%>
<div class="container">
<div class="row">
<div class="span2">
	<%@ include file="/WEB-INF/views/layout/adminNav.jsp"%>
</div><!-- /span2 -->
<div class="span10">
	<tiles:insertAttribute name="body"/>
</div><!-- /span -->
</div><!-- /row -->
</div><!-- /containter -->
</body>
</html>
