<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<%@ include file="/WEB-INF/views/tasks/codeMirrorReadOnly.jsp"%>
<c:set var="task" value="${jdbcTask}" />
<a class="btn" href="list?taskGroupId=${task.taskGroup.id}"><i class="icon-arrow-left"></i> List</a>
<form:form method="post" cssClass="form-horizontal" action="editjdbc" modelAttribute="jdbcTask">
	<fieldset>
		<legend>Edit Jdbc Task</legend>
		<div class="control-group">
			<label class="control-label">Key</label>
			<div class="controls">
				<span class="input-large uneditable-input">${task.id}</span>
			</div>
		</div>
<%@ include file="/WEB-INF/views/tasks/editCommonFields.jsp"%>
		<div class="control-group">
			<label class="control-label">URL</label>
			<div class="controls">
				<form:input path="url" cssClass="span5"/>
				<form:errors path="url" cssClass="alert alert-error" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Username</label>
			<div class="controls">
				<form:input path="username" />
				<form:errors path="username" cssClass="alert alert-error" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Password</label>
			<div class="controls">
				<form:input path="password" />
				<form:errors path="password" cssClass="alert alert-error" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Query</label>
			<div class="controls">
				<form:textarea id="codemirror"  path="query" />
				<form:errors path="query" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="form-actions">
			<input class="btn btn-primary" type="submit" value="Save Changes" />
			<a class="btn" href="list?taskGroupId=${task.taskGroup.id}">Cancel</a>
		</div>
	</fieldset>
</form:form>
