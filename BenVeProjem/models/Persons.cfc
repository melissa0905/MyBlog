 
<cfcomponent accessors="true">

    <cffunction name="getlist" access="public">
        <cfargument name="Adi" defult="">

        <cfquery name="query_list" datasource="workCubeDSN">
            SELECT * FROM Persons WHERE [Adi] LIKE <cfqueryparam cfsqltype='cf_sql_nvarchar' value='%#arguments.Adi#%'>
        </cfquery>

        <cfreturn query_list>
    </cffunction>

    <cffunction name="getadd" access="public">
        <cfargument name="Id">
        <cfargument name="Adi" >
        <cfargument name="Soyadi" >
        <cfargument name="Meslegi" >
        
        <cfquery name="query_add" datasource="workCubeDSN">
            INSERT INTO [Persons] (Id,Adi,Soyadi,Meslegi)
            VALUES
           (
             <cfqueryparam cfsqltype="cf_sql_integer" value=1222>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value="Albert">,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value="Einstein" >,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value="Bilim Adami">
           )
        </cfquery>
    </cffunction>

    <cffunction name="getrow" access="public">
        <cfargument name="Id">

        <cfquery name="query_row" datasource="workCubeDSN">
            SELECT * FROM [Persons] WHERE [Id] =<cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
        </cfquery>

        <cfreturn query_row>
    </cffunction>

    <cffunction name="upd" access="public">
        
         <cfargument name="Id">
        <cfargument name="Adi" >
        <cfargument name="Soyadi" >
        <cfargument name="Meslegi" >
        
      

        <cfquery name="query_upd" datasource="workCubeDSN">
            UPDATE [Persons] SET 
            [Adi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Adi#'null="#len(arguments.Adi)?'no':'yes'#">,
            [Soyadi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Soyadi#' null="#len(arguments.Soyadi)?'no':'yes'#">,
            [Meslegi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Meslegi#' null="#len(arguments.Meslegi)?'no':'yes'#">
            
            WHERE [Id] = <cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
        </cfquery>
    </cffunction>
<cffunction name="delete" access="public">

        <cfargument name="Id">
        <cfquery name="query_delete" datasource="workCubeDSN">

            DELETE FROM Persons
            WHERE Id = <cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
</cfquery>

    
</cffunction>
</cfcomponent>