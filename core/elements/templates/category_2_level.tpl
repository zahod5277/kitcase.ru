<!doctype html>
{extends 'file:templates/base.tpl'}
{block 'nav'}
{/block}
{block 'filter'}
    {$_modx->runSnippet('!mFilter2',[
        'element' => 'msProducts',
        'parents' => '23,24,25,26',
        'filters' => 'ms|vendor:vendors,ms|model,msoption|tag',
        'tplOuter' => '@FILE chunks/msearch2/chunk.mfilter2.outer2.tpl',
        'aliases' => 'ms|vendor == vendor, ms|model == model',
        'tplFilter.outer.vendor' => '@FILE chunks/msearch2/vendors-outer.tpl',
        'tplFilter.row.vendor' => '@FILE chunks/msearch2/vendors-row.tpl',
        'tplFilter.outer.model' => '@FILE chunks/msearch2/models-outer.tpl',
        'tplFilter.row.model' => '@FILE chunks/msearch2/models-row.tpl',
        'tplFilter.outer.msoption|tag' => '@FILE chunks/msearch2/tag-outer.tpl',
        'tplFilter.row.msoption|tag' => '@FILE chunks/msearch2/tag-row.tpl',
        'limit' => '20',
        'suggestionsRadio' => 'ms|model,ms|vendor',
        'ajaxMode' => 'button',
        'tpl' => '@FILE chunks/category/products_row.tpl',
    ])}
{/block}
{block 'content'}
{/block}
</div>