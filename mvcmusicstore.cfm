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
    <tr><td>#myquery.ArtistID#</td><td>#myquery.Name#</td></tr>
</cfoutput>
</table>
<cfinclude template="includes/footer.cfm" />