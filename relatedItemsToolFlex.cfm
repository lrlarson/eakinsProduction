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
	
<cfoutput>

#relatedItems.news#

</cfoutput>

	
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>	
	<script type="text/javascript" src="js/handlebars.js"></script>
	<script type="text/javascript" src="js/jquery.serializecfjson-0.2.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
<script>

</script>	 
</html>