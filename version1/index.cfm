<!doctype html>
<html>
<head>
	<!-- set the encoding of your site -->
	<meta charset="utf-8">
	<!-- set the viewport width and initial-scale on mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!-- set title of your site -->
	<title>EakinsPressFoundation</title>
	<!-- include the site stylesheets -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link href="css/all.css" rel="stylesheet" type="text/css" media="all" />
	<!--[if lt IE 9]>
		<script type="text/javascript" src="js/ie.js"></script>
	<![endif]-->
	
	
<cfscript>
cageData = CreateObject("Component","data/eakinsData");	
</cfscript>	
</head>
<body>
	<!-- main container of all the page elements -->
	<div id="wrapper">
		<!-- header of the page -->
		<header id="header">
			<div class="container">
				<!-- logo of the page -->
				<div class="logo">
					<a href="#">
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
								<li class="dropdown">
									<a href="publications.cfm" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Publications </a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="publications.cfm?view=art">Art &amp; Architecture</a></li>
										<li><a href="publications.cfm?view=dance">Dance &amp; Music</a></li>
										<li><a href="publications.cfm?view=lit">Literature</a></li>
										<li><a href="publications.cfm?view=photo">Photography</a></li>
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
			<!-- main carousel of the page -->
			<<section class="carousel-area">
				<!-- carousel-holder -->
				<div class="carousel-holder  win-min-height">
					<!-- carousel -->
					<div class="carousel win-height">
						<!-- mask -->
						<div class="mask">
						<!-- slideset -->
							<div class="slideset">
								<!-- slide -->
								<div class="slide">
									<div class="image-area">
										<a href="#"><img src="images/img01.png" alt="Image Description"></a>
									</div>
								</div>
								<!-- slide -->
								<div class="slide">
									<div class="image-area">
										<a href="#"><img src="images/img15.jpg" alt="Image Description"></a>
									</div>
								</div>
								<!-- slide -->
								<div class="slide">
									<div class="image-area">
										<a href="#"><img src="images/img03.png" alt="Image Description"></a>
									</div>
								</div>
								<!-- slide -->
								<div class="slide">
									<div class="image-area">
										<a href="#"><img src="images/img01.png" alt="Image Description"></a>
									</div>
								</div>
								<!-- slide -->
								<div class="slide">
									<div class="image-area">
										<a href="#"><img src="images/img15.jpg" alt="Image Description"></a>
									</div>
								</div>
								<!-- slide -->
								<div class="slide">
									<div class="image-area">
										<a href="#"><img src="images/img03.png" alt="Image Description"></a>
									</div>
								</div>
 							</div>
						</div>
					</div>
					<a href="#publications" class="down"><i class="icon-svg"></i></a>
				</div>
			</section>
			<!-- publications -->
			<section class="publications" id="publications">
				<div class="container">
					<h1>PUBLICATIONS</h1>
					<!-- tabs-area -->
					<section class="tabs-area">
						<!-- nav-holder -->
						<div class="nav-holder">
							<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
							<li class="active"><a href="#tab1" data-toggle="tab">Art &amp; Architecture</a></li>
							<li><a href="#tab2" data-toggle="tab">Dance &amp; Music</a></li>
							<li><a href="#tab3" data-toggle="tab">Literature</a></li>
							<li><a href="#tab4" data-toggle="tab">Photography</a></li>
						</ul>
						</div>
						<!-- tab-content -->
						<div id="my-tab-content" class="tab-content">
							<!-- tab-1 -->
							<div class="tab-pane active" id="tab1">
								<div class="textarea">
									<p>Showcasing the works of such celebrated artists as Elie Nadelman, Augustus St. Gaudens, Raoul Hague, Mary Frank, and Louis Sullivan, these elegant monographs provide rare insight into each subject’s process and history through distinctive presentation and critical scholarship.</p>
								</div>
							</div>
							<!-- tab-2 -->
							<div class="tab-pane" id="tab2">
								<div class="textarea">
									<p>Showcasing the works of such celebrated artists as Elie Nadelman, Augustus St. Gaudens, Raoul Hague, Mary Frank, and Louis Sullivan, these elegant monographs provide rare insight into each subject’s process and history through distinctive presentation and critical scholarship.</p>
								</div>
							</div>
							<!-- tab-3 -->
							<div class="tab-pane" id="tab3">
								<div class="textarea">
									<p>Showcasing the works of such celebrated artists as Elie Nadelman, Augustus St. Gaudens, Raoul Hague, Mary Frank, and Louis Sullivan, these elegant monographs provide rare insight into each subject’s process and history through distinctive presentation and critical scholarship.</p>
								</div>
							</div>
							<!-- tab-4 -->
							<div class="tab-pane" id="tab4">
								<div class="textarea">
									<p>Showcasing the works of such celebrated artists as Elie Nadelman, Augustus St. Gaudens, Raoul Hague, Mary Frank, and Louis Sullivan, these elegant monographs provide rare insight into each subject’s process and history through distinctive presentation and critical scholarship.</p>
								</div>
							</div>
						</div>
					</section>
					<div class="scroll-block">
						<!-- jcf-scrollable -->
						<div class="slider">
							<div class="mask jcf-scrollable">
								<div class="slideset">
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img04.jpg" alt="Image Description">
												<header class="head">
													<h2>Magicians &amp; Charlatans</h2>
													<h3>Jed Perl</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
												<a href="#"><img src="images/img05.jpg" alt="Image Description">
												<header class="head">
													<h2>Lay This Laurel - <br>Special Edition</h2>
													<h3>Essay by Lincoln Kirstein, photographs by Richard Benson</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img06.jpg" alt="Image Description">
												<header class="head">
													<h2>Lincoln Kirstein, <br>a First Bibliography</h2>
													<h3>Compiled by Harvey Simmonds, Louis Silverstein and Nancy Lassa...</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img07.jpg" alt="Image Description">
												<header class="head">
													<h2>A System of <br>Architectural Ornament</h2>
													<h3>Louis Sullivan</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img04.jpg" alt="Image Description">
												<header class="head">
													<h2>Magicians &amp; Charlatans</h2>
													<h3>Jed Perl</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
												<a href="#"><img src="images/img05.jpg" alt="Image Description">
												<header class="head">
													<h2>Lay This Laurel - <br>Special Edition</h2>
													<h3>Essay by Lincoln Kirstein, photographs by Richard Benson</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img06.jpg" alt="Image Description">
												<header class="head">
													<h2>Lincoln Kirstein, <br>a First Bibliography</h2>
													<h3>Compiled by Harvey Simmonds, Louis Silverstein and Nancy Lassa...</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img07.jpg" alt="Image Description">
												<header class="head">
													<h2>A System of <br>Architectural Ornament</h2>
													<h3>Louis Sullivan</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img04.jpg" alt="Image Description">
												<header class="head">
													<h2>Magicians &amp; Charlatans</h2>
													<h3>Jed Perl</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
												<a href="#"><img src="images/img05.jpg" alt="Image Description">
												<header class="head">
													<h2>Lay This Laurel - <br>Special Edition</h2>
													<h3>Essay by Lincoln Kirstein, photographs by Richard Benson</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img06.jpg" alt="Image Description">
												<header class="head">
													<h2>Lincoln Kirstein, <br>a First Bibliography</h2>
													<h3>Compiled by Harvey Simmonds, Louis Silverstein and Nancy Lassa...</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img07.jpg" alt="Image Description">
												<header class="head">
													<h2>A System of <br>Architectural Ornament</h2>
													<h3>Louis Sullivan</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img04.jpg" alt="Image Description">
												<header class="head">
													<h2>Magicians &amp; Charlatans</h2>
													<h3>Jed Perl</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
												<a href="#"><img src="images/img05.jpg" alt="Image Description">
												<header class="head">
													<h2>Lay This Laurel - <br>Special Edition</h2>
													<h3>Essay by Lincoln Kirstein, photographs by Richard Benson</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img06.jpg" alt="Image Description">
												<header class="head">
													<h2>Lincoln Kirstein, <br>a First Bibliography</h2>
													<h3>Compiled by Harvey Simmonds, Louis Silverstein and Nancy Lassa...</h3>
												</header>
											</a>
										</div>
									</div>
									<div class="slide">
										<div class="holder">
											<a href="#"><img src="images/img07.jpg" alt="Image Description">
												<header class="head">
													<h2>A System of <br>Architectural Ornament</h2>
													<h3>Louis Sullivan</h3>
												</header>
											</a>
										</div>
									</div>
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
				<span class="copyright">&copy;2015 Eakins Press Foundation. <br>Terms and Conditions. <a href="#">Site Credits.</a></span>
			</div>
		</footer>
	</div>
	<!-- include jQuery library -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
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
</body>
</html>