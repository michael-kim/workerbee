<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div class="row">
<div class="span2">
	<div class="well" style="padding: 8px 0;">
		<ul class="nav nav-list">
		  <li class="active">
		  	<a href="#">General</a>
		  </li>
		  <li><a >Notifications</a></li>
		</ul>
	</div><!-- /well -->
	</div><!-- /span2 -->
<div class="span10">
	<div class="page-header">
		<h1>General Account Settings</h1>
	</div>
	<table class="table table-bordered">
		<tbody>
		<tr>
			<th style="width:100px">Username</th>
			<td colspan="2">${user.username}</td>
		</tr>
		<tr>
			<th>Name</th>
			<td>${userProfile.firstName} ${userProfile.lastName}</td>
			<td><a href="${ContextPath}/settings/name">Edit</a></td>
		</tr>
		<tr>
			<th>Email</th>
			<td>${userProfile.email}</td>
			<td><a href="#">Edit</a></td>
		</tr>
		<tr>
			<th>Password</th>
			<td></td>
			<td><a href="#">Edit</a></td>
		</tr>
		<tr>
			<th>Language</th>
			<td></td>
			<td><a href="#">Edit</a></td>
		</tr>
		</tbody>
	</table>
</div><!-- /span -->
</div><!-- /row -->
