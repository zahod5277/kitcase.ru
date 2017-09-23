{$_modx->runSnippet('!pdoCrumbs',[
'showHome' => 1,
'tplWrapper' => '@INLINE <ol class="breadcrumb hidden-lg-down">{$output}</ol>',
'tpl' => '@INLINE <li class="breadcrumb-item"><a href="{$link}" title="{$pagetitle}">{$pagetitle}</a></li>'
'tplCurrent' => '@INLINE <li class="breadcrumb-item active">{$menutitle}</li>'
])}