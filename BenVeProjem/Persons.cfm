<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="description" content="Clean Slide Responsive Vcard Template" />
	<meta name="keywords" content="jquery, Responsive Vcard, Template, Vcard, Clean Slide" />
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	<meta http-equiv="X-UA-Compatible" content="IE=7" />
	<title>PERSONS</title>
	
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="assets/js/raphael.js" type="text/javascript"></script>
	<script src="assets/js/init.js" type="text/javascript"></script>
</head>
	
<body>
	<cfparam name="attributes.adi" default="">

	<cfobject name="personmodel" type="component" component="calismalar.BenVeProjem.models.Persons">
	<cfset Persondata = personmodel.getlist(attributes.adi)>

	<!-- wrapper -->
	<div class="clr" id="top-head">&nbsp;</div>
	<div id="container">
		<!--header -->
		<div id="header" >
				</div>
				
				<!--head right -->
				<div class="right">
				
					<!--// Navigation //-->
					<div class="menu_nav">
						<div id="nav-wrap">
							<ul class="arrowunderline" id="nav">
								<li class="home"><a href="BenveProjem.cfm">Home</a></li>
								<li class="books" ><a href="Books.cfm">Books</a></li>
								<li class="Films"><a href="Films.cfm">Films</a></li>
								<li class="Actors" ><a href="Actors.cfm">Actors</a></li>
								<li class="Persons" id="selected"><a href="Persons.cfm">Persons</a></li>
								<li class="Album"><a href="Albums.cfm">Albums</a></li>
							</ul>
						</div>
					</div>
					<!--// Navigation End //-->
				</div>
				<!--// -head right end //-->
			<!--// logo bg end //-->
		</div>
		<!--header end -->
		
		<!-- Content Start -->
    
		<!--Card  -->
		<div id="content">
			<div class="card-pattern">
				<!-- blog -->
				<div id="blog">
					<div class="clr">
						<div class="top-bg1">
							<div class="top-left">
								<div><h1>Persons</h1></div>
							</div> 
						</div>
						<div class="clr">
							<div class="pat-bottomleft">&nbsp;</div>
							<div class="pat-bottomright">&nbsp;</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-xl">
             <div class="table-responsive">
	         	<div class="table-wrapper">
			       <div class="table-title">
						<div class="row">
							<div class="col-sm-6">
	
							<div class="col-sm-6">
								
								<p><h2>Ilham <b>Aldiklarim</b></h2></p>
									<table class="table">
  									  <thead>
      									  <tr>
        							  		<th>
											<a href="person_add.cfm" ><h3>Person_Ekle</h3></a> 
											</th>
       								  		<th>
										     <a href="person_upd.cfm" ><h3>Person_Guncelle</h3></a>
											</th>        											  
																	  
       		                            	<th>
										     <a href="person_delete.cfm" ><h3>Person_Sil</h3></a>
											</th>        						
      								  		</tr>
   									 	</thead>
								    </table>
								
								<div class="container">
  
  									<table class="table">
  									  <thead>
      									  <tr>
        							  		<th>Id</th>
       								  		<th>Adi</th>
        							  		<th>Soyadi</th>
 											<th>Meslegi</th>        											  
       
      								  		</tr>
   									 	</thead>
								     <cfquery name="query_list" datasource="workCubeDSN">
           									 SELECT * FROM Persons
        							</cfquery>			
   									 <tbody>
     								  <cfoutput query="Persondata">
            							<tr>
               							 <td>#Id#</td>
                						 <td>#Adi#</td>
               							 <td>#Soyadi#</td>
                						 <td>#Meslegi#</td>
                
               							 <td>
                    						<a href="/Persons.cfm?fuseaction=person&event=upd&id=#Id#"><i class="fa fa-pencil"></i></a>
                						</td>
            							</tr>
        							  </cfoutput>
    	     						</tbody>
  								</table>
							</div>
								
						</div>
	            </div>  <!--Container / wrapper end -->	
	

</body>
</html>