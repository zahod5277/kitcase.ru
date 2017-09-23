<div class="col-xs-12 no-padding" id="nav">
    <div class="hidden-lg-down col-lg-1"></div>
    <div class="hidden-lg-down col-lg-10 no-padding">
        {$_modx->runSnippet('!pdoMenu',[
            'parents' => '0',
            'resources' => '23,24,25,26',
            'level' => '1',
            'tplOuter' => '@INLINE {$wrapper}',
            'tpl' => '@FILE chunks/category/nav.tpl'
        ])}
    </div>
    <div class="hidden-lg-down col-lg-1"></div>