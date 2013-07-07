<cfset today= DateFormat(now(), 'long') />
<cfset msg="Welcome to my ColdFusion 10." />
<cfoutput>
    #today#
    #msg#
</cfoutput>