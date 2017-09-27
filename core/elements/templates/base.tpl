<!doctype html>
<html>
    {block 'head'}
        {include 'file:chunks/common/head.tpl'}
    {/block}
    <body>
        {block 'mobilemenu'}
            {include 'file:chunks/common/mobilemenu.tpl'}
        {/block}
        <div id="panel">
            {block 'header'}
                {include 'file:chunks/common/header.tpl'}
            {/block}
            <div class="wrapper">
                {block 'content'}

                {/block}
                {block 'filter'}
                    {$_modx->runSnippet('!mFilter2',[
                        'element' => 'msProducts',
                        'parents' => $_modx->resource.id,
                        'filters' => 'ms|vendor:vendors,ms|model, msoption|tags',
                        'tplOuter' => '@FILE chunks/msearch2/chunk.mfilter2.outer2.tpl',
                        'aliases' => 'resource|parent == category, ms|vendor == vendor, ms|model == model, msoption|tags == tags',
                        'showEmptyFilters' => false,
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
                        'sortBy' => 'publishedon',
                        'sortdir' => 'ASC',
                        'ajaxMode' => 'button',
                        'tpl' => '@FILE chunks/category/products_row.tpl',
                        ])}
                {/block}
                {block 'footer'}
                    {include 'file:chunks/common/footer.tpl'}
                {/block}
            </div>
        </div>
        {block 'scripts'}
            {include 'file:chunks/common/scripts.tpl'}
        {/block}
        {block 'tocart-modal'}
            {include 'file:chunks/modal/tocart-modal.tpl'}
        {/block}
    </body>
    {ignore}
    <script>
        miniShop2.Callbacks.Cart.add.response.success = function (response) {
            $('#tocart-modal').modal('show')
        }
    </script>
    {/ignore}
</html>