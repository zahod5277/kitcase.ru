<head>
    <title>{if $_modx->resource.longtitle == ''}{$_modx->resource.pagetitle}{else}{$_modx->resource.longtitle}{/if}</title>
    <base href="{$_modx->config.site_url}">
    <meta name="Description" content="{$_modx->resource.description}">
    <meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1">
    <!--  GET FONTS  -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&subset=all" rel="stylesheet">
    <link rel="stylesheet" href="{$_modx->config.assets_url}templates/default/fa/css/font-awesome.min.css">
    <!--    GET BOOTSTRAP 4 & jQUERY 3    -->
    {$_modx->runSnippet('MinifyX',[
    'minifyCss' => 1,
    'minifyJs' => 0,
    'registerCss' => 'default',
    'cssSources' => 'assets/templates/default/bootstrap.min.css,
        assets/templates/default/tether.min.css,
        assets/templates/default/style.css,
        assets/templates/default/media.css,
        assets/templates/default/mobilemenu.css,
        assets/templates/default/jquery.sidr.light.min.css'
    ])
    }
<link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png"> 
<link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png"> 
<link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png"> 
<link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png"> 
<link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png"> 
<link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png"> 
<link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png"> 
<link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png"> 
<link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png"> 
<link rel="icon" type="image/png" sizes="192x192" href="/android-icon-192x192.png"> 
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png"> 
<link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png"> 
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png"> 
<link rel="manifest" href="/manifest.json"> 
<meta name="msapplication-TileColor" content="#ffffff"> 
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png"> 
<meta name="theme-color" content="#ffffff">
    <!-- Put this script tag to the <head> of your page -->
<script type="text/javascript" src="//vk.com/js/api/openapi.js?132"></script>
{ignore}
<script type="text/javascript">
  VK.init({ apiId: 5657319, onlyWidgets: true });
</script>
{/ignore}
</head>