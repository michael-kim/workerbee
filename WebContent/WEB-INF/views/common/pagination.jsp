<div class="pagination">
<ul>
	<li><a href="list?pageNum=${pager.firstPageNum}">First</a></li>
 	<c:if test="${pager.hasPrevPage}"><li><a href="list?pageNum=${pager.prevPageNum}">Prev</a></li></c:if>
 	<c:if test="${!pager.hasPrevPage}"><li class="disabled"><a>Prev</a></li></c:if>
 	<c:forEach var="pageNum" begin="${pager.firstPageNum}" end="${pager.lastPageNum}" step="1">
 		<c:set var="condition" value="${pageNum==pager.currentPageNum}" />
		<c:if test="${condition}"><li class="active"><a href="list?pageNum=${pageNum}">${pageNum}</a></li></c:if>
		<c:if test="${!condition}"><li><a href="list?pageNum=${pageNum}">${pageNum}</a></li></c:if>
	 	</c:forEach>
 	<c:if test="${pager.hasNextPage}"><li><a href="list?pageNum=${pager.nextPageNum}">Next</a></li></c:if>
	<c:if test="${!pager.hasNextPage}"><li class="disabled"><a>Next</a></li></c:if>
	<li><a href="list?pageNum=${pager.lastPageNum}">Last</a></li>
</ul>
</div>
