<h1>FILM GUNCELLEME SAYFASINA HOSGELDINIZ </h1>

<title>film_upd</title>
 <td>&nbsp;</td>

<div class="kitap">
		<img src='assets/images/filmm.png'  border="0" height="" alt=" "  />
								
</div>
<title>film_add</title>
 <td>&nbsp;</td>
 <td>&nbsp;</td>
<cfif not isdefined("Form.Contract")>
<cfset Form.Contract = "N">
</cfif>
<cfform  id="upd"name="Form" method="post"  action="film_upd.cfm">
        <cfoutput>
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
                    <td><input type="Submit" value="Update"></td>             
                   
             </tr>
                </div>
            </div>
        </div>
       
        </cfoutput>
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
    <cfparam name="Form.OyuncuId" default="">


    
     <cfquery name="query_upd" datasource="workCubeDSN">
            UPDATE [Film] SET 
            [Adi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Adi#'>,
            [YayinTarihi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.YayinTarihi#' >,
            [Tur] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Tur#' >,
            [OyuncuId] = <cfqueryparam cfsqltype='cf_sql_integer' value='#Form.OyuncuId#'>,
            [OyuncuAdi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.OyuncuAdi#'>
            
            WHERE [Id] = <cfqueryparam cfsqltype='cf_sql_integer' value='#Form.Id#'>
    </cfquery>

<cflocation url = "Films.cfm" addToken = "no">