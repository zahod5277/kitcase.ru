<div class="hidden-lg-down offset-lg-1 col-lg-10 no-padding">
    <form action="[[~[[*id]]]]" method="post" id="mse2_filters">
        [[+filters]]
        [[+filters:isnot=``:then=`
        <button type="reset" class="btn btn-default hidden">[[%mse2_reset]]</button>
        <button type="submit" class="btn btn-success pull-right hidden">[[%mse2_submit]]</button>
        <div class="clearfix"></div>
        `]]
    </form>
</div>
</div>
<div class="col-xs-12 no-padding" id="products-row">
    <div class="col-xs-12 offset-lg-1 col-lg-11">
        <h3 class="title">{$_modx->resource.pagetitle}</h3>
    </div>
    <div class="hidden-lg-down col-lg-1"></div>
    <div id="mse2_results" class="col-xs-12 col-lg-10">
        {$results}
    </div>
    <div class="col-xs-12 centered">
        <div class="mse2_pagination col-xs-12 no-padding">
            {$_modx->getPlaceholder('page.nav')}
        </div>
    </div>
    <div class="hidden-lg-down col-lg-1"></div>
</div>