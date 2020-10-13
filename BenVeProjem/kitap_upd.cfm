
<h1>KITAP GUNCELLEME  SAYFASINA HOSGELDINIZ </h1>
<title>kitap_upd</title>
<div class="kitap">
		<img src='assets/images/kitap2.jpg'  border="0" height="" alt=" "  />
								
</div>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<cfif not isdefined("Form.Contract")>
<cfset Form.Contract = "N">
</cfif>
<cfform name="Form" method="post"  action="kitap_upd.cfm">
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
                            <label class="col col-4 col-xs-12">Kitap Adi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Adi" id="Adi">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="Form.Yazar">
                            <label class="col col-4 col-xs-12">Yazar Adi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Yazar" id="Yazar" >
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="3" sort="true">
                        <div class="form-group" id="Form.Yayin">
                            <label class="col col-4 col-xs-12">Yayin Tarihi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Yayin" id="Yayin" >
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
		<img src='assets/images/kitap2.jpg'  border="0" height="" alt=" "  />
								
</div>
    </cfform>
<cfif   IsNumeric('Id')>
     <cfparam name="Form.Id" default="Id" type="integer">
   </cfif>
    
    <cfparam name="Form.Adi" default="" type="string">
    <cfparam name="Form.Yazar" default="" type="string">
     <cfparam name="Form.Yayin" default="" type="string">
   
     <cfquery name="query_upd" datasource="workCubeDSN">
            UPDATE [Books] SET 
            [Adi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Adi#'>,
            [Yazar] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Yazar#' >,
            [Yayin] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Yayin#' >
            
            WHERE [Id] = <cfqueryparam cfsqltype='cf_sql_integer' value='#Form.Id#'>
    </cfquery>

<cflocation url = "Books.cfm" addToken = "no">
