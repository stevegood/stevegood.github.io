<#include "header.ftl">

	<#include "menu.ftl">

	<!-- <div class="jumbotron">
		<strong>Steve Good</strong> is a software developer and photographer.  Connect with him on social media!
	</div> -->

	<#list posts as post>
  		<#if (post.status == "published")>
  			<div class="well page">
					<a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
	  			<p>${post.date?string("MMMM dd, yyyy")}</p>
					<hr />
	  			<p>${post.body}</p>
  			</div>
  		</#if>
  	</#list>

	<hr />

	<p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
