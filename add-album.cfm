<!--- 07/08/2013 Add a new album to databases --->
<cfparam name=form.submitted default="0" />
<cfset errTitle=""/>
<cfif form.submitted >
    <cfif !Len(form.price)>
        <cfset form.price = 0/>
    </cfif>
    <cfif len(form.title)>
        <!--- Form submitted with following data: <cfoutput>#form.title#, #form.price#</cfoutput> --->
        <cfquery datasource="MvcMusicStore">
            INSERT INTO Album(GenreId, ArtistId, Title, Price, AlbumArtUrl)
            VALUES( <cfqueryparam cfsqltype="cf_sql_integer" value="1">, 
                    <cfqueryparam cfsqltype="cf_sql_integer" value="1">, 
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.title#">, 
                    <cfqueryparam cfsqltype="cf_sql_numeric" value="#form.price#">, 
                    '/Content/Images/placeholder.gif')										 
        </cfquery>
        <cflocation url = "http://127.0.0.1:8500/vietcf2013/artist-album.cfm?id=1">
    <cfelse>
        <cfset errTitle="Title is required."/>
    </cfif>
</cfif>
<cfinclude template="includes/header.cfm" />
<h1>Add a new album</h1>
<form action="add-album.cfm" method="post" id="form">
    <p>Title: <input type="text" name="title" id="title" size="50"><cfoutput>#errTitle#</cfoutput><p>
    <p>Price: <input type="text" name="price" id="price"></p>
    <input type = "submit" name="submit" class="button" value = "Add">
    <input type="hidden" name="submitted" value="1" />
</form>
<cfinclude template="includes/footer.cfm" />