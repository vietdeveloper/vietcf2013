<!--- Album detail --->
<cfquery name="myQuery" datasource="MvcMusicStore"> 
    SELECT Album.Title, Album.Price, Artist.Name Artist, Genre.Name Genre 
    FROM Album 
    JOIN Artist ON Artist.ArtistId=Album.ArtistId
    JOIN Genre on Genre.GenreId=Album.GenreId
    WHERE AlbumId=#url.id#
</cfquery>
<cfinclude template="includes/header.cfm" />
<cfoutput>
<h1>#myQuery.Title#</h1>
<p>Artist: #myQuery.Artist#</p>
<p>Genre: #myQuery.Genre#</p>
<p>Price: #myQuery.Price#</p>
</cfoutput>
<cfinclude template="includes/footer.cfm" />