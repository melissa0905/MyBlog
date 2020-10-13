 
<cfcomponent accessors="true">

    <cffunction name="getlist" access="public">
        <cfargument name="Adi" defult="">

        <cfquery name="query_list" datasource="workCubeDSN">
            SELECT * FROM Oyuncu WHERE [Adi] LIKE <cfqueryparam cfsqltype='cf_sql_nvarchar' value='%#arguments.Adi#%'>
        </cfquery>

        <cfreturn query_list>
    </cffunction>

    <cffunction name="getadd" access="public">
        <cfargument name="Id">
        <cfargument name="Adi" >
        <cfargument name="Soyadi" >
        <cfargument name="Yasi" >
        <cfargument name="FilmId" >
        <cfargument name="FilmAdi" >
        
        
        <cfquery name="query_add" datasource="workCubeDSN">
            INSERT INTO Oyuncu (Id,Adi,Soyadi,Yasi,FilmId,FilmAdi)
            VALUES
           (
             <cfqueryparam cfsqltype="cf_sql_integer" value='#Form.Id#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Adi#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Soyadi#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.Yasi#'>,
             <cfqueryparam cfsqltype="cf_sql_integer" value='#Form.FilmId#'>,
             <cfqueryparam cfsqltype="cf_sql_nvarchar" value='#Form.FilmAdi#' >,
        )
        </cfquery>
    </cffunction>

    <cffunction name="getrow" access="public">
        <cfargument name="Id">

        <cfquery name="query_row" datasource="workCubeDSN">
            SELECT * FROM [Oyuncu] WHERE [Id] =<cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
        </cfquery>

        <cfreturn query_row>
    </cffunction>

    <cffunction name="upd" access="public">
        
        <cfargument name="Id">
        <cfargument name="Adi" >
        <cfargument name="Soyadi" >
        <cfargument name="Yasi" >
        <cfargument name="FilmId" >
        <cfargument name="FilmAdi" >
        
      

        <cfquery name="query_upd" datasource="workCubeDSN">
            UPDATE [Oyuncu] SET 
            [Adi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Adi#'>,
            [YayinTarihi] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Soyadi#' >,
            [Tur] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.Yasi#'>
            [OyuncuId] = <cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.FilmId#'>
            [Tur] = <cfqueryparam cfsqltype='cf_sql_nvarchar' value='#arguments.FilmAdi#'>
            
            
            WHERE [Id] = <cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
        </cfquery>
    </cffunction>


<cffunction name="delete" access="public">

        <cfargument name="Id">
        <cfquery name="query_delete" datasource="workCubeDSN">

            DELETE FROM Oyuncu
            WHERE Id = <cfqueryparam cfsqltype='cf_sql_integer' value='#arguments.Id#'>
</cfquery>

    
</cffunction>



</cfcomponent>