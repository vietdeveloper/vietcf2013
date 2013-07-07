<cfset today= DateFormat(now(), 'long') />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="Using ColdFusion 10 for web development" />
    <meta name="keywords" content="web, application, development, coldfusion" />
    <title>Viet ColdFusion 2013</title>
    <!-- Last updated: July 7, 2013 -->
</head>
<body>
    <nav>
    <cfoutput>#today#</cfoutput>&nbsp;|&nbsp;
    <a href="/vietcf2013/">Home</a>&nbsp;|&nbsp;
    <a href="http://127.0.0.1:8500/vietcf2013/resources.cfm">Resources</a>&nbsp;|&nbsp;
    <a href="http://localhost:8500/CFIDE/administrator/" target="_blank">CFAdmin</a>&nbsp;|&nbsp;
    <a href="http://localhost:8500/learncfinaweek/www/" target="_blank">Learn CF In A Week</a>
    </nav>
