<%@ page  isELIgnored="false" session="true" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<script type="text/javascript" src="<c:url value='/resources/codemirror-2.23/lib/codemirror.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/codemirror-2.23/mode/mysql/mysql.js'/>"></script>
<link href="<c:url value='/resources/codemirror-2.23/lib/codemirror.css'/>" rel="stylesheet">

<style type="text/css">
/* For input sizes, make them display block */
.docs-input-sizes select,.docs-input-sizes input[type=text] {
	display: block;
	margin-bottom: 9px;
}

.CodeMirror {
	border: 1px solid #eee;
}
.activeline {
	background: #e8f2ff !important;
}
.CodeMirror-scroll {
	height: auto;
	overflow-y: hidden;
	overflow-x: auto;
	width: 100%;
}

</style>
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
<div class="row">
  <div class="subnav">
    <ul class="nav nav-pills">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Buttons <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#buttonGroups">Button groups</a></li>
          <li><a href="#buttonDropdowns">Button dropdowns</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Navigation <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#navs">Nav, tabs, pills</a></li>
          <li><a href="#navbar">Navbar</a></li>
          <li><a href="#breadcrumbs">Breadcrumbs</a></li>
          <li><a href="#pagination">Pagination</a></li>
        </ul>
      </li>
      <li><a href="#labels">Labels</a></li>
      <li><a href="#badges">Badges</a></li>
      <li><a href="#typography">Typography</a></li>
      <li><a href="#thumbnails">Thumbnails</a></li>
      <li><a href="#alerts">Alerts</a></li>
      <li><a href="#progress">Progress bars</a></li>
      <li><a href="#misc">Miscellaneous</a></li>
    </ul>
  </div>
</div>
<div class="row">
	<ul class="breadcrumb">
	  <li>
	    <a href="#">Home</a> <span class="divider">/</span>
	  </li>
	  <li>
	    <a href="#">Library</a> <span class="divider">/</span>
	  </li>
	  <li class="active">Data</li>
	</ul>
</div>
<div class="row">
    <div class="span8">
      <form class="form-horizontal">
        <fieldset>
          <legend>Extending form controls</legend>
          <div class="control-group">
            <label class="control-label">Form grid sizes</label>
            <div class="controls docs-input-sizes">
              <input class="span1" type="text" placeholder=".span1">
              <input class="span2" type="text" placeholder=".span2">
              <input class="span3" type="text" placeholder=".span3">
              <select class="span1">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
              <select class="span2">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
              <select class="span3">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
              <p class="help-block">Use the same <code>.span*</code> classes from the grid system for input sizes.</p>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">Alternate sizes</label>
            <div class="controls docs-input-sizes">
              <input class="input-mini" type="text" placeholder=".input-mini">
              <input class="input-small" type="text" placeholder=".input-small">
              <input class="input-medium" type="text" placeholder=".input-medium">
              <p class="help-block">You may also use static classes that don't map to the grid, adapt to the responsive CSS styles, or account for varying types of controls (e.g., <code>input</code> vs. <code>select</code>).</p>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="prependedInput">Prepended text</label>
            <div class="controls">
              <div class="input-prepend">
                <span class="add-on">@</span><input class="span2" id="prependedInput" size="16" type="text">
              </div>
              <p class="help-block">Here's some help text</p>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="appendedInput">Appended text</label>
            <div class="controls">
              <div class="input-append">
                <input class="span2" id="appendedInput" size="16" type="text"><span class="add-on">.00</span>
              </div>
              <span class="help-inline">Here's more help text</span>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="appendedPrependedInput">Append and prepend</label>
            <div class="controls">
              <div class="input-prepend input-append">
                <span class="add-on">$</span><input class="span2" id="appendedPrependedInput" size="16" type="text"><span class="add-on">.00</span>
              </div>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="appendedPrependedInput">Append with button</label>
            <div class="controls">
              <div class="input-append">
                <input class="span2" id="appendedPrependedInput" size="16" type="text"><button class="btn" type="button">Go!</button>
              </div>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="inlineCheckboxes">Inline checkboxes</label>
            <div class="controls">
              <label class="checkbox inline">
                <input type="checkbox" id="inlineCheckbox1" value="option1"> 1
              </label>
              <label class="checkbox inline">
                <input type="checkbox" id="inlineCheckbox2" value="option2"> 2
              </label>
              <label class="checkbox inline">
                <input type="checkbox" id="inlineCheckbox3" value="option3"> 3
              </label>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="optionsCheckboxList">Checkboxes</label>
            <div class="controls">
              <label class="checkbox">
                <input type="checkbox" name="optionsCheckboxList1" value="option1">
                Option one is this and that&mdash;be sure to include why it's great
              </label>
              <label class="checkbox">
                <input type="checkbox" name="optionsCheckboxList2" value="option2">
                Option two can also be checked and included in form results
              </label>
              <label class="checkbox">
                <input type="checkbox" name="optionsCheckboxList3" value="option3">
                Option three can&mdash;yes, you guessed it&mdash;also be checked and included in form results
              </label>
              <p class="help-block"><strong>Note:</strong> Labels surround all the options for much larger click areas and a more usable form.</p>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">Radio buttons</label>
            <div class="controls">
              <label class="radio">
                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                Option one is this and that&mdash;be sure to include why it's great
              </label>
              <label class="radio">
                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                Option two can is something else and selecting it will deselect option one
              </label>
            </div>
          </div>
          <div class="control-group">
          	<label class="control-label">MySQL</label>
          	<div class="controls">
          		<textarea id="codemirror"></textarea>
          	</div>
          </div>
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">Save changes</button>
            <button class="btn">Cancel</button>
          </div>
        </fieldset>
      </form>
    </div>
    
    <div class="span4">
    	<h3>Prepend &amp; append inputs</h3>
      <p>Input groups&mdash;with appended or prepended text&mdash;provide an easy way to give more context for your inputs. Great examples include the @ sign for Twitter usernames or $ for finances.</p>
      <hr>
      <h3>Checkboxes and radios</h3>
      <p>Up to v1.4, Bootstrap required extra markup around checkboxes and radios to stack them. Now, it's a simple matter of repeating the <code>&lt;label class="checkbox"&gt;</code> that wraps the <code>&lt;input type="checkbox"&gt;</code>.</p>
      <p>Inline checkboxes and radios are also supported. Just add <code>.inline</code> to any <code>.checkbox</code> or <code>.radio</code> and you're done.</p>
      <hr>
      <h4>Inline forms and append/prepend</h4>
      <p>To use prepend or append inputs in an inline form, be sure to place the <code>.add-on</code> and <code>input</code> on the same line, without spaces.</p>
      <hr>
      <h4>Form help text</h4>
      <p>To add help text for your form inputs, include inline help text with <code>&lt;span class="help-inline"&gt;</code> or a help text block with <code>&lt;p class="help-block"&gt;</code> after the input element.</p>
    </div>
  </div><!-- /row -->
  
  