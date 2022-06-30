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

<cfset coldfusion_list = "ColdFusion Lists,ColdFusion Arrays,ColdFusion Structures">
<cfloop list="#coldfusion_list#" index="i">
	<cfoutput> #i#  </cfoutput>
</cfloop>
<br/>

<cfset listtoArr=ListToArray(coldfusion_list)>
<cfset array_name = ArrayNew(1)>
<cfset ArrayAppend(array_name, "Hello")>

<cfoutput>
  #array_name[1]#
</cfoutput>
<br/>

<cfset flag = 0>
<cfif flag eq 1>
  <cflocation url="http://127.0.0.1:8500/study/about.cfm">
</cfif>
<br/>

<cftry>
  <cfquery name="getBooks" datasource="cfbookclub" >
    select * from books
  </cfquery>
  <cfoutput query="getBooks">#GENRE# #BOOKIMAG#<br /></cfoutput>

  <cfcatch type="application">
    <p><strong>Application error<strong><p>
  </cfcatch>
  <cfcatch type="database">
    <p><strong>Database error<strong><p>
  </cfcatch>
  <cfcatch type="any">
    <p><strong>Apologies, an error has occurred. 
    Please try again later.<strong><p>
  </cfcatch>
</cftry>
<br/>

<cfmail to="sudhil.rk@inapp.com"
	from="mytestmail052@gmail.com"
	subject="Welcome to Test CF by SR"
	type="text">
	Dear #firstname#

	We, here at Bedrock, would like to thank you for joining.

	Best wishes
	Barney
</cfmail>
<cfoutput>
    <p>Thank you #firstname# for registering.
    We have just sent you an email.</p>
</cfoutput>

<cfdump  var="#getBooks#">
<cfdump var="#getArts#">
<cfdump var="#firstname#">

<cfinclude  template="./footer.cfm">