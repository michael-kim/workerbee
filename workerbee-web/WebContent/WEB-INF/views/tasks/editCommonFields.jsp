		<div class="control-group">
			<label class="control-label">Task Name</label>
			<div class="controls">
				<form:input id="focus" path="name" cssClass="span5"/>
				<form:errors path="name" cssClass="alert alert-error" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Description</label>
			<div class="controls">
				<form:textarea path="description" cssClass="span7" rows="3"/>
				<form:errors path="description" cssClass="alert alert-error" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Task Type</label>
			<div class="controls">
				<span class="input-large uneditable-input">${task.taskType}</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Preceding Tasks</label>
			<div class="controls">
				<input id="precedingTasks" type="text" name="precedingTasks" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Following Tasks</label>
			<div class="controls">
				<input id="followingTasks" type="text" name="follwingTasks"  />
			</div>
		</div>
		<hr />
		<script type="text/javascript">
		$(document).ready(function(){
			var taskGroupId = ${task.taskGroup.id};
			var url ='/workerbee/json/getTasks?taskGroupId='+taskGroupId;
			var config={
					propertyToSearch: "search",
					resultsFormatter: function(item){ 
						return '<li>' +item.search+ '</li>';
					},
					tokenFormatter: function(item) {
						return "<li><p>" + item.search + "</p></li>"
					},
	                animateDropdown: false,
	                preventDuplicates: true
				};
			$('#precedingTasks').tokenInput(url,config);
			$('#followingTasks').tokenInput(url,config);
		});
		</script>
		