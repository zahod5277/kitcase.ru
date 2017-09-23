<div class="col-xs-3 col-md-3 col-lg-1 header-outer no-padding {$total_count > 0 ? 'full' : ''}" id="msMiniCart">
    <div class="empty">
        <a href="{$_modx->makeUrl(42)}" title="В корзину">
        <img src="{$_modx->config.assets_url}templates/default/img/cart2.png" alt="">
        </a>
    </div>
    <div class="not_empty">
        <a href="{$_modx->makeUrl(42)}" title="В корзину">
        <img src="{$_modx->config.assets_url}templates/default/img/cart2.png" alt="">
        <span class="ms2_total_count">{$total_count}</span>
        </a>
        <span class="miniprice"><span class="ms2_total_cost">{$total_cost}</span><i class="fa fa-rouble"></i></span>
    </div>
</div>