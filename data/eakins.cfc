<cfcomponent output="false">
 <cffunction name="init" access="remote" returntype="any">
 		 <cfreturn this />
</cffunction>

<cffunction name="getAllBooks" returntype="Any" >
	<cfquery datasource="eakinsMySQL" name="allBooks">
		SELECT books.id, 
		books.title
		FROM books
		ORDER BY books.title ASC
	</cfquery>
</cffunction>


</cfcomponent>