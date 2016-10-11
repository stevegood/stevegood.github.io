<#include "header.ftl">

	<#include "menu.ftl">

	<div class="well page">
		<div class="page-header">
			<h1><#escape x as x?xml>${content.title}</#escape></h1>
		</div>

		<p><em>${content.date?string("MMMM dd, yyyy")}</em></p>

		<p>${content.body}</p>

		<hr />

		<section class="post-comments">
      <div id="disqus_thread"></div>
      <script type="text/javascript">
        var disqus_shortname = 'stevegood'; // required: replace example with your forum shortname
        var disqus_identifier = '${content.date?string("MMMM.dd.yyyy")}';
        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function() {
          var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
          dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
          (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
      </script>
      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
    </section>
	</div>

<#include "footer.ftl">
