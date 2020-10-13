 
<cfcomponent accessors="true">

    <cffunction name="getlist" access="public">
        <cfargument name="Adi" defult="">

        <cfquery name="query_list" datasource="workCubeDSN">
            SELECT * FROM Books WHERE [Adi] LIKE <cfqueryparam cfsqltype='cf_sql_nvarchar' value='%#arguments.Adi#%'>
        </cfquery>

        <cfreturn query_list>
    </cffunction>

    <cffunction name="getadd" access="public">
        <cfargument name="Id" required="true" type="integer">
        <cfargument name="Adi"  required="true" type="string">
        <cfargument name="Yazar"  required="true" type="string">
        <cfargument name="Yayin" required="true" type="string" >
        
        <cfquery name="query_add" datasource="workCubeDSN">
            INSERT INTO Books (Id,Adi,Yazar,Yayin)
            VALUES
           (
             <cfqueryparam cfsqltype="cf_sql_integer" value='#Form.Id#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Adi#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Yazar#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Yayin#'>
           )
        </cfquery>
    </cffunction>

    <cffunction name="getrow" access="public">
        <cfargument name="Id">

        <cfquery name="query_row" datasource="workCubeDSN">
            SELECT * FROM [Books] WHERE [Id] =<cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
        </cfquery>

        <cfreturn query_row>
    </cffunction>

    <cffunction name="upd" access="public">
        
        <cfargument name="Id">
        <cfargument name="Adi">
        <cfargument name="Yazar" default="">
        <cfargument name="Yayin" default="">
      

        <cfquery name="query_upd" datasource="workCubeDSN">
            UPDATE [Books] SET 
            [Adi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Adi#'>,
            [Yazar] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Yazar#' null="#len(arguments.Yazar)?'no':'yes'#">,
            [Yayin] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Yayin#' null="#len(arguments.Yayin)?'no':'yes'#">
            
            WHERE [Id] = <cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
        </cfquery>
    </cffunction>


<cffunction name="delete" access="public">

        <cfargument name="Id">
        <cfquery name="query_delete" datasource="workCubeDSN">

            DELETE FROM Books
            WHERE Id = <cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
</cfquery>

    
</cffunction>

</cfcomponent>