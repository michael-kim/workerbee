		<div class="control-group">
			<label class="control-label">Task Name</label>
			<div class="controls">
				<form:input path="name" cssClass="span5"/>
				<form:errors path="name" cssClass="alert alert-error" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Description</label>
			<div class="controls">
				<form:textarea path="description" cssClass="span5"/>
				<form:errors path="description" cssClass="alert alert-error" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Task Type</label>
			<div class="controls">
				<span class="input-large uneditable-input">${task.taskType}</span>
			</div>
		</div>
		<hr />