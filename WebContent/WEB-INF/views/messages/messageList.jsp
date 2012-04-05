<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div class="page-header">
	<h1>Message List
		<small>Messages</small>
	</h1>
</div>
<ul>
	<c:forEach items="${authorities}" var="authority">
		<li>${authority.authority}</li>
	</c:forEach>
</ul>
<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_USER">
<div class="btn-toolbar">
	<div class="btn-group">
		<a class="btn" href="${ContextPath}/messagePost">Post</a>
	</div>
</div>
</sec:authorize>
<table class="table table-striped table-bordered">
	<thead>
	<tr>
		<th>Author</th>
		<th>Title</th>
		<th>Body</th>
		<th>Actions</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${messages}" var="message">
	<tr>
		<td>${message.author}</td>
		<td>${message.title}</td>
		<td>${message.body}</td>
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<td><a class="btn btn-danger" href="messageDelete?messageId=${message.id}"><i class="icon-trash icon-white"></i> Delete</a></td>
		</sec:authorize>
	</tr>
	</c:forEach>
	</tbody>
</table>

<div class="pagination">
  <ul>
    <li><a href="#">Prev</a></li>
    <li class="active">
      <a href="#">1</a>
    </li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">Next</a></li>
  </ul>
</div>
