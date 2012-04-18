<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<c:if test="${task.taskType=='HIVE'||task.taskType=='JDBC'}">
<%@ include file="/WEB-INF/views/tasks/codeMirrorReadOnly.jsp"%>
</c:if>
<ul class="breadcrumb">
  <li><a href="${ContextPath}/projects/list">Projects</a> <span class="divider">/</span></li>
  <li><a href="${ContextPath}/taskgroups/list?projectId=${task.taskGroup.project.id}">${task.taskGroup.project.name}</a> <span class="divider">/</span></li>
  <li><a href="${ContextPath}/tasks/list?taskGroupId=${task.taskGroup.id}">${task.taskGroup.name}</a> <span class="divider">/</span></li>
  <li class="active">${task.name}</li>
</ul>
<div class="btn-toolbar">
	<div class="btn-group">
		<a class="btn btn-small" href="list?taskGroupId=${task.taskGroup.id}"><i class="icon-arrow-left"></i> List</a>
	</div>
	<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_USER">
	<div class="btn-group pull-right">
		<a class="btn btn-small" href="edit?taskId=${task.id}"><i class="icon-pencil"></i>&nbsp;Edit&nbsp;</a>
		<a class="btn btn-small btn-danger" href="delete?taskId=${task.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete&nbsp;</a>
	</div>
	</sec:authorize>
</div>
<table class="table table-bordered">
	<tbody>
		<tr><th style="width:100px">Key</th><td>${task.id}</td></tr>
		<tr><th>Name</th><td>${task.name}</td></tr>
		<tr><th>Description</th><td>${task.description}</td></tr>
		<tr><th>Type</th><td>${task.taskType}</td></tr>
		<tr><th>Modified</th><td>${task.modified}</td></tr>
		<c:if test="${task.taskType=='HIVE'}">
		<tr><th>Hive Query</th><td><textarea id="codemirror">${task.query}</textarea></td></tr>
		</c:if>
		<c:if test="${task.taskType=='SSH'}">
		<tr><th>Host</th><td>${task.host}</td></tr>
		<tr><th>Username</th><td>${task.username}</td></tr>
		<tr><th>Password</th><td>${task.password}</td></tr>
		<tr><th>Command</th><td>${task.command}</td></tr>
		</c:if>
		<c:if test="${task.taskType=='JDBC'}">
		<tr><th>URL</th><td>${task.url}</td></tr>
		<tr><th>Username</th><td>${task.username}</td></tr>
		<tr><th>Password</th><td>${task.password}</td></tr>
		<tr><th>Query</th><td><textarea id="codemirror">${task.query}</textarea></td></tr>
		</c:if>
	</tbody>
</table>

<div class="tabbable">
  <ul class="nav nav-tabs">
    <li class="active"><a href="#tabComments" data-toggle="tab">Comments</a></li>
    <li><a href="#tabActivities" data-toggle="tab">Activity</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="tabComments">
    	<div id="divComment">
		    <%@ include file="/WEB-INF/views/taskcomments/listTaskComments.jsp"%>
    	</div>
    </div>
    <div class="tab-pane" id="tabActivities">
      <p>Now, Not support yet.</p>
    </div>
  </div>
</div>

