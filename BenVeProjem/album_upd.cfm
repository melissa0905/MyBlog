<title>album_upd</title>
<h1>ALBUM GUNCELLEME SAYFASINA HOSGELDINIZ </h1>
 <td>&nbsp;</td>
 <div class="album">
		<img src='assets/images/Album.jpg'  border="0" height="" alt=" "  />
								
</div>
<cfif not isdefined("Form.Contract")>
<cfset Form.Contract = "N">
</cfif>
<cfform name="Form" method="post"  action="album_upd.cfm">
        <cfoutput>
        <div class="col col-12 uniqueRow">
            <div class="row formContent">
                <div class="row" type="row">
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="1" sort="true">
                        <div class="form-group" id="Form.Id">
                            <label class="col col-4 col-xs-12">Id</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="id">
                            </div>
                        </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="1" sort="true">
                        <div class="form-group" id="Form.Adi">
                            <label class="col col-4 col-xs-12">Album Adi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Adi" id="Adi">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="Form.Sanatci">
                            <label class="col col-4 col-xs-12">Sanatci</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Sanatci" id="Sanatci" >
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="3" sort="true">
                        <div class="form-group" id="Form.YayınTarihi">
                            <label class="col col-4 col-xs-12">Yayin Tarihi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="YayınTarihi" id="YayınTarihi" >
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
         <td>&nbsp;</td>
    <div class="album">
		<img src='assets/images/muzik.jpg'  border="0" height="" alt=" "  />
								
</div>
    
    </cfform>

     <cfparam name="Form.Id" default="Id" type="integer">    
    <cfparam name="Form.Adi" default="" type="string">
    <cfparam name="Form.Sanatci" default="" type="string">
     <cfparam name="Form.YayınTarihi" default="" type="string">
   
     <cfquery name="query_upd" datasource="workCubeDSN">
            UPDATE [Album] SET 
            [Adi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Adi#'>,
            [YayınTarihi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.YayınTarihi#' >,
            [Sanatci] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Sanatci#'>
            
            WHERE [Id] = <cfqueryparam cfsqltype='cf_sql_integer' value='#Form.Id#'>
    </cfquery>

<cflocation url = "Albums.cfm" addToken = "no">