    <div class="col-xs-12 no-padding" id="products-row">
        <div class="col-xs-12 offset-lg-1 col-lg-11">
            <h3 class="title">Популярные товары</h3>
        </div>
        <div class="hidden-xs col-lg-1"></div>
        <div class="col-xs-12 col-lg-10" id="products">
            <!--         product-rows      -->
            {$_modx->runSnippet('!mFilter2',[
                        'element' => 'msProducts',
                        'parents' => '23,24,25,26',
                        'filters' => 'resource|parent:grandparents,ms|vendor:vendors,ms|model,msoption|tag',
                        'tplOuter' => '@FILE chunks/msearch2/chunk.mfilter2.outer.tpl',
                        'tplFilter.outer.resource|parent' => '@FILE chunks/msearch2/grandparents-outer.tpl',
                        'tplFilter.row.resource|parent' => '@FILE chunks/msearch2/grandparents-row.tpl',
                        'tplFilter.outer.ms|vendor' => '@FILE chunks/msearch2/vendors-outer.tpl',
                        'tplFilter.row.ms|vendor' => '@FILE chunks/msearch2/vendors-row.tpl',
                        'limit' => '20',
                        'ajaxMode' => 'button',
                        'tpl' => '@FILE chunks/category/products_row.tpl',
                        ])}
            <!--                end of product-rows              -->
        </div>
        <div class="hidden-xs col-lg-1"></div>
        <div class="col-xs-12 col-md-6 offset-md-3 col-lg-2 offset-lg-5">
            <button class="btn btn-warning btn-more">Загрузить еще</button>
        </div>
    </div>