<!--- List of albums per genre --->
<cfquery name="myQuery" datasource="MvcMusicStore"> 
    SELECT Album.*, Artist.Name Artist 
    FROM Album 
    JOIN Artist ON Artist.ArtistId=Album.ArtistId
    WHERE GenreId=#url.id#
</cfquery>
<cfinclude template="includes/header.cfm" />
<table>
    <tr>
        <th>Title</th>
        <th>Price</th>
        <th>Artist</th>
    </tr>
<cfoutput query="myQuery">
    <tr>
        <td><a href="album.cfm?id=#myQuery.AlbumId#">#myQuery.Title#</a></td>
        <td>#myQuery.Price#</td>
        <td><a href="artist-album.cfm?id=#myQuery.ArtistId#">#myQuery.Artist#</a></td>
    </tr>
</cfoutput>
</table>
<cfinclude template="includes/footer.cfm" />