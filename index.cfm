<cfset msg="Welcome to my ColdFusion 10." />
<cfinclude template="includes/header.cfm" />
<cfoutput>
    <cfloop index = "count" from = "1" to = "6"> 
        <h#count#>#msg#</h#count#> 
    </cfloop>
</cfoutput>
<cfinclude template="includes/footer.cfm" />