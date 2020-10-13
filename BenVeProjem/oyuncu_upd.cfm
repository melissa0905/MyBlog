<title>oyuncu_upd</title>
<h1>OYUNCU GUNCELLEME SAYFASINA HOSGELDINIZ </h1>

 <td>&nbsp;</td>

<div class="kitap">
		<img src='assets/images/filmm.png'  border="0" height="" alt=" "  />
								
</div>
<cfif not isdefined("Form.Contract")>
<cfset Form.Contract = "N">
</cfif>
<cfform  id="upd"name="Form" method="post"  action="oyuncu_upd.cfm">
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
                            <label class="col col-4 col-xs-12">Adi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Adi" id="Adi">
                            </div>
                        </div>
                    </div>
                     <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="3" sort="true">
                        <div class="form-group" id="Soyadi">
                            <label class="col col-4 col-xs-12">Soyadi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Soyadi" id="Soyadi">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="4" sort="true">
                        <div class="form-group" id="Yasi">
                            <label class="col col-4 col-xs-12">Yasi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Yasi" id="Yasi">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="5" sort="true">
                        <div class="form-group" id="FilmId">
                            <label class="col col-4 col-xs-12">FilmId</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="FilmId" id="FilmId">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="6" sort="true">
                        <div class="form-group" id="FilmAdi">
                            <label class="col col-4 col-xs-12">FilmAdi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="FilmAdi" id="FilmAdi">
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
    <cfparam name="Form.Soyadi" default="">
    <cfparam name="Form.Yasi" default="">
    <cfparam name="Form.FilmId" default="">
    <cfparam name="Form.FilmAdi" default="">
  


    
     <cfquery name="query_upd" datasource="workCubeDSN">
            UPDATE [Oyuncu] SET 
            [Adi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Adi#'>,
            [Soyadi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Soyadi#' >,
            [Yasi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Yasi#' >,
            [FilmId] = <cfqueryparam cfsqltype='cf_sql_integer' value='#Form.FilmId#'>,
            [FilmAdi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.FilmAdi#'>
            
            WHERE [Id] = <cfqueryparam cfsqltype='cf_sql_integer' value='#Form.Id#'>
    </cfquery>

<cflocation url = "Actors.cfm" addToken = "no">