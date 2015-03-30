var dataHost = "http://eakinspress.com/data/webData.cfc";
var testString = 'bohunk';


function getRelatedItems(slug,cat){
	
	
	$.ajax({
        url: dataHost,
        data: {
            method: 'getNewsForBook',
            returnFormat: 'json',
            slug:slug
            
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
            workReturn = $.serializeCFJSON({
                data: d
            });
            console.log(workReturn);


			
            var relatedAreaTemplateScript = $('#text-template').html();
            relatedItems= Handlebars.compile(relatedAreaTemplateScript);
            $('#relatedArea').empty();
            $('#relatedArea').append(relatedItems(workReturn));
           //$("#relatedArea").listview().listview('refresh');
           //setLinkFormats(bookType); 
            
        } 
    });
 }   

function getNews(slug){
	
	
	$.ajax({
        url: dataHost,
        data: {
            method: 'getRelatedItemsForBookByCat',
            returnFormat: 'json',
            slug:slug
            
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
            workReturn = $.serializeCFJSON({
                data: d
            });
            console.log(workReturn);


			
            var relatedAreaTemplateScript = $('#text-template').html();
            relatedItems= Handlebars.compile(relatedAreaTemplateScript);
            $('#relatedArea').empty();
            $('#relatedArea').append(relatedItems(workReturn));
           //$("#relatedArea").listview().listview('refresh');
           //setLinkFormats(bookType); 
            
        } 
    });
 }   

function getBooks(bookType){
	clearSearch();
	$('#searchReport').hide();
	$('#catText').show();
	
	$.ajax({
        url: dataHost,
        data: {
            method: 'getBooksByClass',
            returnFormat: 'json',
            bookClass:bookType
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
            workReturn = $.serializeCFJSON({
                data: d
            });
            console.log(workReturn);


				
            var currentBooksTemplateScript = $('#books-template').html();
            currentBooks= Handlebars.compile(currentBooksTemplateScript);
            $('#booksDisplay').empty();
            $('#booksDisplay').append(currentBooks(workReturn));
           // $("#booksDisplay").listview().listview('refresh');
           setLinkFormats(bookType);   
        } 
    });
    $.ajax({
        url: dataHost,
        data: {
            method: 'getCatDesc',
            returnFormat: 'json',
            bookClass:bookType
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
            workReturn = $.serializeCFJSON({
                data: d
            });
            console.log(workReturn);
            
            var catTextTemplateScript = $('#text-template').html();
            text= Handlebars.compile(catTextTemplateScript);
            $('#catText').empty();
            $('#catText').append(text(workReturn));
			
             
        } 
    });	
}

function startSearch(){
	var searchString = $('#searchText').val();
	searchBooks(searchString);
	}

function clearSearch(){
	$('#searchText').val('');
	
}

function clearSearchButton(){
	$('#searchText').val('');
	getBooks(3);
	
}

function searchBooks(searchString){
	var bookType = 99;
	$('#search').val();
	$('#catText').empty();
	$('#searchReport').show();
	$.ajax({
        url: dataHost,
        data: {
            method: 'getBooksBySearch',
            returnFormat: 'json',
            searchText:searchString
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
            workReturn = $.serializeCFJSON({
                data: d
            });
            console.log(workReturn);
			console.log(workReturn.data.length);
			
			
			var numberOfBooks = {
                    number: workReturn.data.length,
                    stringTarget:searchString
                };	
                
            var currentBooksTemplateScript = $('#books-template').html();
            currentBooks= Handlebars.compile(currentBooksTemplateScript);
            $('#booksDisplay').empty();
            $('#booksDisplay').append(currentBooks(workReturn));
           // $("#booksDisplay").listview().listview('refresh');
           
           var searchCountTemplateScript = $('#search-template').html();
           searchCount = Handlebars.compile(searchCountTemplateScript);
           $('#searchReport').empty();
           $('#searchReport').append(searchCount(numberOfBooks));
           setLinkFormats(bookType);   
        } 
    });
    /*
    $.ajax({
        url: dataHost,
        data: {
            method: 'getCatDesc',
            returnFormat: 'json',
            bookClass:bookType
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
            workReturn = $.serializeCFJSON({
                data: d
            });
            console.log(workReturn);
            
            var catTextTemplateScript = $('#text-template').html();
            text= Handlebars.compile(catTextTemplateScript);
            $('#catText').empty();
            $('#catText').append(text(workReturn));
           // $("#booksDisplay").listview().listview('refresh');
             
        } 
    });
    */
    	
}

function getBooksSlide(bookType){
	$.ajax({
        url: dataHost,
        data: {
            method: 'getBooksByClass',
            returnFormat: 'json',
            bookClass:bookType
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
            workReturn = $.serializeCFJSON({
                data: d
            });
            console.log(workReturn);


				
            var currentBooksTemplateScript = $('#homeSlide-template').html();
            currentBooks= Handlebars.compile(currentBooksTemplateScript);
            $('#backStreetSlide').empty();
            $('#backStreetSlide').append(currentBooks(workReturn));
           // $("#booksDisplay").listview().listview('refresh');
           //setLinkFormats(bookType);   
        } 
    });
    /*
    $.ajax({
        url: dataHost,
        data: {
            method: 'getCatDesc',
            returnFormat: 'json',
            bookClass:bookType
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
            workReturn = $.serializeCFJSON({
                data: d
            });
            console.log(workReturn);
            
            var catTextTemplateScript = $('#text-template').html();
            text= Handlebars.compile(catTextTemplateScript);
            $('#catText').empty();
            $('#catText').append(text(workReturn));
           // $("#booksDisplay").listview().listview('refresh');
             
        } 
    });	
    */
}




function setLinkFormats(bookType){
	if (bookType == 2){
		$('.photoNav').addClass('active');
		$('.litNav').removeClass('active');
		$('.danceNav').removeClass('active');
		$('.artNav').removeClass('active');
	} else if (bookType ==3){
		$('.photoNav').removeClass('active');
		$('.litNav').removeClass('active');
		$('.danceNav').removeClass('active');
		$('.artNav').addClass('active');
	} else if (bookType == 4){
		$('.photoNav').removeClass('active');
		$('.litNav').addClass('active');
		$('.danceNav').removeClass('active');
		$('.artNav').removeClass('active');
	} else if (bookType == 5){
		$('.photoNav').removeClass('active');
		$('.litNav').removeClass('active');
		$('.danceNav').addClass('active');
		$('.artNav').removeClass('active');
	} else{
		$('.photoNav').removeClass('active');
		$('.litNav').removeClass('active');
		$('.danceNav').removeClass('active');
		$('.artNav').removeClass('active');
	}
	
	
	
}


function onPublicationsClick(){
	
	alert('pub click');
	
}

Handlebars.registerHelper("showEllipse",function(str){
   	var string = '';
   	if (str.length > 100){
	   	string = cutOnWords(str);
   	}else{
	   	string = str;
   	}
    return string;

});

Handlebars.registerHelper("makePlural", function(number){
if (number != 1){
	return 's';
}else{
	return '';
}	
	
});

Handlebars.registerHelper("makeNo", function(number){
if (number == 0){
	return 'No';
}else{
	return number;
}	
	
});

function cutOnWords(stringTarget){
	
	var maxLength = 100 // maximum number of characters to extract
	
	//trim the string to the maximum length
	var trimmedString = stringTarget.substr(0, maxLength);
	
	//re-trim if we are in the middle of a word
	trimmedString = trimmedString.substr(0, Math.min(trimmedString.length, trimmedString.lastIndexOf(" ")))
	trimmedString = trimmedString + ' ...';
	return trimmedString;
}

function getParam(sname) {
    var params = location.search.substr(location.search.indexOf("?") + 1);
    var sval = "";
    params = params.split("&");
    // split param and value into individual pieces
    for (var i = 0; i < params.length; i++) {
        temp = params[i].split("=");
        if ([temp[0]] == sname) {
            sval = temp[1];
        }
    }
    return sval;
}