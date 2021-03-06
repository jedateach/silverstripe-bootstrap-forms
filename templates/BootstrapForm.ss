<% if IncludeFormTag %>
<form $AttributesHTML>
<% end_if %>
	<% if Message %>
		<% if MessageType == "good" %>
			<div id="{$FormName}_error" class="alert alert-success">$Message</div>
		<% else_if MessageType == "info" %>
			<div id="{$FormName}_error" class="alert alert-info">$Message</div>	
		<% else_if MessageType == "bad" %>
			<div id="{$FormName}_error" class="alert alert-error">$Message</div>	
		<% end_if %>
	<% end_if %>
	
	<fieldset>
		<% if Legend %><legend>$Legend</legend><% end_if %> 
		<% loop Fields %>
			$FieldHolder
		<% end_loop %>
		<div class="clear"><!-- --></div>
	</fieldset>

	<% if Actions %>
	<div class="form-actions">
		<% loop Actions %>
			$Field
		<% end_loop %>
	</div>
	<% end_if %>
<% if IncludeFormTag %>
</form>
<% end_if %>
