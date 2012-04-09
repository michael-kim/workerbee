<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
 	<div class="container">
	 	<a class="brand" href="${ContextPath}">WorkerBee</a>
	 	<ul class="nav">
	 		<li class="divider-vertical"></li>
	 		<li class="<tiles:insertAttribute name='nav.groups' defaultValue=''/>">
	 			<a href="${ContextPath}/userGroups/list">Groups</a>
	 		</li>
	 		<li class="<tiles:insertAttribute name='nav.users' defaultValue=''/>">
	 			<a href="${ContextPath}/users/list">Users</a>
	 		</li>
	 		<li class="<tiles:insertAttribute name='nav.messages' defaultValue=''/>">
	 			<a href="<c:url value='/messageList' />">Messages</a>
	 		</li>
	 		<li class="<tiles:insertAttribute name='nav.tasks' defaultValue=''/>">
	 			<a href="<c:url value='/taskList' />">Tasks</a>
	 		</li>
	 		<li class="<tiles:insertAttribute name='nav.simpleform' defaultValue=''/>">
	 			<a href="${ContextPath}/simpleForm">SimpleForm</a>
	 		</li>
	 		<sec:authorize ifAllGranted="ROLE_ADMIN">
	 		<li class="dropdown">
	 			<a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin <b class="caret"></b></a>
	 			<ul class="dropdown-menu">
	 				<li><a href="#">User Admin</a></li>
	 				<li><a href="#">Configuration</a></li>
	 			</ul>
	 		</li>
		 	</sec:authorize>
	 	</ul>
	 	<sec:authorize ifAnyGranted="ROLE_ANONYMOUS">
	 	<ul class="nav pull-right">
	 		<li><a href="<c:url value='/login'/>">Login</a></li>
	 	</ul>
	 	</sec:authorize>
		<sec:authorize ifNotGranted="ROLE_ANONYMOUS">
	 	<ul class="nav pull-right">
	 		<li class="dropdown">
			    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><sec:authentication property="name" /> <b class="caret"></b></a>
			    <ul class="dropdown-menu">
			      <li><a href="#">Account Settings</a></li>
			      <li><a href="#">Edit Profile</a></li>
			      <li class="divider"></li>
			      <li><a href="<c:url value='/j_spring_security_logout'/>">Logout</a></li>
			    </ul>
		  	</li>
	 	</ul>
	 	<p class="navbar-text pull-right">Logged in as</p>
	 	</sec:authorize>
 	</div>
	</div>
</div><!-- /navbar -->