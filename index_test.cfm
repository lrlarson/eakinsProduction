<!doctype html>
<html>
<head>
	<!-- set the encoding of your site -->
	<meta charset="utf-8">
	<!-- set the viewport width and initial-scale on mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!-- set title of your site -->
	<title>Eakins Press Foundation</title>
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
    
          <!-- Open Graph Meta Tags -->
      <meta property="og:type" content="website"/>
      <meta property="og:title" content="Eakins Press Foundation | Blog"/>
      <meta property="og:description" content="For the advancement of literature and art through excellence of presentation to a broad public. Limited edition books and portfolios on photography, history, literature, ballet and art."/>
      <meta property="og:site_name" content="Eakins Press Foundation | Blog"/>
      <meta property="og:url" content="https://www.eakinspress.com/"/>
      <meta property="og:image" content="https://pbs.twimg.com/profile_images/564877411116793857/FFF3cXgt_400x400.jpeg"/>

      <!-- Twitter Card Meta Tags -->
      <meta name="twitter:card" content="summary"/>
      <meta name="twitter:title" content="Eakins Press Foundation | Blog"/>
      <meta name="twitter:description" content="For the advancement of literature and art through excellence of presentation to a broad public. Limited edition books and portfolios on photography, history, literature, ballet and art."/>
      <meta name="twitter:image" content="https://pbs.twimg.com/profile_images/564877411116793857/FFF3cXgt_400x400.jpeg"/>
      <meta name="twitter:site" content="@eakinspress"/>
    
<cfparam name="view" default="3">	

<!---
<script src="//load.sumome.com/" data-sumo-site-id="11be0b3abd38b378a2f1228d1d9ce1128ddc83df24ad056d375dd419420d1150" async="async"></script>
--->


<cfscript>
eakinsData= CreateObject("Component","data/webData");
eakinsData.init();
booksForSlider = eakinsData.getBooksByClass(view);
catDesc = eakinsData.getCatDesc(view);
heroes = eakinsData.getHeroes();
</cfscript>	

<!--- snipcart   PRODUCTION--->
<script type="text/javascript"   src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript"   id="snipcart"   src="https://cdn.snipcart.com/scripts/snipcart.js"   data-api-key="NWUxNTljZDYtOWNjZi00NGNkLWEyMTQtODdiMDQ4NmI0ODdl"></script> 
<script>
  Snipcart.execute('config', 'show_continue_shopping', true);
</script>


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

</head>
<body>
	<!-- main container of all the page elements -->
	<div id="wrapper" class="home">
		<!-- header of the page -->
		<header id="header">
			<div class="container">
				<!-- logo of the page -->
				<div class="logo">
					<a href="/">
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
								<li class="dropdown">
									<a href="publications.cfm" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Publications </a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="publications.cfm?view=art">Art &amp; Architecture</a></li>
										<li><a href="publications.cfm?view=dance">Dance &amp; Music</a></li>
										<li><a href="publications.cfm?view=lit">Literature</a></li>
										<li><a href="publications.cfm?view=photo">Photography</a></li>
									</ul>
								</li>
								<li><a href="http://blog.eakinspress.com">Blog</a></li>
								<li class="dropdown">
									<a href="about_the_press.cfm" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">About the Press</a>
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
		<div id="cart" class="snipcart-summary"><a href="#" class="snipcart-checkout"><span class="snipcart-total-items"></a></span></div>
		<!-- contain main informative part of the site -->
		<main id="main" role="main">
			<!-- main carousel of the page -->
			<section class="carousel-area">
				<!-- carousel-holder -->
				<div class="carousel-holder  win-min-height">
					<!-- carousel -->
					<div class="carousel win-height">
						<!-- mask -->
						<div class="mask">
						<!-- slideset -->
							<div class="js-slideset">
								<cfoutput query="heroes">
								<div class="js-slide slick-slide">
									<div class="image-area">
										<a href="book.cfm?slug=#heroes.slug#"><img src="images/heroes/heroesCompressed/#heroes.fileName#" alt="Image Description"></a>
									</div>
								</div>
								</cfoutput>
 							</div>
						</div>
					</div>
					<a href="#publications" class="down"><i class="icon-svg"></i></a>
				</div>
			</section>
			<!-- publications -->
			<a name="screen2"></a>
			<section class="publications" id="publications">
				<div class="container">
					<h1>PUBLICATIONS</h1>
					<!-- tabs-area -->
					<section class="tabs-area">
						<!-- nav-holder -->
						<div class="nav-holder">
							<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
							<li class="artNav"><a href="index.cfm?view=3&#screen2" >Art &amp; Architecture</a></li>
							<li class="danceNav"><a href="index.cfm?view=5&#screen2" >Dance &amp; Music</a></li>
							<li class="litNav"><a href="index.cfm?view=4&#screen2" >Literature</a></li>
							<li class= "photoNav"><a href="index.cfm?view=2&#screen2" >Photography</a></li>
						</ul>
						</div>
						<!-- tab-content -->
						
						<div id="my-tab-content" class="tab-content">
							<!-- tab-1 -->
							<cfoutput query="catDesc">
							<div class="tab-pane active" id="tab1">
								<div class="textarea">
									<p>#catDesc.catText#</p>
								</div>
							</div>
							</cfoutput>
						</div>
					</section>
					<div class="scroll-block">
						<!-- jcf-scrollable -->
						<div class="slider">
							<div class="mask jcf-scrollable">
								<cfoutput query="booksForSlider">
									<div class="slide">
										<div class="holder">
											<a href="book.cfm?slug=#booksForSlider.slug#"><img src="images/portraits/portraitsCompressed/#booksForSlider.filename#" alt="Image Description">
												<header class="head">
													<h2>#booksForSlider.title#</h2>
													
													<h3>#eakinsData.fullLeft(booksForSlider.credits,100)#

														<cfif (len(booksForSlider.credits) GT 100)>
														&nbsp;...
														</cfif>
													</h3>
												</header>
											</a>
										</div>
									</div>
								</cfoutput>
								</div>
							<a href="#" class="btn-prev"><i class="icon-svg"></i></a>
							<a href="#" class="btn-next"><i class="icon-svg"></i></a>
						</div>
					</div>
				</div>
			</section>
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
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="js/jquery.main.js"></script>
	<script src="//use.typekit.net/gmm3qiu.js"></script>
	<script>try{Typekit.load();}catch(e){}</script>	<script type="text/javascript">
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
	<cfoutput>
		<script>
	 $(document).ready(function(e) {
		 
			
		 setLinkFormats('#view#');
		 
		
		 });
	
	
	</script>
	</cfoutput>
	<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-60134857-1', 'auto');
ga('send', 'pageview');

</script>
<script id="cart-content-text" type="text/template">
    <div class="custom-snipcart-footer-text">
    <h2>US Customers</h2>
    <p>
        Please use your 5 digit zipcode without the 4 digit extension.
  </p>
    </div>
  </script>
</body>
</html>