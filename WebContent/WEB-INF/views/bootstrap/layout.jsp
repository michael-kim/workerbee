<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><tiles:getAsString name="title"/></title>
    <link href="<c:url value='/resources/bootstrap/css/bootstrap.css'/>" rel="stylesheet">

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
<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
 	<div class="container">
	 	<a class="brand" href="#">WorkerBee</a>
	 	<ul class="nav">
	 		<li class="active"><a href="#">link1</a></li>
	 		<li class="divider-vertical"></li>
	 		<li><a href="#">link2</a></li>
	 		<li><a href="#">link3</a></li>
	 	</ul>
	 	<p class="navbar-text pull-right">Logged in as <a href="#">username</a></p>
	 	<ul class="nav pull-right">
	 		<li class="dropdown" id="menu1">
			    <a class="dropdown-toggle" data-toggle="dropdown" href="#menu1">Dropdown
			    	<b class="caret"></b></a>
			    <ul class="dropdown-menu">
			      <li><a href="#">Action</a></li>
			      <li><a href="#">Another action</a></li>
			      <li><a href="#">Something else here</a></li>
			      <li class="divider"></li>
			      <li><a href="#">Separated link</a></li>
			    </ul>
		  	</li>
	 	</ul>
 	</div>
	</div>
</div><!-- /navbar -->
<div class="container">
	<div class="btn-group">
	  <button class="btn">1</button>
	  <button class="btn">2</button>
	  <button class="btn">3</button>
	</div>
	<tiles:insertAttribute name="body"/>
</div><!-- /containter -->
</body>
</html>
