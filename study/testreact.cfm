<cfinclude  template="./header.cfm">

<cfset firstname="Sudhil">
<cfparam name="firstName" default="Raj">

<p>Welcome to my website on ColdFusion cfinclude usage!</p>

<cfoutput>
    Hello #firstName#
    <br />
    <cfif IsDefined("secondName")>
        Hello #secondName#!
    <cfelse>
        Hello stranger!
    </cfif>
</cfoutput>

<br />
<cfset albumSales = 10>
<cfif albumSales lt 100>
  Don't give up your day job!
</cfif>
<br />

<cfquery name="getArts" datasource="cfartgallery" maxrows="10" cachedwithin="#CreateTimeSpan(0,1,0,0)#">
  select *
  from art
</cfquery>
<cfloop query="getArts">
    <cfoutput>
        #artName#<br/>
   </cfoutput>
</cfloop>
<br/>

<cfoutput>
    <div id="root"></div>
</cfoutput>

<script src="./build/static/js/main.d16f69a5.js"></script>
<link rel="stylesheet" href="./build/static/css/main.ae02df9f.css" />

<cfinclude  template="./footer.cfm">