<!doctype html>
<html>
<head>
	<!-- set the encoding of your site -->
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
</head>
<body>
	<!-- main container of all the page elements -->
	<div id="wrapper" class="inner">
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
										
											
										<li class="artNav"><a href="#" onclick="getBooks(3);">Art &amp; Architecture</a></li>
										<li class="danceNav"><a href="#" onclick="getBooks(5);">Dance &amp; Music</a></li>
										<li class="litNav"><a href="#" onclick="getBooks(4);">Literature</a></li>
										<li class="photoNav"><a href="#" onclick="getBooks(2);">Photography</a></li>
										
									</ul>
									<li><a href="#">Blog</a></li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">About the Press</a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">Overview</a></li>
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
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<nav class="left-nav fixed">
							<ul>
								<li class="artNav"><a href="#" onclick="getBooks(3);">Art &amp; Architecture</a></li>
								<li class="danceNav"><a href="#" onclick="getBooks(5);">Dance &amp; Music</a></li>
								<li class="litNav"><a href="#" onclick="getBooks(4);">Literature</a></li>
								<li class="photoNav"><a href="#" onclick="getBooks(2);">Photography</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<!-- tab-content -->
						<div class="content">
							<div class="textarea" id="catText"> <!-- inject text here ---></div>
								<script id="text-template" type="x-handlebars-template">
								{{#each data}}
								<p>{{cattext}}</p>
								{{/each}}
								</script>
						</div>
					</div>
				</div>
			</div>
			<section class="box-area">
				<div class="container">
					<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 hidden-xs"></div>
					<div class="col-lg-9 col-lg-offset-3 col-md-9 col-md-offset-3 col-sm-9 col-sm-offset-3" id="booksDisplay"> <!-- insert content here ---></div>
						<script id="books-template" type="x-handlebars-template">
						{{#each data}}	
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
							<div class="box">
								<a href="book.cfm?slug={{slug}}"><img src="images/img05.jpg" alt="Image Description">
									<header class="head">
										<h1>{{title}}</h1>
										<h2>{{credits}}</h2>
									</header>
								</a>
							</div>
						</div>
						{{/each}} 
						</script>
					
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
	
	<!--- custom javascript --->
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="js/handlebars.js"></script>
	<script type="text/javascript" src="js/jquery.serializecfjson-0.2.min.js"></script>
	  
	<script type="text/javascript">window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
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
	<script>
	 $(document).ready(function(e) {
		 
		 if (getParam("view") == 'art'){
			 	$('.artNav').addClass('active');
			 	bookClass = 3;
			 }else if (getParam("view") == 'dance'){
				 $('.danceNav').addClass('active');
				 bookClass = 5;
				 }
				 else if (getParam("view") == 'lit'){
				 $('.litNav').addClass('active');
				 bookClass = 4;
				 }
				 else if (getParam("view") == 'photo'){
					 $('.photoNav').addClass('active');
					 bookClass = 2;
					 }
				else{
					bookClass = 3;
					}	 	
		 
		 
		 getBooks(bookClass);
		 });
	
	
	</script>
</body>
</html>