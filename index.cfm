<cfset today= DateFormat(now(), 'long') />
<cfset msg="Welcome to my ColdFusion 10." />
<cfinclude template="includes/header.cfm" />
<cfoutput>
    <p>#today#</p>
    <cfloop index = "count" from = "1" to = "6"> 
        <h#count#>#msg#</h#count#> 
    </cfloop>
</cfoutput>
<cfinclude template="includes/footer.cfm" />