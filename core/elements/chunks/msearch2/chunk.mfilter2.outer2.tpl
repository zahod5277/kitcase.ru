<div class="col-xs-12 no-padding msearch2" id="mse2_mfilter">
    <div class="col-xs-12 no-padding" id="nav">
        <div class="col-xs-12 col-lg-12 no-padding">
            <form action="{$_modx->makeUrl($_modx->resource.id)}" method="post" id="mse2_filters">
                <div class="col-xs-12 no-padding" id="filter-outer">
                {$filters}
                </div>
                [[+filters:isnot=``:then=`
               {* <button type="reset" class="btn btn-default hidden">[[%mse2_reset]]</button>
                <button type="submit" class="btn btn-success pull-right hidden">[[%mse2_submit]]</button>*}
                <div class="clearfix"></div>
                `]]
            </form>
        </div>
    </div>
    <div class="col-xs-12 no-padding" id="products-row">
        <div class="col-xs-12 offset-lg-1 col-lg-11">
            <h3 class="title maintitle">{if $_modx->resource.id == 1}{else}{$_modx->resource.pagetitle}{/if}</h3>
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
    </div>
</div>