<cfcomponent output="false">

<cfheader name="Access-Control-Allow-Origin" value="*">


 <cffunction name="init" access="remote" returntype="any">
 		 <cfreturn this />
</cffunction>

<cffunction name="getBooksByClass" access="remote" returntype="Any" >
	<cfargument name="bookClass" required="true" type="numeric" default="2" >
		<cfquery name="books" datasource="eakinsWebUser">
			SELECT books.id, 
				books.slug, 
				books.title, 
				books.credits, 
				categories.`name`, 
				categorizations.category_id, 
				newphotoassets.position, 
				newphotoassets.fileName
			FROM books INNER JOIN categorizations ON books.id = categorizations.book_id
				 INNER JOIN categories ON categorizations.category_id = categories.id
				 LEFT OUTER JOIN newphotoassets ON books.id = newphotoassets.bookID
			WHERE categorizations.category_id = #bookClass# AND newphotoassets.assetPhotoType = 1 and newphotoassets.position = 0
			ORDER BY books.`year` DESC
		</cfquery>
		<cfreturn books>
</cffunction>

<cffunction name="getBooksBySearch" access="remote" returntype="Any" >
	<cfargument name="searchText" required="true" type="string" default=""  >
		<cfquery name="books" datasource="eakinsWebUser">
			SELECT distinct books.id, 
				books.slug, 
				books.title, 
				books.credits, 
				newphotoassets.position, 
				newphotoassets.fileName
			FROM books INNER JOIN categorizations ON books.id = categorizations.book_id
				 INNER JOIN categories ON categorizations.category_id = categories.id
				 LEFT OUTER JOIN newphotoassets ON books.id = newphotoassets.bookID
			WHERE (books.title LIKE '%#searchText#%' OR books.credits LIKE '%#searchText#%' OR books.long_description LIKE '%#searchText#%' OR books.colophon LIKE '%#searchText#%')
			AND newphotoassets.assetPhotoType = 1 and newphotoassets.position = 0
			ORDER BY books.`year` DESC
		</cfquery>
		<cfreturn books>
</cffunction>


<cffunction name="getCatDesc" access="remote" returnType="any">
	<cfargument name="bookClass" type="numeric" required="true">
	<cfquery name="catDes" dataSource="eakinsWebUser">
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
	<cfquery name="book" dataSource="eakinsWebUser">
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
	editions.not_for_sale,
	editions.grams
FROM books LEFT OUTER JOIN editions ON books.id = editions.book_id
		WHERE slug = '#slug#' 	
	</cfquery>
	<cfreturn book>		
</cffunction>	

<cffunction name="getCategoriesForBook" access="remote" returnType="any">
	<cfargument name="slug" type="string" required="true">
		<cfquery name="catsForBook" dataSource="eakinsWebUser">
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
		<cfquery name="editions" dataSource="eakinsWebUser">
		
			SELECT books.id, 
				books.title, 
				books.`year`, 
				books.slug,
				editions.isbn, 
				editions.format, 
				editions.price, 
				editions.out_of_print, 
				
				(editions.weight * 28.3495) as weight,
				editions.grams,
				editions.not_for_sale
			FROM books INNER JOIN editions ON books.id = editions.book_id
					where books.slug = '#slug#'
		</cfquery>	
		<cfreturn editions>
</cffunction>

<cffunction name="getSpreadsForBook"	access="remote" returnType="any">
	<cfargument name="slug" required="true" type="any">
	<cfquery name="spreads" dataSource="eakinsWebUser">
			SELECT newphotoassets.id, 
	newphotoassets.fileName, 
	newphotoassets.assetPhotoType, 
	newphotoassets.bookID, 
	newphotoassets.position, 
	books.slug
FROM newphotoassets INNER JOIN books ON newphotoassets.bookID = books.id
WHERE assetPhotoType = 2 AND slug='#slug#'
ORDER BY newphotoassets.position ASC
	</cfquery>
	<cfreturn spreads>
</cffunction>


<cffunction name="getHeroes" access="remote" returnType="any">
	<cfquery name="heroes" dataSource="eakinsWebUser">
		SELECT heroimages.id, 
	heroimages.photoID, 
	heroimages.position, 
	newphotoassets.fileName, 
	newphotoassets.bookID, 
	books.slug
FROM heroimages INNER JOIN newphotoassets ON heroimages.photoID = newphotoassets.id
	 INNER JOIN books ON newphotoassets.bookID = books.id
ORDER BY heroimages.position ASC
	</cfquery>	
	<cfreturn heroes>
</cffunction>

 <cfscript>
/**
 * An enhanced version of left() that doesn't cut words off in the middle.
 * Minor edits by Rob Brooks-Bilson (rbils@amkor.com) and Raymond Camden (rbils@amkor.comray@camdenfamily.com)
 * 
 * Updates for version 2 include fixes where count was very short, and when count+1 was a space. Done by RCamden.
 * 
 * @param str      String to be checked. 
 * @param count      Number of characters from the left to return. 
 * @return Returns a string. 
 * @author Marc Esher (rbils@amkor.comray@camdenfamily.comjonnycattt@aol.com) 
 * @version 2, April 16, 2002 
 */
function fullLeft(str, count) {
    if (not refind("[[:space:]]", str) or (count gte len(str)))
        return Left(str, count);
    else if(reFind("[[:space:]]",mid(str,count+1,1))) {
          return left(str,count);
    } else { 
        if(count-refind("[[:space:]]", reverse(mid(str,1,count)))) return Left(str, (count-refind("[[:space:]]", reverse(mid(str,1,count))))); 
        else return(left(str,1));
    }
}
</cfscript>

</cfcomponent>