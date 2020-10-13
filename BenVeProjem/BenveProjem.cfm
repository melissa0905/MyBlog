<cfset myName="Melisa" />
<cfset myPosition="A Developer" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="description" content="Clean Slide Responsive Vcard Template" />
	<meta name="keywords" content="jquery, Responsive Vcard, Template, Vcard, Clean Slide" />
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	<meta http-equiv="X-UA-Compatible" content="IE=7" />
	<title>This is my WebSite</title>
	
	<!-- Loading Google Web fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=IM+Fell+DW+Pica' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
	
	<!-- CSS Files -->
	<link href="assets/css/reset.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/style.css" rel="stylesheet" type="text/css"  id="color" />
	<link href="assets/css/typography.css" rel="stylesheet" type="text/css"  id="customFont"/>
	<link href="assets/css/arial_content.css" rel="stylesheet" type="text/css"  id="contentfont"/>
	
	<!-- include jQuery library -->
	<script type="text/javascript" src="assets/js/jquery-1.7.min.js"></script>

	<script src="assets/js/raphael.js" type="text/javascript"></script>
	<script src="assets/js/init.js" type="text/javascript"></script>
</head>
	
<body>

	<!-- wrapper -->
	<div class="clr" id="top-head">&nbsp;</div>
	<div id="container">
		<!--header -->
		<div id="header" >
			<div class="logo-bg" >
				<!--logo -->
				<div class="logo">
					<li class="home"><a href="BenveProjem.cfm"><h3><blink><em>BEN VE PROJEM</em></blink><br/></h3></a></li>
				</div>
				
				<!--head right -->
				<div class="right">
				
					<!--// Navigation //-->
					<div class="menu_nav">
						<div id="nav-wrap">
							<ul class="arrowunderline" id="nav">
								<li class="home" id="selected"><a href="BenveProjem.cfm">Home</a></li>
								<li class="books"><a href="Books.cfm">Books</a></li>
								<li class="films"><a href="Films.cfm">Films</a></li>
								<li class="actors"><a href="Actors.cfm">Actors</a></li>
								<li class="portfolio"><a href="Persons.cfm">Persons</a></li>
								<li class="contact"><a href="Albums.cfm">Album</a></li>	
							</ul>
						</div>
					</div>
					<!--// Navigation End //-->
				</div>
				<!--// -head right end //-->
			</div>
			<!--// logo bg end //-->
		</div>
		<!--Card  -->
		<div id="content">
			<div class="card-pattern">
				<!--home -->
				<div id="home">
					<div class="clr">
						<div class="top-bg">
							<div class="top-left" >
								<!-- Data Output -->
								<!---This is where the name and position are output--->
								<div class="tag">HELLO, <span>I'M <cfoutput>#myName#</cfoutput>,</span></div>
								<div class="sub-tag"><cfoutput>#myPosition#</cfoutput></div>
							</div> 
						</div>
					</div>
					<div class="clr">
						<div class="pat-topleft">&nbsp;</div>
						<div class="middle"></div>
						<div class="pat-topright">&nbsp;</div>
					</div>
					<div class="clr pat" >
						<p> <span>&nbsp;&nbsp;</span></p>
					</div>
					<div class="clr">
						<div class="pat-bottomleft">&nbsp;</div>
						<div class="pat-bottomright">&nbsp;</div>
					</div>
					<div class="clr">
						
						<div class="special">
						</div>
					</div>
					<div class="clr">
						<div> 
							<div class="coldfusion">
								<img src='assets/images/book.jpg'  border="0" height="" alt=" "  />
								
							</div>
							<div class="jquery">
							 <!---<img src='assets/images/jquery-image.png'  border="0" height="" alt=" " />
								--->
							</div>
							<div class="css">
						<!--		<img src='assets/images/css-image.png'  border="0" height="" alt=" "  />
							-->	
							</div>
							<div class="html">
							<!--	<img src='assets/images/html-image.png' alt=" " height=""  border="0" />-->
							</div>
						</div>
					</div>
					<div class="clr bottom-space"></div>
				</div>
				<!--home end -->
				
				<div class="clr"></div>
			</div><!--card pattern end -->
			<div class="clr "></div>
		</div>		  <!--content end -->	
		<div class="bottom-shade"></div>
	</div>  <!--Container / wrapper end -->	

	</body>
</html>