
<h1>PERSON EKLEME SAYFASINA HOSGELDINIZ </h1>

<cfif not isdefined("Form.Contract")>
<cfset Form.Contract = "N">
</cfif>
<title>person_add</title>

<cfform id="getadd" name="Form" method="post" action="person_add.cfm">
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
                     <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="Soyadi">
                            <label class="col col-4 col-xs-12">Soyadi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Soyadi" id="Soyadi">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="3" sort="true">
                        <div class="form-group" id="Meslegi">
                            <label class="col col-4 col-xs-12">Meslegi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Meslegi" id="Meslegi">
                            </div>
                        </div>
                    </div>
                   <td>&nbsp;</td>
                    <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" value="Clear Form"></td>
                    </tr>
                </div>
            </div>
        </div>
         <td>&nbsp;</td>
                   
<div class="kitap">
		<img src='assets/images/bilgisayar2.jpg'  border="0" height="" alt=" "  />
								
</div>       
    </cfform>
<cfif   IsNumeric('Id')>
     <cfparam name="Form.Id" default="Id" type="integer">
   </cfif>
<cfparam name="Form.Id" default="">
<cfparam name="Form.Adi" default="">
<cfparam name="Form.Soyadi" default="">
<cfparam name="Form.Meslegi" default="">

<cfquery name="query_add" datasource="workCubeDSN">
            INSERT INTO Persons 
            VALUES('#Form.Id#', '#Form.Adi#', '#Form.Soyadi#', '#Form.Meslegi#')
</cfquery>
<cflocation url = "Persons.cfm" addToken = "no">