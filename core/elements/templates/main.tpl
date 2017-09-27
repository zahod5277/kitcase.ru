{extends 'file:templates/base.tpl'}
{block 'content'}
    {include 'file:chunks/main/slider.tpl'}
    {include 'file:chunks/main/mainMenu.outer.tpl'}
{/block}
{block 'filter'}
    <div class="col-xs-12 no-padding" id="products-row">
        <div class="col-xs-12 offset-lg-1 col-lg-11">
            <h3 class="title maintitle">
                {if $_modx->resource.id == 1}
                    Последние поступления
                {else}
                    {$_modx->resource.pagetitle}
                {/if}
            </h3>
        </div>
        <div class="hidden-lg-down col-lg-1"></div>
        <div id="pdopage">
        <div class="col-xs-12 col-lg-10 rows">
            {$_modx->runSnippet('!pdoPage',[
                'element' => 'msProducts',
                'parents' => '23,24,25,26',
                'tplOuter' => '@FILE chunks/msearch2/chunk.mfilter2.outer2.tpl',
                'limit' => '20',
                'ajaxMode' => 'button',
                'tpl' => '@FILE chunks/category/products_row.tpl',
            ])}
        </div>
        <div class="col-xs-12 centered">
            <div class="mse2_pagination col-xs-12 no-padding">
                {$_modx->getPlaceholder('page.nav')}
            </div>
        </div>
        </div>
    </div>
{/block}