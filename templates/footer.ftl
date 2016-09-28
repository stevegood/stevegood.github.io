		</div>
		<div id="push"></div>
    </div>

    <div id="footer">
      <div class="container">
        <p class="muted credit">&copy; 2016 | Mixed with <a href="http://getbootstrap.com/">Bootstrap v3.1.1</a> | Baked with <a href="http://jbake.org">JBake ${version}</a></p>
      </div>
    </div>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/material.min.js"></script>
		<script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/ripples.min.js"></script>
		<script type="text/javascript">
			!(function($){
				$(document).on('ready', function(){
					$.material.init();
					$("a[href^='http']:not([href^='https://" + window.location.host + "'])").attr('target','_blank');
				});
			}(jQuery));
		</script>
		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		  ga('create', 'UA-26916811-1', 'auto');
		  ga('send', 'pageview');

		</script>
  </body>
</html>
