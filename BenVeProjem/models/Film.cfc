 
<cfcomponent accessors="true">

    <cffunction name="getlist" access="public">
        <cfargument name="Adi" defult="">

        <cfquery name="query_list" datasource="workCubeDSN">
            SELECT * FROM Film WHERE [Adi] LIKE <cfqueryparam cfsqltype='cf_sql_nvarchar' value='%#arguments.Adi#%'>
        </cfquery>

        <cfreturn query_list>
    </cffunction>

    <cffunction name="getadd" access="public">
        <cfargument name="Id" required="true" type="integer">
        <cfargument name="Adi" >
        <cfargument name="YayinTarihi" >
        <cfargument name="Tur" >
        <cfargument name="OyuncuId" >
        <cfargument name="OyuncuAdi" >
        
        
        <cfquery name="query_add" datasource="workCubeDSN">
            INSERT INTO Film (Id,Adi,YayinTarihi,Tur,OyuncuId,OyuncuAdi)
            VALUES
           (
             <cfqueryparam cfsqltype="cf_sql_integer" value='#Form.Id#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Adi#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Yayintarihi#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Tur#'>,
             <cfqueryparam cfsqltype="cf_sql_integer" value='#Form.OyuncuId#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.OyuncuAdi#' >,
        )
        
        </cfquery>
    </cffunction>

    <cffunction name="getrow" access="public">
        <cfargument name="Id">

        <cfquery name="query_row" datasource="workCubeDSN">
            SELECT * FROM [Film] WHERE [Id] =<cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
        </cfquery>

        <cfreturn query_row>
    </cffunction>

    <cffunction name="upd" access="public">
        
        <cfargument name="Id">
        <cfargument name="Adi" >
        <cfargument name="YayinTarihi" >
        <cfargument name="Tur" >
        <cfargument name="OyuncuId" >
        <cfargument name="OyuncuAdi" >
        
      

        <cfquery name="query_upd" datasource="workCubeDSN">
            UPDATE [Film] SET 
            [Adi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Adi#'>,
            [YayinTarihi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.YayinTarihi#' >,
            [Tur] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Tur#'>
            [OyuncuId] = <cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.OyuncuId#'>
            [Tur] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.OyuncuAdi#'>
            
            
            WHERE [Id] = <cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
        </cfquery>
    </cffunction>

<cffunction name="delete" access="public">

        <cfargument name="Id">
        <cfquery name="query_delete" datasource="workCubeDSN">

            DELETE FROM Film
            WHERE Id = <cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
</cfquery>

    
</cffunction>

</cfcomponent>