<div class="product-outer col-xs-12">
    <div class="col-xs-3 col-lg-1">
        {$_modx->runSnippet('pdoNeighbors',[
            'tplPrev' => '@INLINE ',
            'tplNext' => '@INLINE ',
            'tplUp' => '@INLINE <a href="javascript:history.go(-1)" title="Назад в категорию"><img src="{$_modx->config.assets_url}templates/default/img/backarrow.png" alt="Назад" class="img-fluid"></a>'
        ])}
    </div>
    <div class="col-xs-9 col-lg-11">
        <h1>{$_modx->resource.pagetitle} <small>№ [[+article:default=`-`]]</small></h1>
    </div>
    <div id="msProduct" class="col-xs-12 no-padding">
        <div class="col-xs-6 col-md-6 offset-lg-1 col-lg-5">
            {$_modx->runSnippet('!msGallery',['tpl' => '@FILE chunks/minishop2/chunk.ms_gallery.tpl'])}
        </div>
        <div class="col-xs-6 col-md-6">
            <form class="form-horizontal ms2_form" method="post">
                <input type="hidden" name="id" value="[[*id]]"/>
                <div class="form-group">
                    <div class="col-md-10 form-control-static no-padding">
                        <span class="price">{$price} <i class="fa fa-rouble"></i></span>
                            {if $old_price > 0}
                            <span class="oldprice">{$old_price} <i class="fa fa-rouble"></i></span>
                            {/if}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10 no-padding">
                        <button type="submit" class="btn btn-warning buy-btn" name="ms2_action" value="cart/add">
                            Купить
                        </button>
                    </div>
                </div>
                <div class="form-group">
                    <input type="hidden" name="count" id="product_price" class="input-sm form-control" value="1"/>
                </div>
            </form>
                    <div class="col-xs-12 no-padding short-delivery">
                        <p><a class="smooth" href="{$_modx->makeUrl($_modx->resource.id)}#contacts">Забрать в магазине</a> - бесплатно</p>
                        <p><a class="smooth" href="{$_modx->makeUrl($_modx->resource.id)}#delivery" title="Доставка чехлов и аксессуаров для мобильных устройств в Москве">Доставка по Москве</a> <span>290 руб.</span></p>
                        <p><a class="smooth" href="{$_modx->makeUrl($_modx->resource.id)}#delivery" title="Доставка чехлов и аксессуаров для мобильных устройств по России">Доставка по России</a> <span>290 руб.</span></p>
                    </div>
        </div>
        <div class="col-xs-12 col-lg-6 no-padding">
                <h2>Описание товара</h2>
                {$_modx->resource.content}
            </div>            
    </div>
</div>