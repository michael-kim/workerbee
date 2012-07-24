<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<form class="form-horizontal" method="POST" action="<c:url value="/j_spring_security_check"/>">
<fieldset>
	<legend>Login</legend>
	<c:if test="${not empty param.error}">
	<div class="control-group">
		<div class="controls">
			<div class="alert alert-error">
				<a class="close" data-dismiss="alert">x</a>	
				<strong>Login error.</strong><br />
				Reason : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
		</div>
	</div>
	</c:if>
	<div class="control-group">
		<label class="control-label" for="username">Username</label>
		<div class="controls">
			<input id="username" type="text" name="j_username" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="password">Password</label>
		<div class="controls">
			<input id="password" type="password" name="j_password"/>
		</div>
	</div>
	<div class="control-group">
		<!--
		<label class="control-label" for="remember_me">Remember Me</label>
		  -->
		<div class="controls">
			<input id="remember_me" type="checkbox" name="_spring_security_remember_me" /> Keep me logged in
		</div>
	</div>
	<div class="control-group">
		<div class="controls">
		Not a member? <a href="${ContextPath}/signup">Sign Up</a> for an account.<br />
		</div>
	</div>		
	<div class="form-actions">
		<input class="btn btn-primary" type="submit" value="Log In" />&nbsp;&nbsp;
		<a href="${ContextPath}/forgotLoginDetails">Can't access your account?</a>		
	</div>
</fieldset>
</form>
<script type="text/javascript">
(function(){
	$('#username').focus();
})();
</script>

<a class="btn" data-toggle="modal" href="#myModal" >Launch Modal</a>

<!-- Modals -->
<section id="models">
	<div class="modal hide" id="myModal">
	  <div class="modal-header">
	    <a class="close" data-dismiss="modal">x</a>
	    <h3>Modal header</h3>
	  </div>
	  <div class="modal-body">
	    <p>One fine body</p>
	  </div>
	  <div class="modal-footer">
	    <a href="#" class="btn">Close</a>
	    <a href="#" class="btn btn-primary">Save changes</a>
	  </div>
	</div>
</section>