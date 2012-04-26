<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<%@ include file="/WEB-INF/views/tasks/include/codeMirrorEditable.jsp"%>
<c:set var="task" value="${hiveTask}" />
<a class="btn" href="list?taskGroupId=${task.taskGroup.id}"><i class="icon-arrow-left"></i> List</a>
<form:form method="post" cssClass="form-horizontal"  action="edithive" modelAttribute="hiveTask">
	<fieldset>
		<legend>Edit Hive Task</legend>
		<div class="control-group">
			<label class="control-label">Key</label>
			<div class="controls">
				<span class="input-large uneditable-input">${task.id}</span>
			</div>
		</div>
<%@ include file="/WEB-INF/views/tasks/editCommonFields.jsp"%>
		<div class="control-group">
			<label class="control-label">Hive Query</label>
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
