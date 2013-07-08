<!--- 
<cfquery name="myQuery" datasource="cfartgallery"> 
    SELECT * FROM artists 
</cfquery>
<cfdump var="#myQuery#" />
--->
<cfquery name="myQuery" datasource="MvcMusicStore"> 
    SELECT * FROM artist ORDER BY name
</cfquery>
<cfinclude template="includes/header.cfm" />
<p>Pull all artists from MvcMusicStore database in MS SQL 2008R2 Express database</p>
<table>
<tr><th>ID</th><th>Name</th></tr>
<cfoutput query="myQuery">
    <tr><td>#myQuery.ArtistID#</td><td><a href="artist-album.cfm?id=#myQuery.ArtistID#">#myQuery.Name#</a></td></tr>
</cfoutput>
</table>
<cfinclude template="includes/footer.cfm" />