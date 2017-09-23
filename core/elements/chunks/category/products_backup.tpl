    <div class="col-xs-12 no-padding" id="products-row">
        <div class="col-xs-12 offset-lg-1 col-lg-11">
            <h3 class="title">{$_modx->resource.pagetitle}</h3>
        </div>
        <div id="pdopage" class="container">
        <div class="col-xs-12 rows">
            <!--         product-rows      -->
            {$_modx->runSnippet('!pdoPage',[
            'element' => 'msProducts',
            'parents' => $_modx->resource.id,
            'limit' => 10,
            'tpl' => '@FILE:chunks/category/products_row.tpl',
            'ajaxMode' => 'button',
            'ajaxTplMore' => '@INLINE <button class="btn btn-warning btn-more">Загрузить еще</button>'
            ])}
            <!--                end of product-rows              -->
        </div>
        <div class="col-xs-12 col-md-6 offset-md-3 col-lg-2 offset-lg-5">
            {$_modx->getPlaceholder('page.nav')}
        </div>
        </div>    
    </div>