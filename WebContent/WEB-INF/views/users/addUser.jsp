<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<form:form method="post" cssClass="form-horizontal" modelAttribute="userCommand">
	<fieldset>
		<legend>Add User</legend>
		<div class="control-group">
			<label class="control-label">Username:</label>
			<div class="controls">
				<form:input id="focus" path="username" />
				<form:errors path="username" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Password:</label>
			<div class="controls">
				<form:password path="password"/>
				<form:errors path="password" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Re-type Password:</label>
			<div class="controls">
				<form:password path="confirmPassword"/>
				<form:errors path="confirmPassword" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Enabled:</label>
			<div class="controls">
				<form:checkbox path="enabled"/>
				<form:errors path="enabled" cssClass="alert alert-error"/>
			</div>
		</div>
		<hr>
		<div class="control-group">
			<label class="control-label">First Name:</label>
			<div class="controls">
				<form:input path="firstName"/>
				<form:errors path="firstName" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Last Name:</label>
			<div class="controls">
				<form:input path="lastName"/>
				<form:errors path="lastName" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Email:</label>
			<div class="controls">
	            <div class="input-prepend">
	              <span class="add-on"><i class="icon-envelope"></i></span><form:input path="email"/>
	            </div>
				<form:errors path="email" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Language:</label>
			<div class="controls">
				<form:select path="primaryLanguage">
					<form:options items="${languages}" itemLabel="displayText" />
				</form:select>
			</div>
		</div>
		<div class="form-actions">
			<input class="btn btn-primary" type="submit" value="Submit" />
			<input class="btn" type="reset" value="Reset" />
			&nbsp;&nbsp;<a  href="list">Cancel</a>
		</div>
	</fieldset>
</form:form>
