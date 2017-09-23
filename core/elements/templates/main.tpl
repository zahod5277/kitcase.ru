<!doctype html>
<html>
    {block 'head'}
    {include 'file:chunks/head.tpl'}
    {/block}
<body>
{block 'mobilemenu'}
{include 'file:chunks/mobilemenu.tpl'}
{/block}
<div id="panel">
{block 'header'}
{include 'file:chunks/header.tpl'}
{/block}
<div class="wrapper">
{if $_modx->resource.id == 1}
{include 'file:chunks/main/slider.tpl'}
{/if}
{block 'content'}

{/block}
{block 'filter'}
     {$_modx->runSnippet('!mFilter2',[
                        'element' => 'msProducts',
                        'parents' => '23,24,25,26',
                        'filters' => 'resource|parent:grandparents,ms|vendor:vendors,ms|model, msoption|tags',
                        'tplOuter' => '@FILE chunks/msearch2/chunk.mfilter2.outer2.tpl',
                        'aliases' => 'resource|parent == category, ms|vendor == vendor, ms|model == model, msoption|tags == tags',
                        'showEmptyFilters' => false,
                        'tplFilter.outer.category' => '@FILE chunks/msearch2/grandparents-outer.tpl',
                        'tplFilter.row.category' => '@FILE chunks/msearch2/grandparents-row.tpl',
                        'tplFilter.outer.vendor' => '@FILE chunks/msearch2/vendors-outer.tpl',
                        'tplFilter.row.vendor' => '@FILE chunks/msearch2/vendors-row.tpl',
                        'tplFilter.outer.model' => '@FILE chunks/msearch2/models-outer.tpl',
                        'tplFilter.row.model' => '@FILE chunks/msearch2/models-row.tpl',
                        'tplFilter.outer.tags' => '@FILE chunks/msearch2/tag-outer.tpl',
                        'tplFilter.row.tags' => '@FILE chunks/msearch2/tag-row.tpl',
                        'limit' => '20',
                        'suggestionsMaxFilters' => '5000',
                        'suggestionsMaxResults' => '5000',
                        'suggestionsRadio' => 'ms|model,ms|vendor,resource|parent',
                        'ajaxMode' => 'button',
                        'tpl' => '@FILE chunks/category/products_row.tpl',
                        ])}
{/block}
{block 'footer'}
{include 'file:chunks/footer.tpl'}
{/block}
</div>
</div>
{block 'scripts'}
{include 'file:chunks/scripts.tpl'}
{/block}
{block 'tocart-modal'}
    {include 'file:chunks/tocart-modal.tpl'}
{/block}
</body>
{ignore}
<script>
    miniShop2.Callbacks.Cart.add.response.success = function(response) {
    $('#tocart-modal').modal('show')
}
</script>
{/ignore}
</html>