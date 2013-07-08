<cfquery name="myQuery" datasource="MvcMusicStore"> 
    SELECT * FROM Album WHERE album.ArtistId=#url.id# ORDER BY GenreId 
</cfquery>
<cfinclude template="includes/header.cfm" />
<table>
<tr><th>Title</th><th>Price</th></tr>
<cfoutput query="myQuery">
    <tr><td>#myquery.Title#</td><td>#myquery.Price#</td></tr>
</cfoutput>
</table>
<cfinclude template="includes/footer.cfm" />