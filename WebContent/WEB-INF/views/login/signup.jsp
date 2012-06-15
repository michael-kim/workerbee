<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<form:form method="post" cssClass="form-horizontal" modelAttribute="userCommand">
	<fieldset>
		<legend>Sign up</legend>
		<div class="control-group">
			<div class="alert alert-block alert-info">
			<a class="close" data-dismiss="alert" href="#">×</a>
			<i class="icon-info-sign"></i> To sign up for Workerbee simply enter your details below.
			</div>
		</div>
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
		<div class="form-actions">
			<input class="btn btn-primary" type="submit" value="Sign up" />&nbsp;&nbsp;
			<input class="btn" type="reset" value="Reset" />&nbsp;&nbsp;
			<a href="${ContextPath}/login">Cancel</a>
		</div>
	</fieldset>
</form:form>
