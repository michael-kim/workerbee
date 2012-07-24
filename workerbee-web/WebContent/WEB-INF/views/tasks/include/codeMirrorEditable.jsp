<script type="text/javascript" src="<c:url value='/resources/codemirror-2.23/lib/codemirror.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/codemirror-2.23/mode/mysql/mysql.js'/>"></script>
<link href="<c:url value='/resources/codemirror-2.23/lib/codemirror.css'/>" rel="stylesheet">
<script type="text/javascript">
$(document).ready(function(){
	var myCodeMirror= CodeMirror.fromTextArea($('#codemirror').get(0),{
        lineNumbers: true,
        matchBrackets: true,
        indentUnit: 4,
        onCursorActivity: function() {
            myCodeMirror.setLineClass(hlLine, null, null);
            hlLine = myCodeMirror.setLineClass(myCodeMirror.getCursor().line, null, "activeline");
        }
	});
	var hlLine = myCodeMirror.setLineClass(0, "activeline");
});
</script>