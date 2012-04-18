<%@ include file="/WEB-INF/views/common/include.jsp"%>
<div>
	<c:forEach items="${taskComments}" var="comment">
	<div class="well" style="padding:15px;margin-bottom:15px">
		<a class="close pull-right" href="${ContextPath}/taskComments/delete?taskCommentId=${comment.id}">&times;</a>
		<strong>${comment.author.user.username}</strong> added a comment - ${comment.modified}<br/>
		<pre class="reset">${comment.comment}</pre>
	</div>
	</c:forEach>
</div>

<form:form id="comment-form" method="post" cssClass="form-horizontal" modelAttribute="taskComment" action="${ContextPath}/taskComments/add">
	<form:hidden path="task" />
	<fieldset>
		<div class="control-group">
			<label class="control-label">Comment</label>
			<div class="controls">
				<form:textarea id="comment-textarea" path="comment" cssClass="span9"/>
				<form:errors path="comment" cssClass="alert alert-error" element="div" cssStyle="margin:10px 0 0" />
			</div>
		</div>
		<div class="form-actions" style="padding:10px 160px">
			<button id="comment-add-btn" class="btn btn-mini btn-primary" data-loading-text="processing..." >Add</button>
			<a id="comment-cancel-btn" class="btn btn-mini">Cancel</a>
		</div>
	</fieldset>
</form:form>

<a id="comment-show-btn" class="btn btn-small">Comment</a>

<!-- alert modal -->	
<div class="modal hide" id="errorModal">
  <div class="modal-header">
    <a class="close" data-dismiss="modal">x</a>
    <h3>Alert</h3>
  </div>
  <div class="modal-body">
    <p>An error occurred. Please try again</p>
  </div>
  <div class="modal-footer">
    <a href="#" class="btn" data-dismiss="modal">Close</a>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	if($('#comment-form .alert').length==0) $('#comment-form').hide();
	else $('#comment-show-btn').hide();
	
	$('#comment-show-btn').click(function(){
		$(this).hide();
		$('#comment-form').show();
	});
	$('#comment-cancel-btn').click(function(){
		$('#comment-form div.alert').remove();
		$('#comment-textarea').val('');
		$('#comment-form').hide();
		$('#comment-show-btn').show();
	});
	$('#comment-form').submit(function(e){
		e.preventDefault();
		$('#comment-add-btn').button('loading');
		var form=$(this);
		//alert($(form).attr('action'));
		$.ajax({
			type:'POST',
			url:$(form).attr('action'),
			data:$(form).serialize(),
			success:function(data, textStatus, jqXHR){
				$('#comment-add-btn').button('reset');
				$('#divComment').html(data);
			},
			error:function(jqXHR, textStatus, errorThrown){
				$('#comment-add-btn').button('reset');
				$('#errorModal').modal();
			}
		});
	});
});
</script>