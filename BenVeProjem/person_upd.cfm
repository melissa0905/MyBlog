<h1>PERSON GUNCELLEME SAYFASINA HOSGELDINIZ </h1>
<title>person_upd</title>


<cfform name="form" method="post">
        <cfoutput>
        <div class="col col-12 uniqueRow">
            <div class="row formContent">
                <div class="row" type="row">
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="1" sort="true">
                        <div class="form-group" id="item-Id">
                            <label class="col col-4 col-xs-12">Id</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="id">
                            </div>
                        </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="1" sort="true">
                        <div class="form-group" id="item-Adi">
                            <label class="col col-4 col-xs-12">Adi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Adi" id="Adi">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="item-Soyadi">
                            <label class="col col-4 col-xs-12">Soyadi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Soyadi" id="Soyadi" >
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="3" sort="true">
                        <div class="form-group" id="item-Meslegi">
                            <label class="col col-4 col-xs-12">Meslegi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Meslegi" id="Meslegi" >
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
                   
        <div class="kitap">
		<img src='assets/images/bilgisayar2.jpg'  border="0" height="" alt=" "  />
								
</div>
    </cfform>

    <cfif   IsNumeric('Id')>
     <cfparam name="Form.Id" default="Id" type="integer">
   </cfif>
    
    <cfparam name="Form.Adi" default="" type="string">
    <cfparam name="Form.Soyadi" default="" type="string">
     <cfparam name="Form.Meslegi" default="" type="string">

     <cfquery name="query_upd" datasource="workCubeDSN">

            UPDATE [Persons] SET 
            [Adi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Adi#'>,
            [Soyadi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Soyadi#' >,
            [Meslegi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#Form.Meslegi#' >
            
            WHERE [Id] = <cfqueryparam cfsqltype='cf_sql_integer' value='#Form.Id#'>
    </cfquery>
<cflocation url = "Persons.cfm" addToken = "no">