<h1>FILM EKLEME SAYFASINA HOSGELDINIZ </h1>
<div class="kitap">
		<img src='assets/images/filmm.png'  border="0" height="" alt=" "  />
								
</div>
<title>film_add</title>
 <td>&nbsp;</td>
<cfif not isdefined("Form.Contract")>
<cfset Form.Contract = "N">
</cfif>
<cfform id="getadd" name="Form" method="post" action="film_add.cfm">
        <div class="col col-12 uniqueRow">
            <div class="row formContent">
                <div class="row" type="row">
                    
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="1" sort="true">
                        <div class="form-group" id="Id">
                            <label class="col col-4 col-xs-12">Id</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Id" id="Id">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="Adi">
                            <label class="col col-4 col-xs-12">Film Adi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Adi" id="Adi">
                            </div>
                        </div>
                    </div>
                    
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="3" sort="true">
                        <div class="form-group" id="YayinTarihi">
                            <label class="col col-4 col-xs-12">Yayin Tarihi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="YayinTarihi" id="YayinTarihi">
                            </div>
                        </div>
                    </div>
                     <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="Tur">
                            <label class="col col-4 col-xs-12">Tur</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Tur" id="Tur">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="OyuncuId">
                            <label class="col col-4 col-xs-12">OyuncuId </label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="OyuncuId" id="OyuncuId">
                            </div>
                        </div>

                     </div>
                     </div>
                     <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="OyuncuAdi">
                            <label class="col col-4 col-xs-12">Oyuncu </label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="OyuncuAdi" id="OyuncuAdi">
                            </div>
                        </div>
                    </div>
                   <td>&nbsp;</td>
                    <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" value="Clear Form"></td>
                    </tr>
                </div>
            </div>
        </div>
        <div class="kitap">
		<img src='assets/images/films.jpg'  border="0" height="" alt=" "  />
								
</div>
       
    </cfform>

<cfparam name="Form.Id" default="">
<cfparam name="Form.Adi" default="">
<cfparam name="Form.YayinTarihi" default="">
<cfparam name="Form.Tur" default="">
<cfparam name="Form.OyuncuId" default="">
<cfparam name="Form.OyuncuAdi" default="">



<cfquery name="query_add" datasource="workCubeDSN">
            INSERT INTO Film VALUES
           ('#Form.Id#','#Form.Adi#','#Form.YayinTarihi#','#Form.Tur#','#Form.OyuncuId#','#Form.OyuncuAdi#')
</cfquery>

<cflocation url = "Films.cfm" addToken = "no">

