<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
<cfparam name="slug" default="a-system-of-architectural-ornament">
<cfscript>
eakinsData= CreateObject("Component","data/webData");
eakinsData.init();

relatedItems = eakinsData.getNewsForBook(#slug#);
books = eakinsData.getAllBooks();
</cfscript>    
</head>
<body>
	<select id="selectBook">
<cfoutput query="books">

	<option value="#slug#">#title#</option>

</cfoutput>	
</select>	
<cfoutput>
<!---
#relatedItems.news#
--->
</cfoutput>
<div id="newsArea"><!--- inject here ---></div>
	<script id="books-template" type="x-handlebars-template">
		{{#each data}}
			{{{news}}}
		{{/each}}	
	</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>	
	<script type="text/javascript" src="js/handlebars.js"></script>
	<script type="text/javascript" src="js/jquery.serializecfjson-0.2.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
<script>
 $(document).ready(function(e) {
	 $('#selectBook').change(function(){
		 getNews($('#selectBook').val());
	 })
	 });
</script>	 
</html>