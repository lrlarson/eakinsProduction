
<cfscript>


    myData = deserializeJSON(ToString(getHTTPRequestData().content));

	
</cfscript>	



<cfquery name="catDes" dataSource="eakinsMySQL">
		insert into hookTest
		(testValue)
		VALUES
		('#myData.content.items[1].name#')
	</cfquery>

