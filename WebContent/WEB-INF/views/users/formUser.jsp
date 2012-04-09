<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div class="page-header">
	<h1>Add User
	<small>Add User</small></h1>
</div>

<a class="btn" href="list"><i class="icon-arrow-left"></i>&nbsp;User List</a>
<form:form method="post" cssClass="form-horizontal" modelAttribute="user">
	<fieldset>
		<legend>Add User</legend>
		<div class="control-group">
			<label class="control-label">Username</label>
			<div class="controls">
				<form:input path="username" />
				<form:errors path="username" cssClass="error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Password</label>
			<div class="controls">
				<form:password path="password"/>
				<form:errors path="password" cssClass="error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Enabled</label>
			<div class="controls">
				<form:checkbox path="enabled"/>
				<form:errors path="enabled" cssClass="error"/>
			</div>
		</div>
		<div class="form-actions">
			<input class="btn btn-primary" type="submit" value="Submit" />
			<input class="btn" type="reset" value="Reset" />
		</div>
	</fieldset>
</form:form>