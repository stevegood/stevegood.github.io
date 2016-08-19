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

  </body>
</html>
