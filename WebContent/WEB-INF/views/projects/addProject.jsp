<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<form:form method="post" cssClass="form-horizontal" modelAttribute="project">
	<fieldset>
		<legend>Add Project</legend>
		<div class="control-group">
			<label class="control-label">Name</label>
			<div class="controls">
				<form:input path="name" />
				<form:errors path="name" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Description</label>
			<div class="controls">
				<form:textarea path="description" />
				<form:errors path="description" cssClass="alert alert-error" />
			</div>
		</div>
		<div class="form-actions">
			<input class="btn btn-primary" type="submit" value="Submit" />
			<input class="btn" type="reset" value="Reset" />
			<a class="btn" href="list">Cancel</a>
		</div>
	</fieldset>
</form:form>