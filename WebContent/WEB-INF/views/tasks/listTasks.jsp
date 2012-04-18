<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div class="page-header">
	<h1>Tasks
		<small>Tasks</small>
	</h1>
</div>
<ul class="breadcrumb">
  <li><a href="${ContextPath}/projects/list">Projects</a> <span class="divider">/</span></li>
  <li><a href="${ContextPath}/taskgroups/list?projectId=${taskGroup.project.id}">${taskGroup.project.name}</a> <span class="divider">/</span></li>
  <li class="active">${taskGroup.name}</li>
</ul>
<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_USER">
<div class="btn-toolbar">
	<div class="btn-group">
	  <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
	    <i class="icon-plus"></i>&nbsp;&nbsp;Add Task
	    <span class="caret"></span>
	  </a>
	  <ul class="dropdown-menu">
	  	<li><a href="addHiveTask?taskGroupId=${taskGroup.id}">Hive Task</a></li>
	  	<li><a href="addJdbcTask?taskGroupId=${taskGroup.id}">JDBC Task</a></li>
	  	<li><a href="addSshTask?taskGroupId=${taskGroup.id}">SSH Task</a></li>
	  	<li><a href="#">HDFS Task</a></li>
	  	<li><a href="#">Sqoop Task</a></li>
	  	<li><a href="#">RHive Task</a></li>
	  	<li class="divider"></li>
	  	<li><a href="#">External Task</a></li>
	  </ul>
	</div>
</div>
</sec:authorize>
<p>Displaying tasks ${pager.firstResultNum} to ${pager.lastResultNum} of ${pager.totalResults} </p>
<table class="table table-striped table-bordered">
	<thead>
	<tr>
		<th style="width:40px">Key</th>
		<th>Name</th>
		<th>Summary</th>
		<th>Type</th>
		<th>Modified</th>
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<th style="width:150px">Actions</th>
		</sec:authorize>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${tasks}" var="task">
	<tr>
		<td>${task.id}</td>
		<td><a href="view?taskId=${task.id}">${task.name}</a></td>
		<td>${task.summaryText}</td>
		<td>${task.taskType}</td>
		<td>${task.modified}</td>
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<td>
		<div class="btn-group">
		<a class="btn btn-mini" href="edit?taskId=${task.id}"><i class="icon-pencil"></i>&nbsp;Edit&nbsp;</a>
		<a class="btn btn-mini btn-danger" href="delete?taskId=${task.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete&nbsp;</a>
		</div>
		</td>
		</sec:authorize>
	</tr>
	</c:forEach>
	</tbody>
</table>
<c:set var="pageBaseUrl" value="list?taskGroupId=${taskGroup.id}&" />
<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
