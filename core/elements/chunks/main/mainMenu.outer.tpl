{var $param = $_modx->resource.filterParam|fromJSON}
<div class="col-xs-12 no-padding msearch2 loading" id="mse2_mfilter" data-filter="{$param.category}">
    <div class="col-xs-12 no-padding" id="nav">
        <div class="col-xs-12 col-lg-12 no-padding">
            <div class="col-xs-12 no-padding" id="filter-outer">
                {if $_modx->resource.id==1}
                    {var $class = ' main-menu-outer'}
                {/if}
                <div class="hidden-lg-down parents-filter-outer{$class}">
                    {$_modx->runSnippet('pdoMenu',[
                        'parents' => 0,
                        'level' => 1,
                        'where' => '{"class_key:=":"msCategory"}',
                        'tplOuter' => '@INLINE {$wrapper}',
                        'tpl' => '@FILE:chunks/main/mainMenu.row.tpl'
                    ])}
                </div>
            </div>
        </div>
    </div>
</div>