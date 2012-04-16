<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>

<div class="page-header">
	<h1>Projects
		<small>Projects</small>
	</h1>
</div>
<ul class="breadcrumb">
  <li>Projects</li>
  <li class="active">${project.name}</li>
</ul>
<div class="btn-toolbar">
	<div class="btn-group">
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<a class="btn btn-small" href="add"><i class="icon-plus"></i>&nbsp;Add Project</a>
		</sec:authorize>
	</div>
</div>
<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Project Name</th>
			<th>Description</th>
			<th style="width:150px">Actions</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${projects}" var="project">
		<tr>
			<td><a href="${ContextPath}/taskgroups/list?projectId=${project.id}">${project.name}</a></td>
			<td>${project.description}</td>
			<td>
				<sec:authorize ifAllGranted="ROLE_ADMIN">
				<div class="btn-group">
				<a class="btn btn-mini" href="edit?projectId=${project.id}"><i class="icon-pencil"></i>&nbsp;Edit</a>&nbsp;
				<a class="btn btn-mini btn-danger" href="delete?projectId=${project.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete</a>
				</div>
				</sec:authorize>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
