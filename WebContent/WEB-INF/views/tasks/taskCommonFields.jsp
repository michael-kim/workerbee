		<div class="control-group">
			<label class="control-label">Task Name</label>
			<div class="controls">
				<form:input path="name" />
				<form:errors path="name" cssClass="alert alert-error" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Task Type</label>
			<div class="controls">
				<span class="input-xlarge uneditable-input">${task.taskType}</span>
			</div>
		</div>
		<hr />