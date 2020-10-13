<h1>KITAP EKLEME SAYFASINA HOSGELDINIZ </h1>
<div class="kitap">
		<img src='assets/images/kitap2.jpg'  border="0" height="" alt=" "  />
								
</div>

<title>kitap_add</title>
<cfif not isdefined("Form.Contract")>
<cfset Form.Contract = "N">
</cfif>
<cfform id="getadd" name="Form" method="post" action="kitap_add.cfm">
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
                            <label class="col col-4 col-xs-12">Kitap Adi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Adi" id="Adi">
                            </div>
                        </div>
                    </div>
                     <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="3" sort="true">
                        <div class="form-group" id="Yazar">
                            <label class="col col-4 col-xs-12">Yazar Adi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Yazar" id="Yazar">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="4" sort="true">
                        <div class="form-group" id="Yayin">
                            <label class="col col-4 col-xs-12">Yayin Tarihi</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="Yayin" id="Yayin">
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
		<img src='assets/images/kitap2.jpg'  border="0" height="" alt=" "  />
								
</div>
    </cfform>


<cfparam name="Form.Id" default="">
<cfparam name="Form.Adi" default="">
<cfparam name="Form.Yazar" default="">
<cfparam name="Form.Yayin" default="">

<cfquery name="query_add" datasource="workCubeDSN">
            INSERT INTO Books
            VALUES('#Form.Id#', '#Form.Adi#', '#Form.Yazar#', '#Form.Yayin#')
</cfquery>
<cflocation url = "Books.cfm" addToken = "no">

