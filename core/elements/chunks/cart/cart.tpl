<div id="msCart" class="col-xs-12">
    {if !count($products)}
        {$_modx->runSnippet('pdoMenu',[
            'parents' => '0',
            'resources' => '23,24,25,26',
            'level' => '1',
            'tplOuter' => '@INLINE <div class="col-xs-12" style="margin-bottom:100px"><h5 style="margin-bottom:15px"> Ваша корзина пуста. Воспользуйтесь меню для перехода в интересующую категорию.</h5>{$wrapper}</div>',
            'tpl' => '@FILE chunks/category/nav.tpl'
        ])}
    {else}
        <div class="cart-outer col-xs-12">
            <div class="hidden-lg-down col-lg-12" id="cart-titles">
                <div class="col-lg-1">
                    <h4 class="centered">Фото</h4>
                </div>
                <div class="col-lg-5">
                    <h4 class="centered">Наименование</h4>
                </div>
                <div class="col-lg-2">
                    <h4 class="centered">Цена</h4>
                </div>
                <div class="col-lg-3">
                    <h4 class="centered">Количество</h4>
                </div>
                <div class="col-lg-1">
                    <h4 class="centered">Удалить</h4>
                </div>
            </div>
            {foreach $products as $product}
                <div class="col-xs-12 no-padding cart-row" id="{$product.key}">
                    <div class="col-xs-4 col-md-3 col-lg-1">
                        <img src="{$product.image}" alt="{$product.pagetitle}" title="{$product.pagetitle}" class="img-fluid"/>
                    </div>
                    <div class="col-xs-8 col-lg-5">
                        {if $product.id?}
                            <span class="cart-product-title">{$product.pagetitle}</span>
                        {else}
                            {$product.name}
                        {/if}
                        {if $product.options?}
                            <div class="small">
                                {$product.options | join : '; '}
                            </div>
                        {/if}
                    </div>
                    <div class="col-xs-6 col-lg-2 cart-product-price">
                        <span>{$product.price}</span> <i class="fa fa-rouble"></i>
                    </div>
                    <div class="col-xs-4 offset-xs-12 col-lg-3 cart-product-count-outer">
                        <form method="post" class="ms2_form" role="form">
                            <input type="hidden" name="key" value="{$product.key}"/>
                            <div class="form-group">
                                <input type="number" min="1" name="count" value="{$product.count}"
                                       class="form-control cart-product-count"/>
                                <span class="hidden-xs"></span>
                                <button class="btn btn-warning" type="submit" name="ms2_action" value="cart/change">
                                    <i class="fa fa-refresh"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="col-xs-4 col-lg-1 cart-product-clear">
                        <form method="post" class="ms2_form">
                            <input type="hidden" name="key" value="{$product.key}">
                            <button class="btn btn-warning" type="submit" name="ms2_action" value="cart/remove">
                                <i class="fa fa-times"></i>
                            </button>
                        </form>
                    </div>
                </div>
            {/foreach}
            <form method="post" class="col-xs-12 col-md-6 col-lg-2">
                <button class="btn btn-default" id="cart-clear" type="submit" name="ms2_action" value="cart/clean">
                    <i class="fa fa-close"></i> {'ms2_cart_clean' | lexicon}
                </button>
            </form>
        </div>
    {/if}
</div>
