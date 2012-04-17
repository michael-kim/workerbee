<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div class="page-header">
	<h1>Edit Message 
		<small>Messages</small>
	</h1>
</div>
<div class="btn-toolbar">
	<div class="btn-group">
		<a class="btn" href="list"><i class="icon-arrow-left"></i> List</a>
	</div>
</div>

<form:form cssClass="form-horizontal" method="POST" modelAttribute="message">
<fieldset>
	<legend>Message Post</legend>
	<div class="control-group">
		<label class="control-label" for="author">Author</label>
		<div class="controls">
			<span class="input-xlarge uneditable-input"><sec:authentication property="name" /></span>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="title">Title</label>
		<div class="controls">
			<form:input path="title" cssClass="input-xlarge" />
			<p class="help-block">Supporting help text</p>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="body">Body</label>
		<div class="controls">
			<form:textarea path="body" cssClass="input-xlarge" rows="15"/>
			<p class="help-block">Supporting help text</p>
		</div>
	</div>
	<div class="form-actions">
		<input class="btn btn-primary" type="submit" value="Post" />
		<input class="btn" type="reset" value="Reset" />
		<a class="btn" href="list">Cancel</a>
	</div>
</fieldset>
</form:form>


