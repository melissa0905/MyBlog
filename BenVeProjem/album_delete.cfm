<title>Album_delete</title>
<h1>ALBUM SILME SAYFASINA HOSGELDINIZ </h1>
<div class="album">
		<img src='assets/images/Album.jpg'  border="0" height="" alt=" "  />
								
</div>
 <td>&nbsp;</td>
<cfif not isdefined("Form.Contract")>
<cfset Form.Contract = "N">
</cfif>
<cfform name="Form" method="post"  action="album_delete.cfm">
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
                    <td>&nbsp;</td>
                    <td><input type="Submit" value="Delete"></td>
                    </tr>
                </div>
            </div>
    
    
    </div>
     <td>&nbsp;</td>
       <div class="album">
		<img src='assets/images/muzik.jpg'  border="0" height="" alt=" "  />
								
</div>
                   
</cfform>


<cfparam name="Form.Id" default="">
<cfquery name="query_delete" datasource="workCubeDSN">
    DELETE FROM Album
    WHERE [Id] = #Form.Id#
</cfquery>


<cflocation url = "Albums.cfm" addToken = "no">