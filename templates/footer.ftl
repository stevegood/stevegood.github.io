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
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery-1.11.1.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/bootstrap.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/prettify.js"></script>
		<script type="text/javascript">
			console.log("Initializing...");
			!(function($){
				console.log('jQuery loaded...');
				$(document).on('ready', function(){
					console.log('Document ready!');
					$("a[href^='http']:not([href^='https://" + window.location.host + "'])").each(function(){
						$(this).attr('parent','_blank');
					})
				});
			}(jQuery));
		</script>

  </body>
</html>
