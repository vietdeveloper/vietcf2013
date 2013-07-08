<!--- Album detail --->
<cfquery name="myQuery" datasource="MvcMusicStore"> 
    SELECT Album.*, Artist.Name Artist, Genre.Name Genre 
    FROM Album 
    JOIN Artist ON Artist.ArtistId=Album.ArtistId
    JOIN Genre on Genre.GenreId=Album.GenreId
    WHERE AlbumId=#url.id#
</cfquery>
<cfinclude template="includes/header.cfm" />
<cfoutput>
<h1>#myQuery.Title#</h1>
Artist: <a href="artist-album.cfm?id=#myQuery.ArtistId#">#myQuery.Artist#</a><br>
Genre: <a href="genre.cfm?id=#myQuery.GenreId#">#myQuery.Genre#</a><br>
Price: #myQuery.Price#<br>
</cfoutput>
<cfinclude template="includes/footer.cfm" />