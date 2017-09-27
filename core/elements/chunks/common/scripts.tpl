{var $timestamp = ''|date_format:'%s'}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha384-VjEeINv9OSwtWFLAtmc4JCtEJXXBub00gtSnszmspDLCtC0I4z4nqz7rEFbIZLLU" crossorigin="anonymous"></script>
<script src="{$_modx->config.assets_url}templates/default/js/jquery.smooth-scroll.js"></script>
<script src="{$_modx->config.assets_url}templates/default/js/jquery.sidr.min.js"></script>
<script src="{$_modx->config.assets_url}templates/default/js/scrollPosStyler.js"></script>
<script src="{$_modx->config.assets_url}templates/default/js/slick.min.js"></script>
<script src="{$_modx->config.assets_url}templates/default/js/main.js?{$timestamp}"></script>
{ignore}
<script>
$(document).ready(function() {
    App.init();
});
</script>
{/ignore}