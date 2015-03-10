   <!doctype html>
<html>
<head>
	<!-- set the encoding of your site --->
	<meta charset="utf-8">
	<!-- set the viewport width and initial-scale on mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!-- set title of your site -->
	<title>Eakins Press Foundation</title>
	<!-- include the site stylesheets -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link href="css/all.css" rel="stylesheet" type="text/css" media="all" />
	<!--[if lt IE 9]>
		<script type="text/javascript" src="js/ie.js"></script>
	<![endif]-->

<cfparam name="slug" default="the-stravinsky-festival">
<cfscript>
eakinsData= CreateObject("Component","data/webData");
eakinsData.init();
bookDetails = eakinsData.getBookDetails(#slug#);
catDetails = eakinsData.getCategoriesForBook(#slug#);
editions = eakinsData.getEditionsForBook(#slug#);
</cfscript>


<!--- snipcart   TEST--->
<script type="text/javascript"   src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript"   id="snipcart"   src="https://app.snipcart.com/scripts/snipcart.js"   data-api-key="NWUxNTljZDYtOWNjZi00NGNkLWEyMTQtODdiMDQ4NmI0ODdl"></script> 
<link type="text/css"   id="snipcart-theme"   href="https://app.snipcart.com/themes/base/snipcart.css"   rel="stylesheet" />
<style>
.snipcart-checkout-container {
   z-index: 9999;
}	
</style>	
<!--- /snipcart --->



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
						<img src="images/logo.png" alt="EakinsPressFoundation" class="alignleft">
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
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Publications </a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="publications.cfm?view=art">Art &amp; Architecture</a></li>
										<li><a href="publications.cfm?view=dance">Dance &amp; Music</a></li>
										<li><a href="publications.cfm?view=lit">Literature</a></li>
										<li><a href="publications.cfm?view=photo">Photography</a></li>
									</ul>
									<li><a href="#">Blog</a></li>
									<li class="dropdown">
										<a href="about_the_press.cfm" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">About the Press</a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="about_the_press.cfm">Overview</a></li>
											<li><a href="#">History of the Press</a></li>
											<li><a href="#">Leslie Katz &amp; <br>Appreciations</a></li>
										</ul>
									</li>
									<li><a href="#">Support the Press</a></li>
								</li>
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
								<li class="active"><a href="##">Art &amp; Architecture</a></li>
								<cfelse>
								<li><a href="publications.cfm?view=art">Art &amp; Architecture</a></li>
								</cfif>	
								
								<cfif dance EQ 'true'>
								<li class="active"><a href="##">Dance &amp; Music</a></li>
								<cfelse>
								<li><a href="publications.cfm?view=dance">Dance &amp; Music</a></li>
								</cfif>
								
								<cfif lit EQ 'true'>
								<li class="active"><a href="##">Literature</a></li>
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
								<h3>$#editions.price#</h3>
								<a href="##" class="cart">ADD TO CART</a>
								</cfif>
								--->
								<h3>$#editions.price#</h3>
							<a href="##"
							    class="snipcart-add-item"
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
						<!---	
						<a href="##" class="link">Details</a> 
						--->
						<h2>#bookDetails.colophon#</h2>
						<h2>#bookDetails.specs#</h2>
						<a href="##" class="share">+Share</a> 
						</cfoutput>
					</div>
				</div>
			</div>
			
			<section class="slideshow">
				<div class="mask">
					<div class="slideset">
						<div class="slide">
							<img src="images/img16.jpg" alt="Image Description">
						</div>
						<div class="slide">
							<img src="images/img16.jpg" alt="Image Description">
						</div>
						<div class="slide">
							<img src="images/img16.jpg" alt="Image Description">
						</div>
						<div class="slide">
							<img src="images/img16.jpg" alt="Image Description">
						</div>
					</div>
				</div>
				<a href="#" class="btn-prev"><i class="icon-svg"></i></a>
				<a href="#" class="btn-next"><i class="icon-svg"></i></a>
				<div class="pagination"></div>
			</section>
			<section class="boxes">
				<!-- tabs-area -->
				<div class="tabs-area">
					<div class="container">
						<h1>RELATED MATERIALS</h1>
						<!-- nav-holder -->
							<div class="nav-holder">
								<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
								<li class="active"><a href="#">All</a></li>
								<li><a href="#">Reviews</a></li>
								<li><a href="#">Events</a></li>
								<li><a href="#">Resources</a></li>
							</ul>
							</div>
								<div class="box-holder">
									<article class="box medium">
										<a href="#">
											<img src="images/img13.jpg" alt="Image Description">
										</a>
									</article>
									<article class="box large">
										<a href="#">
											<img src="images/img14.jpg" alt="Image Description">
										</a>
									</article>
									<article class="box medium">
										<a href="#">
											<img src="images/img13.jpg" alt="Image Description">
										</a>
									</article>
									<article class="box medium">
										<a href="#">
											<img src="images/img13.jpg" alt="Image Description">
										</a>
									</article>
									<article class="box large">
										<a href="#">
											<img src="images/img14.jpg" alt="Image Description">
										</a>
									</article>
									<article class="box small">
										<a href="#">
											<img src="images/img12.jpg" alt="Image Description">
										</a>
									</article>
									<article class="box small">
										<a href="#">
											<img src="images/img12.jpg" alt="Image Description">
										</a>
									</article>

									<article class="box large">
										<a href="#">
											<img src="images/img17.jpg" alt="Image Description">
										</a>
									</article>
									<article class="box medium">
										<a href="#">
											<img src="images/img13.jpg" alt="Image Description">
										</a>
									</article>
									<article class="box small">
										<a href="#">
											<img src="images/img12.jpg" alt="Image Description">
										</a>
									</article>
									<article class="box small">
										<a href="#">
											<img src="images/img12.jpg" alt="Image Description">
										</a>
									</article>
									<article class="box medium">
										<a href="#">
											<img src="images/img13.jpg" alt="Image Description">
										</a>
									</article>
									
								</div>
							</div>
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
						<a href="#"><i class="icon-svg2"></i></a>
					</div>
					<address>
						<span><a href="#">Eakins Press Foundation</a></span>
						<span>20 West 44th Street, #405</span>
						<span>New York, NY 10036</span>
						<span><a href="#" class="phone">(212) 764-2255</a></span>
						<span><a href="mailto:&#105;&#110;&#102;&#111;&#064;&#101;&#097;&#107;&#105;&#110;&#115;&#112;&#114;&#101;&#115;&#115;&#046;&#099;&#111;&#109;" class="email">&#105;&#110;&#102;&#111;&#064;&#101;&#097;&#107;&#105;&#110;&#115;&#112;&#114;&#101;&#115;&#115;&#046;&#099;&#111;&#109;</a></span>
					</address>
					<!-- social-networks -->
					<ul class="social-networks">
						<li><a href="#"><i class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-twitter"></i></a></li>
					</ul>
				</div>
				<span class="copyright">&copy;2015 Eakins Press Foundation. Terms and Conditions. <a href="#">Site Credits.</a></span>
			</div>
		</footer>
	</div>
	<!-- include jQuery library -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script type="text/javascript">window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
	
	<!--- larson javascript --->
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="js/handlebars.js"></script>
	<script type="text/javascript" src="js/jquery.serializecfjson-0.2.min.js"></script>
	
	
	<!-- include custom JavaScript -->
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
</body>
</html>