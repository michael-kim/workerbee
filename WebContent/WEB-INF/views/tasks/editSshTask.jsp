<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<c:set var="task" value="${sshTask}" />
<form:form method="post" cssClass="form-horizontal" action="editssh" modelAttribute="sshTask">
	<fieldset>
		<legend>Edit Ssh Task</legend>
<%@ include file="/WEB-INF/views/tasks/taskCommonFields.jsp"%>
		<div class="control-group">
			<label class="control-label">Host</label>
			<div class="controls">
				<form:input path="host" />
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
				<form:input path="command" />
				<form:errors path="command" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="form-actions">
			<input class="btn btn-primary" type="submit" value="Save Changes" />
			<a class="btn" href="list?taskGroupId=${task.taskGroup.id}">Cancel</a>
		</div>
	</fieldset>
</form:form>
