{var $param = $_modx->resource.filterParam|fromJSON}
<div class="col-xs-12 no-padding msearch2" id="mse2_mfilter" data-category="{$param.category}" data-vendor="{$param.vendor}">
    <div class="col-xs-12 no-padding" id="nav">
        <div class="col-xs-12 col-lg-12 no-padding">
            <form action="{$_modx->makeUrl($_modx->resource.id)}" method="post" id="mse2_filters">
                <div class="col-xs-12 no-padding" id="filter-outer">
                    <div class="hidden-lg-down parents-filter-outer">
                        {$_modx->runSnippet('pdoMenu',[
                        'parents' => 0,
                        'level' => 1,
                        'where' => '{"class_key:=":"msCategory"}',
                        'tplOuter' => '@INLINE {$wrapper}',
                        'tpl' => '@FILE:chunks/main/mainMenu.row.tpl'
                    ])}
                    </div>
                    <div class="col-xs-12 col-lg-10 offset-lg-1" id="choice-outer">
                        <span>Ваш выбор: </span>
                        <span class="vendor-id"></span> <span class="model-id"></span>
                        <a href="{$_modx->makeUrl($_modx->resource.id)}" id="resetbtn"><i class="fa fa-remove"></i></a>
                        <button type="submit" class="btn btn-warning hidden">[[%mse2_submit]]</button>
                    </div>
                    {$filters}
                </div>
                [[+filters:isnot=``:then=`
                {*<button type="reset" class="btn btn-default hidden">[[%mse2_reset]]</button>
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