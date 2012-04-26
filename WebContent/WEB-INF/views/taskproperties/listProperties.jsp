<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>

<div class="page-header">
	<h1>Task Properties
		<small>Global Properties</small>
	</h1>
</div>
<div class="btn-toolbar">
	<sec:authorize ifAllGranted="ROLE_USER">
	<div class="btn-group">
		<a class="btn" href="add"><i class="icon-plus"></i>&nbsp;Add Task Property</a>
	</div>
	</sec:authorize>
</div>
<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Name</th>
			<th>Value</th>
			<th>Description</th>
			<sec:authorize ifAllGranted="ROLE_ADMIN">
			<th style="width:200px">Actions</th>
			</sec:authorize>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${taskProperties}" var="taskProperty">
		<tr>
			<td>${taskProperty.name}</td>
			<td>${taskProperty.value}</td>
			<td>${taskProperty.description}</td>
			<sec:authorize ifAllGranted="ROLE_ADMIN">
			<td>
				<div class="btn-group">
				<a class="btn btn-mini" href="edit?taskPropertyId=${taskProperty.id}"><i class="icon-pencil"></i>&nbsp;Edi&nbsp;t</a>
				<a class="btn btn-mini btn-danger" href="delete?taskPropertyId=${taskProperty.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete</a>
				</div>
			</td>
			</sec:authorize>
		</tr>
	</c:forEach>
	</tbody>
</table>
<%@ include file="/WEB-INF/views/common/pagination.jsp"%>