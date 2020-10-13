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
	<title>ALBUMS</title>
	
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

	<cfobject name="albummodel" type="component" component="calismalar.BenVeProjem.models.Album">
	<cfset Albumdata = albummodel.getlist(attributes.adi)>
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
								<li class="Persons" ><a href="Persons.cfm">Persons</a></li>
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
								<div><h1>Albums</h1></div>
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
								<td>&nbsp;</td> 
								<a href="album_delete.cfm" ><h3>Album_sil</h3></a> 
								<th>
											<a href="album_upd.cfm" ><h3>Album_Guncelle</h3></a> 
											</th>
								<p><h2>Albumler ve <b>Ozellikleri</b></h2></p>
								
		<cfform name="form" method="post">
            <div class="col col-12 uniqueRow">
            <div class="row formContent">
                <div class="row" type="row">
                     <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="Id">
                            <label class="col col-4 col-xs-12">Id</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Id" id="Id">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="Adi">
                            <label class="col col-4 col-xs-12">Album Adi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Adi" id="Adi">
                            </div>
                        </div>
                    </div>
                     <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="Sanatci">
                            <label class="col col-4 col-xs-12">Sanatci</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Sanatci" id="Sanatci">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="3" sort="true">
                        <div class="form-group" id="YayinTarihi">
                            <label class="col col-4 col-xs-12"> Yayin Tarihi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="YayinTarihi" id="YayinTarihi">
                            </div>
                        </div>
                    </div>
                   <td>&nbsp;</td>
                    <td><input type="Submit" value="Kaydet">&nbsp;<input type="Reset" value="Reset"></td>
                    </tr>
                </div>
            </div>
        </div>
       
    </cfform>
		<div class="container">
			<table class="table">
  				 <thead>
      				  <tr>
						<th>Id</th>
				  		<th>Album Adi</th>
 						<th>Yayin Tarihi</th> 
						 <th>Sanatci Adi</th>       											  
       
      					</tr>
   					</thead>
					<cfquery name="query_list" datasource="workCubeDSN">
           									 SELECT * FROM Album
        							</cfquery>	 
   				 <tbody>
     			 <cfoutput query="Albumdata">
            		<tr>
                 	 <td>#Id#</td>
                	 <td>#Adi#</td>
               		 <td>#YayinTarihi#</td>
                	 <td>#Sanatci#</td>
										   
					 <td>
                     	<a href="/Albums.cfm?fuseaction=album&event=upd&adi=#Adi#"><i class="fa fa-pencil"></i></a>
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
<div class="album">
		<img src='assets/images/muzik.jpg'  border="0" height="" alt=" "  />
								
</div>

<cfparam name="Form.Id" default="">
<cfparam name="Form.Adi" default="">
<cfparam name="Form.Sanatci" default="">
<cfparam name="Form.YayinTarihi" default="">

<cfquery name="query_add" datasource="workCubeDSN">

            INSERT INTO Album
            VALUES('#Form.Id#', '#Form.Adi#', '#Form.YayinTarihi#','#Form.Sanatci#')
</cfquery>

<script>
	$(function () {
		
	    $("form[name = form]").Submit(  function () {
			$.ajax({
			type:'post'
			url:"models/Album.cfc?method=setData",
			data: $(this).serialize(),
			dataType: "Json",
			method: "getData",
			success : function (response){
				alert(response.message);
			}
		});	

		return false;
			
		});

	   getData();
       function getData(){
		   $.ajax({
		   url: "data/form.json",
		   dataType:"Json",
		   success:function(response){
			  $("<tr>").append(
				  $("<td>").text(response.Adi),
				  $("<td>").text(response.Sanatci),
				  $("<td>").text(response.YayinTarihi)
				  
			  ).appendTo($("table.table tbody"));
		   }		

		});


	   }
	
	});
</script>

