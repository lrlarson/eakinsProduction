<!doctype html>
<html>
<head>
	<!-- set the encoding of your site -->
	<meta charset="utf-8">
	<!-- set the viewport width and initial-scale on mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!-- meta data -->
	<meta name="description" content="For the advancement of literature and art through excellence of presentation to a broad public. Limited edition books and portfolios on photography, history, literature, ballet and art.">
	<meta name="keywords" content="eakins press foundation, publishing, publisher, publications, books, art, architecture, dance, music, literature, photography, new york, thomas eakins, leslie george katz, peter kayafas">
	<meta name="author" content="Larson Associates">
	<!-- include the site stylesheets -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link href="css/all.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/js.css" rel="stylesheet" type="text/css" media="all" />
	<!-- favicon -->
	<link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png">
	<link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="/favicon-194x194.png" sizes="194x194">
	<link rel="icon" type="image/png" href="/favicon-96x96.png" sizes="96x96">
	<link rel="icon" type="image/png" href="/android-chrome-192x192.png" sizes="192x192">
	<link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="/mstile-144x144.png">
	<meta name="theme-color" content="#ffffff">
	<!--[if lt IE 9]>
		<script type="text/javascript" src="js/ie.js"></script>
	<![endif]-->
<cfparam name="slug" default="a-system-of-architectural-ornament">
<cfscript>
eakinsData= CreateObject("Component","data/webData");
eakinsData.init();
bookDetails = eakinsData.getBookDetails(#slug#);
catDetails = eakinsData.getCategoriesForBook(#slug#);
editions = eakinsData.getEditionsForBook(#slug#);
spreads = eakinsData.getSpreadsForBook(#slug#);
relatedItems = eakinsData.getRelatedItemsForBook(#slug#);
</cfscript>
<cfquery dbtype="query" name="reviews">
SELECT relatedClass from relatedItems
where relatedClass = 'review'	
</cfquery>
<cfquery dbtype="query" name="events">
SELECT relatedClass from relatedItems
where relatedClass = 'event'	
</cfquery>
<cfquery dbtype="query" name="resources">
SELECT relatedClass from relatedItems
where relatedClass = 'resource'	
</cfquery>	
<cfset numberOfReviews = #reviews.RecordCount#>
<cfset numberOfEvents = #events.RecordCount#>
<cfset numberOfResources = #resources.RecordCount#>
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!-- set title of your site -->
	<title><cfoutput>Eakins Press Foundation :: #bookDetails.title#</cfoutput></title>
	<!-- include the site stylesheets -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link href="css/all.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/js.css" rel="stylesheet" type="text/css" media="all" />
	<!--[if lt IE 9]>
		<script type="text/javascript" src="js/ie.js"></script>
	<![endif]-->
	


<!--- snipcart   PRODUCTION--->
<script type="text/javascript"   src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<script type="text/javascript"   id="snipcart"   src="https://app.snipcart.com/scripts/snipcart.js"   data-api-key="NWUxNTljZDYtOWNjZi00NGNkLWEyMTQtODdiMDQ4NmI0ODdl"></script> 
<link type="text/css"   id="snipcart-theme"   href="https://app.snipcart.com/themes/base/snipcart.css"   rel="stylesheet" />
<style>
.snipcart-checkout-container {
   z-index: 9999;
}	
</style>

<script>
/*	
Snipcart.execute('config', 'allowed_shipping_methods', [
    'usps-standard-post',
    'usps-priority-mail-express-2-days',
    'usps-priority-mail-2-day'
]);	
*/

Snipcart.execute('config', 'allowed_shipping_methods', [ 
'usps-priority-mail-1-day', 
'usps-priority-mail-2-day' 
]);

var cartViews = 0;

Snipcart.execute('bind', 'shippingaddress.changed', function (address) {
    console.log(address);
})

Snipcart.execute('bind', 'cart.ready', function (data) {
    console.log(data);
});

Snipcart.execute('bind', 'page.change', function (page) {
    console.log(page);
    if ((page == 'billing-address' || page == 'shipping-address') && (cartViews == 0)){
	    cartViews ++;
	    console.log('script triggered');
	    var html = $("#cart-content-text").html();
		$(html).insertBefore($("#snipcart-footer"));  
    }else{
	   if (!(page == 'billing-address' || page == 'shipping-address')){
		   var html = '';
		
	   } 
    }
});	

</script>		
<!--- /snipcart --->

<script>
var thisSlug = '';	
</script>	
</head>
<body>
	<!-- main container of all the page elements -->
	<div id="wrapper" class="single">
		<!-- header of the page -->
		<header id="header">
			<div class="container">
				<!-- logo of the page -->
				<div class="logo">
					<a href="index.cfm">
						<span class="icon-svg2"></span>
						<img src="images/logo.svg" alt="Eakins Press Foundation" class="alignleft">
					</a>
				</div>
				<!-- navigatoin of the page -->
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
						  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						  </button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="dropdown active">
									<a href="publications.cfm" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Publications </a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="publications.cfm?view=art">Art &amp; Architecture</a></li>
										<li><a href="publications.cfm?view=dance">Dance &amp; Music</a></li>
										<li><a href="publications.cfm?view=lit">Literature</a></li>
										<li><a href="publications.cfm?view=photo">Photography</a></li>
									</ul>
								</li>
								<!--<li><a href="http://blog.eakinspress.com">Blog</a></li>-->
								<li class="dropdown">
									<a href="about.cfm" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">About the Press</a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="about_the_press.cfm">Overview</a></li>
										<li><a href="history_of_the_press.cfm">History of the Press</a></li>
										<li><a href="leslie_katz_and_appreciations.cfm">Leslie Katz &amp; <br>Appreciations</a></li>
									</ul>
								</li>
								<li><a href="support_the_press.cfm">Support the Press</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
			</div>
		</header>
		<!-- contain main informative part of the site -->
		<main id="main" role="main">
			<div class="container info-area">
				<div class="row">
					<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
						<nav class="left-nav">
							<ul>
								<cfoutput query="catDetails">
								<cfif #catID[1]# EQ 5 OR #catID[2]# EQ 5 >
								<cfset dance = 'true'>
								<cfelse>
								<cfset dance = 'false'>	
								</cfif>
								
								<cfif #catID[1]# EQ 2 OR #catID[2]# EQ 2 >
								<cfset photo = 'true'>
								<cfelse>
								<cfset photo = 'false'>	
								</cfif>	
								
								
								<cfif #catID[1]# EQ 3 OR #catID[2]# EQ 3 >
								<cfset art = 'true'>
								<cfelse>
								<cfset art = 'false'>	
								</cfif>	
									
								
								<cfif #catID[1]# EQ 4 OR #catID[2]# EQ 4 >
								<cfset lit = 'true'>
								<cfelse>
								<cfset lit = 'false'>	
								</cfif>	
								</cfoutput>	
								
								<cfoutput> 
								<cfif art EQ 'true'>
								<li class="active"><a href="publications.cfm?view=art">Art &amp; Architecture</a></li>
								<cfelse>
								<li><a href="publications.cfm?view=art">Art &amp; Architecture</a></li>
								</cfif>	
								
								<cfif dance EQ 'true'>
								<li class="active"><a href="publications.cfm?view=dance">Dance &amp; Music</a></li>
								<cfelse>
								<li><a href="publications.cfm?view=dance">Dance &amp; Music</a></li>
								</cfif>
								
								<cfif lit EQ 'true'>
								<li class="active"><a href="publications.cfm?view=lit">Literature</a></li>
								<cfelse>
								<li><a href="publications.cfm?view=lit">Literature</a></li>
								</cfif>
								
								<cfif photo EQ 'true'>
								<li class="active"><a href="publications.cfm?view=photo">Photography</a></li>
								<cfelse>
								<li><a href="publications.cfm?view=photo">Photography</a></li>
								</cfif>
								</cfoutput>		

							</ul>
						</nav>
					</div>
					<div class="col-lg-10 col-md-9 col-sm-9 col-xs-12">
						<section class="content">
							<div class="textarea">
								<cfoutput>
								<h1>#bookDetails.title#</h1>
								<h2>#bookDetails.subtitle#</h2>
								<h3>#bookDetails.credits#</h3>
								<h4>#bookDetails.year#</h4>
								<p>#bookDetails.long_description#</p>
								<span class="product-id">#bookDetails.isbn#</span>
							</div>
							<cfloop query="editions">
							<div class="price-detail">
								#editions.format# <br />
								<cfif #editions.out_of_print# EQ 1 OR #editions.not_for_sale# EQ 1>
									This edition is out of print
								<cfelse>
								<!--- old buy link	
								<h4>$#editions.price#</h4>
								<a href="##" class="cart">ADD TO CART</a>
								</cfif>
								--->
								<h4>$#editions.price#</h4>
							<a href="##"
							    class="snipcart-add-item cart"
							    data-item-id="#editions.id#"
							    data-item-name="#editions.title#"
							    data-item-price="#editions.price#"
							    data-item-weight="#editions.weight#"
							    data-item-url="http://eakinspress-org.securec75.ezhostingserver.com/book.cfm?slug=#slug#"
							    data-item-description=""#editions.title#"">
							    Add to Cart
							</a>
							</cfif>
								</div>
							</cfloop>
							
							</cfoutput>
						</section>
					</div>
				</div>
			</div>
			<div class="detail">
				<div class="container">
					<div class="row">
						<cfoutput>
						<h2>#bookDetails.colophon#</h2>
						<h2 class="black">#bookDetails.specs#</h2>
						</cfoutput>
					</div>
				</div>
			</div>
			<section class="slideshow">
				<div class="mask">
					<div class="slideset">
						<cfoutput query="spreads">						
							<div class="slide">
							<img src="images/publications/spreadsCompressed/#spreads.fileName#" alt="Image Description">
						</div>
						</cfoutput>
						<!---- end of query ---->
						
					</div>
				</div>
				<a href="#" class="btn-prev"><i class="icon-svg"></i></a>
				<a href="#" class="btn-next"><i class="icon-svg"></i></a>
				<div class="pagination"></div>
			</section>
			<!-- boxes- -->
			<cfif relatedItems.recordcount GT 0>
			<section class="boxes">
				<!-- tabs-area -->
				<a name="related"></a>
				<div class="tabs-area">
					<div class="container">
						<h1>RELATED MATERIALS</h1>
							<!-- nav-holder -->
							<div class="isotope-filter">
								<div class="nav-holder filters">
									<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
										<li class="active" id="allCats"><a href="#"  class="show-all">All</a></li>
										
										<cfif reviews.RecordCount GT 0>
										<li id="reviewCat"><a href="#" rel='review'>Reviews</a></li>
										<cfelse>	
										<li id="reviewCat"><a href="#" rel='review' class="emptyCat">Reviews</a></li>
										</cfif>
										
										
										
										<cfif events.RecordCount GT 0>
										<li id="eventCat"  ><a href="#" rel='event' >Events</a></li>
										<cfelse>
										<li id="eventCat"  ><a href="#" rel='event' class="emptyCat">Events</a></li>
										</cfif>
										
										<cfif resources.RecordCount GT 0>
											
										<li id="resourceCat"><a href="#" rel='resource'  >Resources</a></li>
										<cfelse>
										<li id="resourceCat"><a href="#" rel='resource' class="emptyCat">Resources</a></li>
										</cfif>
									</ul>
								</div>
									<!-- box-holder- -->
									<div class="sort-boxes">
										<div class="box-holder sort-boxes-holder" id="relatedArea">
											
											<cfoutput query="relatedItems">
											<!-- box-->
											<a href="#link#">
												<article class="box large sort-box" rel='#relatedClass#'>
													<span class="category">#className#</span>
													<span class="title">#title#</span>
													<span class="source">#content#</span>	
												</article>
											</a>
											<!-- box-->
											</cfoutput>	
										</div>	
									</div>
								</div>
							</div>
					</div>
			</section>
			</cfif>
		</main>
		<!-- footer of the page -->
		<footer id="footer">
			<div class="container">
				<!-- footer content -->
				<div class="footer-content">
					<!-- footer logo -->
					<div class="logo">
						<a href="/"><i class="icon-svg2"></i></a>
					</div>
					<address>
						<span><a href="/">Eakins Press Foundation</a></span>
						<span>20 West 44th Street, #405</span>
						<span>New York, NY 10036</span>
						<span><a href="tel:2127642255" class="phone">(212) 764-2255</a></span>
						<span><a href="mailto:&#105;&#110;&#102;&#111;&#064;&#101;&#097;&#107;&#105;&#110;&#115;&#112;&#114;&#101;&#115;&#115;&#046;&#099;&#111;&#109;" class="email">&#105;&#110;&#102;&#111;&#064;&#101;&#097;&#107;&#105;&#110;&#115;&#112;&#114;&#101;&#115;&#115;&#046;&#099;&#111;&#109;</a></span>
					</address>
					<!-- social-networks -->
					<ul class="social-networks">
						<li><a href="https://www.facebook.com/eakinspress" target="_blank"><i class="icon-facebook"></i></a></li>
						<li><a href="https://twitter.com/eakinspress" target="_blank"><i class="icon-twitter"></i></a></li>
						<li><a href="http://instagram.com/eakinspress" target="_blank"><i class="icon-instragram"></i></a></li>
					</ul>
				</div>
				<span class="copyright">&copy;2015 Eakins Press Foundation. <a href="terms_and_conditions.cfm">Terms and Conditions</a>. Site by <a href="http://www.larsonassoc.org">Larson Associates.</a></span>
			</div>
		</footer>
	</div>
	<div class="js-overlay"></div>
	<!-- include jQuery library -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script type="text/javascript">window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
	<!-- include custom JavaScript -->
	<!--- custom javascript --->
	<script type="text/javascript" src="js/handlebars.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	
	<script type="text/javascript" src="js/jquery.serializecfjson-0.2.min.js"></script>
	<script src="js/jquery.main.js"></script>
	<script src="//use.typekit.net/gmm3qiu.js"></script>
	<script>try{Typekit.load();}catch(e){}</script>
	<script type="text/javascript">
		if (navigator.userAgent.match(/IEMobile\/10\.0/) || navigator.userAgent.match(/MSIE 10.*Touch/)) {
			var msViewportStyle = document.createElement('style')
			msViewportStyle.appendChild(
			document.createTextNode(
			 '@-ms-viewport{width:auto !important}'
			)
			)
			document.querySelector('head').appendChild(msViewportStyle)
		}
	</script>
	<script id="cart-content-text" type="text/template">
    <div class="custom-snipcart-footer-text">
    <h2>US Customers</h2>
    <p>
        Please use your 5 digit zipcode without the 4 digit extension.
  </p>
    </div>
  </script>
  <script>
   $(document).ready(function(e) {
	   //alert('doc ready');
	   /*
	   thisSlug = getParam('slug');
	   if (thisSlug == ''){
		   thisSlug = 'a-system-of-architectural-ornament';
		   }
	   getRelatedItems(thisSlug,99);
	   */
	   });
  </script>
</body>
</html>