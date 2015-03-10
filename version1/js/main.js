var dataHost = "http://eakinspress-org.securec75.ezhostingserver.com/eakins/eakinsCFM/data/webData.cfc";

function getBooks(bookType){
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
           // $("#booksDisplay").listview().listview('refresh');
             
        } 
    });	
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
	}
	
	
	
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