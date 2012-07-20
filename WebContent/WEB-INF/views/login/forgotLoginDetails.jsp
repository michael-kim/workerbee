<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<form:form method="post" cssClass="form-horizontal" modelAttribute="userCommand">
	<fieldset>
		<legend>Can't access your account?</legend>
		<div class="control-group">
			<div class="alert alert-block alert-info">
			<i class="icon-info-sign"></i> If you can't access Workerbee, fill in this form and an email will be sent to you with the details to access your account again.
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Which did you forgot?</label>
			<div class="controls">
				<input id="radio1" type="radio" name="whichForgot" value="password" checked /> Password
				&nbsp;&nbsp;&nbsp;
				<input id="radio2" type="radio" name="whichForgot" value="uassword" /> Username
			</div>
		</div>
		<div id="content1"class="control-group">
			<label class="control-label">Enter your username:</label>
			<div class="controls">
				<form:input id="focus" path="username" />
				<form:errors path="username" cssClass="alert alert-error"/>
			</div>
		</div>
		<div id="content2" class="control-group">
			<label class="control-label">Enter your email:</label>
			<div class="controls">
	            <div class="input-prepend">
	              <span class="add-on"><i class="icon-envelope"></i></span><form:input path="email"/>
	            </div>
				<form:errors path="email" cssClass="alert alert-error"/>
			</div>
		</div>
		<div class="form-actions">
			<input class="btn btn-primary" type="submit" value="Send" />&nbsp;&nbsp;
			<a href="${ContextPath}/login">Cancel</a>
		</div>
	</fieldset>
</form:form>
<script>
$(function () {
	$('#content2').hide();
    $('#radio1').click(function(){
    	$('#content1').show();
    	$('#content2').hide();
    });
    $('#radio2').click(function(){
    	$('#content2').show();
    	$('#content1').hide();
    });
  })
</script>
