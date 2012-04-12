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
		<a class="btn" href="${ContextPath}/messages/post"><i class="icon-plus"></i>&nbsp;Add Post</a>
	</div>
</div>
</sec:authorize>
<p class="pull-right">
	Displaying messages ${pager.firstResultNum} to ${pager.lastResultNum} of ${pager.totalResults} 
</p>
<table class="table table-striped table-bordered">
	<thead>
	<tr>
		<th>Author</th>
		<th>Title</th>
		<th>Body</th>
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<th>Actions</th>
		</sec:authorize>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${messages}" var="message">
	<tr>
		<td>${message.author.user.username}</td>
		<td>${message.title}</td>
		<td>${message.body}</td>
		<sec:authorize ifAllGranted="ROLE_ADMIN">
		<td>
		<a class="btn btn-mini" href="edit?messageId=${message.id}"><i class="icon-pencil"></i>&nbsp;Edit</a>&nbsp;&nbsp;
		<a class="btn btn-mini btn-danger" href="delete?messageId=${message.id}"><i class="icon-trash icon-white"></i>&nbsp;Delete</a>
		</td>
		</sec:authorize>
	</tr>
	</c:forEach>
	</tbody>
</table>
<div class="pagination">
<ul>
	<li class="previous"><a href="list?pageNum=${pager.firstPageNum}">First</a></li>
 	<c:if test="${pager.hasPrevPage}"><li><a href="list?pageNum=${pager.prevPageNum}">Prev</a></li></c:if>
 	<c:if test="${!pager.hasPrevPage}"><li class="disabled"><a>Prev</a></li></c:if>
 	<c:forEach var="pageNum" begin="${pager.firstPageNum}" end="${pager.lastPageNum}" step="1">
 		<c:set var="condition" value="${pageNum==pager.currentPageNum}" />
		<c:if test="${condition}"><li class="active"><a href="list?pageNum=${pageNum}">${pageNum}</a></li></c:if>
		<c:if test="${!condition}"><li><a href="list?pageNum=${pageNum}">${pageNum}</a></li></c:if>
	 	</c:forEach>
 	<c:if test="${pager.hasNextPage}"><li><a href="list?pageNum=${pager.nextPageNum}">Next</a></li></c:if>
	<c:if test="${!pager.hasNextPage}"><li class="disabled"><a>Next</a></li></c:if>
	<li class="next"><a href="list?pageNum=${pager.lastPageNum}">Last</a></li>
</ul>
</div>
