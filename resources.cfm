<!--- Create a new structure --->
<cfset myStruct = StructNew()>
<cfset val=StructInsert(myStruct, "http://www.adobe.com/devnet.html", "Adobe Developer Connection")>
<cfset val=StructInsert(myStruct, "http://help.adobe.com/en_US/ColdFusion/10.0/CFMLRef/index.html", "Adobe ColdFusion 10")>
<cfset val=StructInsert(myStruct, "http://www.adobe.com/devnet/coldfusion.html", "ColdFusion Developer Center")>
<cfset val=StructInsert(myStruct, "http://learncfinaweek.com/", "Learn CF in a Week")>
<cfset val=StructInsert(myStruct, "http://learncf.com/", "LearnCF.com")>
<cfinclude template="includes/header.cfm" />
<cfloop collection=#myStruct# item="myItem">
    <cfoutput>
        <a href="#myItem#">#MyStruct[myItem]#</a><br>
    </cfoutput>
</cfloop>
<cfinclude template="includes/footer.cfm" />