<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<script type="text/javascript" src="<c:url value='/resources/codemirror-2.23/lib/codemirror.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/codemirror-2.23/mode/mysql/mysql.js'/>"></script>
<link href="<c:url value='/resources/codemirror-2.23/lib/codemirror.css'/>" rel="stylesheet">
<script type="text/javascript">
$(document).ready(function(){
	var myCodeMirror= CodeMirror.fromTextArea($('#codemirror').get(0),{
        lineNumbers: true,
        matchBrackets: true,
        indentUnit: 4,
        onCursorActivity: function() {
            myCodeMirror.setLineClass(hlLine, null, null);
            hlLine = myCodeMirror.setLineClass(myCodeMirror.getCursor().line, null, "activeline");
        }
	});
	var hlLine = myCodeMirror.setLineClass(0, "activeline");
});
</script>
<c:set var="task" value="${jdbcTask}" />
<form:form method="post" cssClass="form-horizontal" action="editjdbc" modelAttribute="jdbcTask">
	<fieldset>
		<legend>Edit Jdbc Task</legend>
<%@ include file="/WEB-INF/views/tasks/taskCommonFields.jsp"%>
		<div class="control-group">
			<label class="control-label">URL</label>
			<div class="controls">
				<form:input path="url" />
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
