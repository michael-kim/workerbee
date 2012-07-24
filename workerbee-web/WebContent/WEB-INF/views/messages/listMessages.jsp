<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div class="page-header">
	<h1>Messages
		<small>Messages</small>
	</h1>
</div>
<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_USER">
<div class="btn-toolbar">
	<div class="btn-group">
		<a class="btn" href="${ContextPath}/messages/post"><i class="icon-plus"></i>&nbsp;Add Post</a>
	</div>
</div>
</sec:authorize>
<p class="pull-right">
	Displaying messages ${pager.firstResultNum} to ${pager.lastResultNum} of ${pager.totalResults} 
</p>
<table class="table table-striped table-bordered">
	<thead>
	<tr>
		<th>Title</th>
		<th>Author</th>
		<th>Body</th>
		<th>Modified</th>
		<th>Created</th>
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<th style="width:150px">Actions</th>
		</sec:authorize>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${messages}" var="message">
	<tr>
		<td><a href="view?messageId=${message.id}">${message.title}</a></td>
		<td>${message.author.user.username}</td>
		<td>${fn:substring(message.body, 0, 10)}...</td>
		<td>${message.modified}</td>
		<td>${message.created}</td>
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<td>
		<div class="btn-group">
		<a class="btn btn-mini" href="edit?messageId=${message.id}"><i class="icon-pencil"></i>&nbsp;Edit&nbsp;</a>
		<a class="btn btn-mini btn-danger" href="delete?messageId=${message.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete&nbsp;</a>
		</div>
		</td>
		</sec:authorize>
	</tr>
	</c:forEach>
	</tbody>
</table>
<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
