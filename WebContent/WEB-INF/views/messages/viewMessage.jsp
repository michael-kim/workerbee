<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div class="page-header">
	<h1>View Message
		<small>Message</small>
	</h1>
</div>
<div class="btn-toolbar">
	<div class="btn-group">
		<a class="btn" href="list"><i class="icon-arrow-left"></i> List</a>
	</div>
	<div class="btn-group pull-right">
		<a class="btn btn-small" href="edit?messageId=${message.id}"><i class="icon-pencil"></i>&nbsp;Edit&nbsp;</a>
		<a class="btn btn-small btn-danger" href="delete?messageId=${message.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete&nbsp;</a>
	</div>
</div>

<table class="table table-bordered">
	<tbody>
		<tr>
			<th style="width:100px">Title</th>
			<td>${message.title}</td>
		</tr>
		<tr>
			<th>Author</th>
			<td>${message.author.user.username}</td>
		</tr>
		<tr>
			<th>Created</th>
			<td>${message.created}</td>
		</tr>
		<tr>
			<th>Modified</th>
			<td>${message.modified}</td>
		</tr>
		<tr>
			<th>Body</th>
			<td><pre>${message.body}</pre></td>
		</tr>
	</tbody>
</table>
