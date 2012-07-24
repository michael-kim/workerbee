<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>

<div class="page-header">
	<h1>Projects
		<small>Projects</small>
	</h1>
</div>
<ul class="breadcrumb">
  <li>Projects</li>
</ul>
<div class="btn-toolbar">
	<sec:authorize ifAllGranted="ROLE_USER">
	<div class="btn-group">
		<a class="btn" href="add"><i class="icon-plus"></i>&nbsp;Add Project</a>
	</div>
	</sec:authorize>
	<sec:authorize ifAllGranted="ROLE_ADMIN">
	<div class="btn-group pull-right">
		<a class="btn btn-small btn-primary" href="runAll"><i class="icon-play icon-white"></i>&nbsp;Run All Projects</a>&nbsp;
	</div>
	</sec:authorize>
</div>
<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Project Name</th>
			<th>Description</th>
			<sec:authorize ifAllGranted="ROLE_ADMIN">
			<th style="width:200px">Actions</th>
			</sec:authorize>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${projects}" var="project">
		<tr>
			<td><a href="${ContextPath}/taskgroups/list?projectId=${project.id}">${project.name}</a></td>
			<td>${project.description}</td>
			<sec:authorize ifAllGranted="ROLE_ADMIN">
			<td>
				<div class="btn-group">
				<a class="btn btn-mini btn-primary" href="run?projectId=${project.id}"><i class="icon-play icon-white"></i>&nbsp;Run&nbsp;</a>
				<a class="btn btn-mini" href="edit?projectId=${project.id}"><i class="icon-pencil"></i>&nbsp;Edi&nbsp;t</a>
				<a class="btn btn-mini btn-danger" href="delete?projectId=${project.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete</a>
				</div>
			</td>
			</sec:authorize>
		</tr>
	</c:forEach>
	</tbody>
</table>
