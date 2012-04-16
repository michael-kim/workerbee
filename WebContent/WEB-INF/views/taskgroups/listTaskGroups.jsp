<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>

<div class="page-header">
	<h1>Task Groups
		<small>Task Groups</small>
	</h1>
</div>
<ul class="breadcrumb">
  <li>
    <a href="${ContextPath}/projects/list">Projects</a> <span class="divider">/</span>
  </li>
  <li class="active">${project.name}</li>
</ul>
<div class="row">
<div class="span3">
 	<div class="well" style="padding: 8px 0;">
	<ul class="nav nav-list">
	  <li class="nav-header">
	  Projects
	  </li>
	  <c:forEach items="${projects}" var="proj">
	  <c:if test="${project.id==proj.id}"><li class="active"></c:if>
	  <c:if test="${project.id!=proj.id}"><li></c:if>
	  <a href="list?projectId=${proj.id}">${proj.name}</a></li>
	  </c:forEach>
	</ul>
	</div><!-- /well -->
</div><!-- /span3 -->
<div class="span9">

<div class="btn-toolbar">
	<div class="btn-group">
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<a class="btn btn-small" href="add?projectId=${project.id}"><i class="icon-plus"></i>&nbsp;Add TaskGroup</a>
		</sec:authorize>
	</div>
</div>
<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th style="width:120px">Actions</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${taskGroups}" var="taskGroup">
		<tr>
			<td><a href="${ContextPath}/tasks/list?taskGroupId=${taskGroup.id}">${taskGroup.name}</a></td>
			<td>${taskGroup.description}</td>
			<td>
				<sec:authorize ifAllGranted="ROLE_ADMIN">
				<div class="btn-group">
				<a class="btn btn-mini" href="edit?taskGroupId=${taskGroup.id}"><i class="icon-pencil"></i>&nbsp;Edit</a>&nbsp;
				<a class="btn btn-mini btn-danger" href="delete?taskGroupId=${taskGroup.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete</a>
				</div>
				</sec:authorize>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<c:set var="pageBaseUrl" value="list?projectId=${project.id}&" />
<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
</div><!-- /span9 -->
</div><!-- /row -->