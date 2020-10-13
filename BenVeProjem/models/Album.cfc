<cfcomponent >
    <cffunction name = "setData" returnType = "boolean" access = "remote" returnFormat="JSON">
       <cfargument name="Adi" type="string" required="true"> 
        <cfargument name="Sanatci" type="string" required="true">
         <cfargument name="YayinTarihi" type="string" required="true">
         
         <cfset data={
             Id:arguments.Id,
             Adi:arguments.Adi,
             Sanatci:arguments.Sanatci,
             YayinTarihi:arguments.YayinTarihi
         }/>
         <cfset dataJson= SerializeJson(data) />
        <cftry>
    
         <cffile action = "write" file = "C:\ColdFusion2018\cfusion\wwwroot\calismalar\BenVeProjem\data\form.json" output = "#dataJson#" charset = "utf-8" >
         <cfset response ={
             status: true,
             messsage:"Kayıt başarılı"
         } />
         <cfcatch type = "any">
             <cfset response ={
                 status:false,
                 messsage:"Kayıt başarısız"
             }>
         </cfcatch>
    
         </cftry>   

        <cfreturn Replace(SerializeJson (response) ,"//","") />    
    </cffunction>




    
     <cffunction name="getlist" access="public">
        <cfargument name="Adi" defult="">

        <cfquery name="query_list" datasource="workCubeDSN">
            SELECT * FROM Album WHERE [Adi] LIKE <cfqueryparam cfsqltype='cf_sql_nvarchar' value='%#arguments.Adi#%'>
        </cfquery>

        <cfreturn query_list>
    </cffunction>
    
    <cffunction name="getadd" access="public">
        <cfargument name="Id" required="true" type="integer">
        <cfargument name="Adi"  required="true" type="string">
        <cfargument name="YayinTarihi"  required="true" type="string">
        <cfargument name="Sanatci" required="true" type="string" >
        
        <cfquery name="query_add" datasource="workCubeDSN">
            INSERT INTO Album (Id,Adi,YayinTarihi,Sanatci)
            VALUES
           (
             <cfqueryparam cfsqltype="cf_sql_integer" value='#Form.Id#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Adi#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.YayinTarihi#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Sanatci#'>
           )
        </cfquery>
    </cffunction>

</cfcomponent>