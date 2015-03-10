<cfcomponent output="false">

<cfheader name="Access-Control-Allow-Origin" value="*">


 <cffunction name="init" access="remote" returntype="any">
 		 <cfreturn this />
</cffunction>

<cffunction name="getBooksByClass" access="remote" returntype="Any" >
	<cfargument name="bookClass" required="true" type="numeric" default="2" >
		<cfquery name="books" datasource="eakinsMySQL">
			SELECT books.id, 
				books.slug,
				books.title, 
				books.credits, 
				categories.name, 
				categorizations.category_id
			FROM books INNER JOIN categorizations ON books.id = categorizations.book_id
				 INNER JOIN categories ON categorizations.category_id = categories.id
			WHERE categorizations.category_id = #bookClass#
			order by books.year DESC
		</cfquery>
		<cfreturn books>
</cffunction>

<cffunction name="getCatDesc" access="remote" returnType="any">
	<cfargument name="bookClass" type="numeric" required="true">
	<cfquery name="catDes" dataSource="eakinsMySQL">
		SELECT categories.id, 
		categories.`name`, 
		categories.catText
		FROM categories
		WHERE id=#bookClass#
	</cfquery>	
	<cfreturn catDes>
</cffunction>	


<cffunction name="getBookDetails" access="remote" returnType="any">
	<cfargument name="slug" type="string" required="true">
	<cfquery name="book" dataSource="eakinsMySQL">
		SELECT books.id, 
	books.slug, 
	books.title, 
	books.credits, 
	books.colophon, 
	books.`year`, 
	books.specs, 
	books.short_description, 
	books.long_description, 
	books.thumbnail_file_name, 
	books.subtitle, 
	editions.isbn, 
	editions.format, 
	editions.price, 
	editions.weight, 
	editions.out_of_print, 
	editions.not_for_sale
FROM books INNER JOIN editions ON books.id = editions.book_id
		WHERE slug = "#slug#"		
	</cfquery>
	<cfreturn book>		
</cffunction>	

<cffunction name="getCategoriesForBook" access="remote" returnType="any">
	<cfargument name="slug" type="string" required="true">
		<cfquery name="catsForBook" dataSource="eakinsMySQL">
			SELECT books.id, 
				books.slug, 
				categories.id AS catID, 
				categories.`name`
				FROM books INNER JOIN categorizations ON books.id = categorizations.book_id
				 INNER JOIN categories ON categorizations.category_id = categories.id
				 WHERE books.slug = "#slug#"
		</cfquery>	
		<cfreturn catsForBook>
</cffunction>	
	
<cffunction name="getEditionsForBook" access="remote" returnType="any">
	<cfargument name="slug" type="string" required="true">
		<cfquery name="editions" dataSource="eakinsMySQL">
		
			SELECT books.id, 
				books.title, 
				books.`year`, 
				books.slug,
				editions.isbn, 
				editions.format, 
				editions.price, 
				editions.out_of_print, 
				(editions.weight*28.3495231) as weight,
				editions.not_for_sale
			FROM books INNER JOIN editions ON books.id = editions.book_id
					where books.slug = '#slug#'
		</cfquery>	
		<cfreturn editions>
</cffunction>

</cfcomponent>