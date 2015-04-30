
<cfcomponent output="false">
 
 
 
 /*  IMPORTANT   This file lives in eakins on the 8500 server locally!   */
 
 
 
 
 <cffunction name="init" access="remote" returntype="any">
 		 <cfreturn this />
</cffunction>


<cffunction name="getBooksByClass" access="remote" returntype="Any" >
	<cfargument name="bookClass" required="true" type="numeric" default="2" >
		<cfquery name="books" datasource="eakinsMySQL">
			SELECT books.id, 
				books.title, 
				books.credits, 
				categories.name, 
				categorizations.category_id
			FROM books INNER JOIN categorizations ON books.id = categorizations.book_id
				 INNER JOIN categories ON categorizations.category_id = categories.id
			WHERE categorizations.category_id = 2
		</cfquery>
		<cfreturn books>
</cffunction>


<cffunction name="getAllBooks" returntype="Any"  access="remote" >
	<cfquery datasource="eakinsMySQL" name="allBooks">
		SELECT books.id, 
		books.title
		FROM books
		ORDER BY books.title ASC
	</cfquery>
	<cfreturn allBooks>
</cffunction>


<cffunction name="getBookDetails" returntype="Any" access="remote" > 
	<cfargument name="id" type="numeric" required="true" default="11">
		<cfquery datasource="eakinsMySQL" name="bookDetails">
			SELECT books.id, 
			books.title, 
			books.credits, 
			books.colophon, 
			books.year, 
			books.specs, 
			books.short_description, 
			books.long_description, 
			books.subtitle, 
			books.thumbnail_file_name, 
			books.thumbnail_content_type, 
			books.thumbnail_file_size,
			books.slug
		FROM books
		where books.id = #id#
		</cfquery>
		<cfreturn bookDetails>
</cffunction>


<cffunction name="getCategoriesForBook" returntype="any" access="remote" >
	<cfargument name="id" type="numeric" required="true" default="11">
		<cfquery datasource="eakinsMySQL" name="categoriesForBook">
			SELECT categories.name, 
			categorizations.book_id, 
			categorizations.category_id
			FROM books INNER JOIN categorizations ON books.id = categorizations.book_id
			 INNER JOIN categories ON categorizations.category_id = categories.id
			where books.id = #id#
		</cfquery>
		<cfreturn categoriesForBook>
</cffunction>

<cffunction name="getCategories" returntype="Any" access="remote" >
	<cfquery datasource="eakinsMySQL" name="categories">
		SELECT categories.id as data, 
	categories.name as label, 
	categories.slug
	FROM categories
	</cfquery>
	<cfreturn categories>
</cffunction>


<cffunction name="newCatForBook" returntype="Any" access="remote" >
	<cfargument name="book_id" type="numeric" required="true">
	<cfargument name="category_id" type="numeric" required="true">
	<cfquery datasource="eakinsMySQL" name="newCat">
		insert into categorizations
			(book_id,
			category_id)
			VALUES
			(
			#book_id#,
			#category_id#	
			)
			
	</cfquery>
	<cfreturn 1>
</cffunction>

<cffunction name="deleteCatFromBook" returntype="Any" access="remote" >	
	<cfargument name="book_id" type="numeric" required="true">
	<cfargument name="category_id" type="numeric" required="true">
	<cfquery datasource="eakinsMySQL" name="newCat">
		delete from categorizations
		where book_id = #book_id# and category_id = #category_id#
	</cfquery>
	<cfreturn 1>
</cffunction>


<cffunction name="updateBook" returntype="Any" access="remote" >
	<cfargument name="bookDetails" type="any" required="true" >
	<cfquery datasource="eakinsMySQL" name="updateBook">
		update books
		set 
			books.title = '#bookDetails.title#', 
			books.credits = '#bookDetails.credits#', 
			books.colophon = '#bookDetails.colophon#', 
			books.year = #bookDetails.year#, 
			books.specs = '#bookDetails.specs#', 
			books.short_description = '#bookDetails.short_description#', 
			books.long_description = '#bookDetails.long_description#', 
			books.slug = '#bookDetails.slug#', 
			books.thumbnail_content_type = '#bookDetails.thumbnail_content_type#', 
			books.thumbnail_file_name = '#bookDetails.thumbnail_file_name#', 
			books.subtitle = '#bookDetails.subtitle#'
		where id = #bookDetails.id#
	</cfquery>
	<cfreturn 1>
</cffunction>

<cffunction name="getEditionsForBook" returntype="Any" access="remote" >
	<cfargument name="book_id" type="numeric" required="true" >
		<cfquery datasource="eakinsMySQL" name="editions">
			SELECT editions.id, 
			editions.book_id, 
			editions.isbn, 
			editions.format, 
			editions.price, 
			editions.out_of_print, 
			editions.weight, 
			editions.not_for_sale
			FROM editions
			where editions.book_id = #book_id#
		</cfquery>
		<cfreturn editions>
</cffunction>


<cffunction name="getEditionsDetails" returntype="Any" access="remote" >
	<cfargument name="edition_ID" type="numeric" required="true" >
	<cfquery name="editionDetails" datasource="eakinsMySQL">
		SELECT editions.id, 
			editions.book_id, 
			editions.isbn, 
			editions.format, 
			editions.price, 
			editions.out_of_print, 
			editions.weight, 
			editions.not_for_sale
			FROM editions
			where editions.id = #edition_ID#
	</cfquery>
	<cfreturn editionDetails>
</cffunction>
	
<cffunction name="updateEdition" returntype="Any" access="remote" >
	<cfargument name="editionDetails" type="any" required="true" >
	<cfquery name="updateEdition" datasource="eakinsMySQL" >
		update editions
		set format = '#editionDetails.format#',
		isbn = '#editionDetails.isbn#',
		price = '#editionDetails.price#',
		out_of_print = '#editionDetails.out_of_print#',
		weight = '#editionDetails.weight#',
		not_for_sale = '#editionDetails.not_for_sale#'
		where id = #editionDetails.id#
		
		
	</cfquery>
	<cfreturn 1>	 
</cffunction>	

<cffunction name="createNewEdition" returntype="Any" access="remote" >
	<cfargument name="editionDetails" type="any" required="true" >
		<cfquery name="updateEdition" datasource="eakinsMySQL" >
			insert into editions
				(
				editions.book_id, 
					editions.isbn, 
					editions.format, 
					editions.price, 
					editions.out_of_print, 
					editions.weight, 
					editions.not_for_sale
				)VALUES(
					'#editionDetails.book_id#', 
					'#editionDetails.isbn#', 
					'#editionDetails.format#', 
					'#editionDetails.price#', 
					'#editionDetails.out_of_print#', 
					'#editionDetails.weight#', 
					'#editionDetails.not_for_sale#'
				);

		</cfquery>
	<cfreturn 1>			
</cffunction>


<cffunction name="getAssetsForBook" access="remote" returntype="Any" >
	<cfargument name="book_id" type="numeric" required="true" >
		<cfquery name="assets" datasource="eakinsMySQL" >
			SELECT assets.id, 
			assets.asset_file_name, 
			assets.asset_content_type, 
			assets.book_id, 
			assets.position
			FROM assets
			where assets.book_id = #book_id#
		</cfquery>
		<cfreturn assets>
</cffunction>


<cffunction name="saveAssetChanges" access="remote" returntype="Any" >
	<cfargument name="asset" type="any" required="true" >
		<cfquery name="assets" datasource="eakinsMySQL" >
			update assets
			set asset_file_name = '#asset.asset_file_name#', position = '#asset.position#'
			where id = '#asset.id#'
		</cfquery>	
	<cfreturn 1>
</cffunction>	

<cffunction name="createNewAsset" access="remote" returntype="any" >
	<cfargument name="asset" type="any" required="true" >
	<cfquery name="createNewAsset" datasource="eakinsMySQL">
		insert into assets
		(asset_file_name,position,book_id)
		VALUES
		('#asset.asset_file_name#',
		'#asset.position#',
		'#asset.book_id#');
		
	</cfquery>
	<cfreturn 1>
</cffunction>

<cffunction name="deleteAsset" access="remote"  returntype="any">
	<cfargument name="id" type="numeric" required="true" >
		<cfquery name="deleteAsset" datasource="eakinsMySQL">
			delete from assets
			where id= #id#
		</cfquery>
	<cfreturn 1>	
</cffunction>

<cffunction name="getRelatedClasses" access="remote" returntype="Any" >
	<cfquery name="classes" datasource="eakinsMySQL">
		SELECT relateditemclasses.id AS `data`, 
	relateditemclasses.relatedClass , 
	relateditemclasses.className AS label
FROM relateditemclasses
	</cfquery>
	<cfreturn classes>
</cffunction>


<cffunction name="getRelatedItemsForBook" access="remote" returntype="Any" >
	<cfargument name="book_ID" type="numeric" required="true" >
	<cfquery name="relatedBooks" datasource="eakinsMySQL">
SELECT relateditems.id, 
	relateditems.content, 
	relateditems.book_id, 
	relateditems.title, 
	relateditemclasses.relatedClass, 
	relateditemclasses.id as itemClass,
	relateditems.link,
	relateditems.publish
	FROM relateditems INNER JOIN relateditemclasses ON relateditems.relatedItemClass = relateditemclasses.id
	WHERE relateditems.book_id = #book_ID#
	</cfquery>
	<cfreturn relatedBooks>
</cffunction>


<cffunction name="getRelatedDetails" access="remote" returntype="any" >
	<cfargument name="id" type="numeric" required="true" >
		<cfquery name="relatedDetails" datasource="eakinsMySQL" >
			SELECT relateditems.id, 
			relateditems.content, 
			relateditems.book_id, 
			relateditems.relatedItemClass, 
			relateditems.title,
			relateditems.link
			FROM relateditems
			where relateditems.id = #id#
		</cfquery>
	<cfreturn relatedDetails>	
</cffunction>


<cffunction name="updateRelatedItem" access="remote" returntype="Any" >
	<cfargument name="relatedItem" type="any" required="true" >
	<cfquery  name="update" datasource="eakinsMySQL" >
		update relateditems
		set relateditems.content = '#relatedItem.content#', 
			relateditems.title = '#relatedItem.title#',
			relateditems.relatedItemClass = #relatedItem.itemClass#,
			relateditems.link = '#relateditem.link#' ,
			relateditems.publish = '#relateditem.publish#'
where  relateditems.id = #relatedItem.id#
	</cfquery>
	<cfreturn 1>
</cffunction>


<cffunction name="insertNewRelatedItem" access="remote" returntype="Any" >
	<cfargument name="newItem" type="any" required="true" >
	<cfquery name="newItem" datasource="eakinsMySQL" >
		insert into relatedItems
			(
			content,
			book_id,
			relatedItemClass,
			title,
			link
			)values(
			'#newItem.content#',
			#newItem.book_id#,
			#newItem.itemClass#,
			'#newItem.title#',
			'#newItem.link#'
			)
	</cfquery>
	<cfreturn 1>
</cffunction>

<cffunction name="deleteRelatedItem" access="remote" returntype="Any" >
	<cfargument name="id" required="true" type="any" >
	<cfquery name="delete" datasource="eakinsMySQL" >
		delete from relateditems where id = #id#
	</cfquery>
	<cfreturn 1>
</cffunction>
	
<cffunction name="createNewBook" access="remote" returntype="Any" >
	<cfargument name="newBook" required="true" type="any" >
	<cfquery name="book" datasource="eakinsMySQL" >
		insert into books
		(
		
		 colophon,
		 credits,
		 long_description,
		 
		  short_description,
		  slug,
		  specs,
		   subtitle,
		   thumbnail_file_name,
		   title,
		   year
		)values(
			
		 '#newBook.colophon#',
		 '#newBook.credits#',
		 '#newBook.long_description#',
		
		  '#newBook.short_description#',
		 '#newBook.slug#',
		  '#newBook.specs#',
		  '#newBook.subtitle#',
		   '#newBook.thumbnail_file_name#',
		   '#newBook.title#',
		   #newBook.year#	
		)
	</cfquery>
	<cfreturn 1>
</cffunction>

<cffunction name="getNewPhotoAssetsForBook" access="remote" returntype="Any" >
	<cfargument name="book_ID" type="numeric" required="true" >
	<cfquery name="photos" datasource="eakinsMySQL" >
		SELECT newphotoassets.id, 
			newphotoassets.fileName, 
			newphotoassets.assetPhotoType, 
			newphotoassets.bookID, 
			newphotoassets.position,
			assetphototypes.assetPhotoType AS photoTypeName
			FROM newphotoassets INNER JOIN assetphototypes ON newphotoassets.assetPhotoType = assetphototypes.id
			where newphotoassets.bookID = #book_ID#
	</cfquery>
	<cfreturn photos>
</cffunction>


<cffunction name="getNewPhotoTypes" access="remote" returntype="Any" >
	<cfquery name="types" datasource="eakinsMySQL" >
		SELECT assetphototypes.id AS `data`, 
		assetphototypes.assetPhotoType AS label
		FROM assetphototypes
	</cfquery>
	<cfreturn types>
</cffunction>

<cffunction name="saveNewPhotoTypeChanges" access="remote" returntype="Any" >
	<cfargument name="newPhoto" type="any" required="true" >
	<cfquery name="change" datasource="eakinsMySQL" >
		update newphotoassets
		set assetPhotoType = #newPhoto.assetPhotoType#,
		fileName = '#newPhoto.fileName#',
		position = #newPhoto.position#
		where id = #newPhoto.id#
	</cfquery>
	<cfreturn 1>
</cffunction>


<cffunction name="createNewPhotoAsset" access="remote" returntype="Any" >
	<cfargument name="newPhotoType" type="any" required="true" >
	`	<cfquery datasource="eakinsMySQL" name="newPhoto">
			insert into newphotoassets( assetPhotoType, bookID, fileName, position)
			values
			(#newPhotoType.assetPhotoType#,
			#newPhotoType.bookID#,
			'#newPhotoType.fileName#',
			#newPhotoType.position#
			)
		</cfquery>
		<cfreturn 1> 
</cffunction>

<cffunction name="deleteNewPhotoAsset" access="remote" returntype="Any" >
	<cfargument name="id" type="numeric" required="true" >
		<cfquery name="delete" datasource="eakinsMySQL" >
			delete from newphotoassets
			where id = #id#
		</cfquery>
	<cfreturn 1>
</cffunction>
	
	
<cffunction name="getAvailableHomePageFeatures" access="remote" returntype="Any" >
	<cfquery name="features" datasource="eakinsMySQL" >
		SELECT books.id, 
	newphotoassets.assetPhotoType, 
	books.title, 
	newphotoassets.id AS photoID, 
	newphotoassets.fileName, 
	assetphototypes.assetPhotoType
		FROM books INNER JOIN newphotoassets ON books.id = newphotoassets.bookID
			 INNER JOIN assetphototypes ON newphotoassets.assetPhotoType = assetphototypes.id
		WHERE newphotoassets.assetPhotoType=3
	</cfquery>
	<cfreturn features>
</cffunction>	
	
	
<cffunction name="insertHeroImage" access="remote" returntype="Any" >
	<cfargument name="heroImage" type="any" required="true" >
	`	<cfquery name="hero"  datasource="eakinsMySQL" >
			insert into heroimages(
				photoID,
				position
			)values(
				#heroImage.photoID#,
				#heroImage.position#
			)
		</cfquery>
		<cfreturn 1>
</cffunction>	

<cffunction name="getHeroImages" access="remote" returntype="Any" >
	<cfquery name="getHeroes" datasource="eakinsMySQL" >
		SELECT heroimages.id, 
	heroimages.photoID, 
	heroimages.position, 
	books.title
	FROM books INNER JOIN newphotoassets ON books.id = newphotoassets.bookID
		 INNER JOIN heroimages ON newphotoassets.id = heroimages.photoID
	ORDER BY heroimages.position ASC
	</cfquery>
	<cfreturn getHeroes>
</cffunction>

<cffunction name="deleteFromHeroes" access="remote" returntype="Any">
	<cfargument name="photoID" type="any" >
		<cfquery name="delete" datasource="eakinsMySQL" >
			delete from heroimages
			where id = #photoID#
		</cfquery>
		<cfreturn 1>
</cffunction>

<cffunction name="getNewsForBook" access="remote" returntype="Any" >
	<cfargument name="bookID" type="numeric" required="true" >
	<cfquery name="news" datasource="eakinsMySQL" >
		SELECT books.id, 
	books.news
	FROM books
	where books.id = #bookID#
	</cfquery>
	<cfreturn news>
</cffunction>	
	
</cfcomponent>


