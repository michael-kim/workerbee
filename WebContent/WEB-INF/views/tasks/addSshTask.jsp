<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<c:set var="task" value="${sshTask}" />
<a class="btn" href="list?taskGroupId=${task.taskGroup.id}"><i class="icon-arrow-left"></i> List</a>
<form:form method="post" cssClass="form-horizontal" modelAttribute="sshTask">
	<fieldset>
		<legend>Add Ssh Task</legend>
<%@ include file="/WEB-INF/views/tasks/editCommonFields.jsp"%>
		<div class="control-group">
			<label class="control-label">Host</label>
			<div class="controls">
				<form:input path="host"  cssClass="span5"/>
				<form:errors path="host" cssClass="alert alert-error" />
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
			<label class="control-label">Command</label>
			<div class="controls">
				<form:input path="command" cssClass="span8" />
				<form:errors path="command" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="form-actions">
			<input class="btn btn-primary" type="submit" value="Create" />
			<a class="btn" href="list?taskGroupId=${task.taskGroup.id}">Cancel</a>
		</div>
	</fieldset>
</form:form>
