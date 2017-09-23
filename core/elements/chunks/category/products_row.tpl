<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3 product-row">
    <a href="{$_modx->makeUrl($id)}" title="На страницу товара" class="product-img-wrapper">
        <img src="{$thumb}" alt="{$pagetitle}" class="img-fluid product-img">
    </a>
    <h4 class="product-title">
         <a href="{$_modx->makeUrl($id)}" title="На страницу товара">
         {$pagetitle|truncate:35:"..."}
         </a>
    </h4>
    <div class="col-xs-12 product-price no-padding price-outer">
        <span class="new_price col-xs-6">
            {$price} <span class="hidden-lg-up"><i class="fa fa-rouble"></i></span> <span class="hidden-lg-down">&#8381;</span>
        </span>
        {if $old_price?}
            <span class="old_price col-xs-6">
                {$old_price} <i class="fa fa-rouble"></i>
            </span>
        {/if}
    </div>
    <div class="col-xs-12 no-padding">
        <form action="" class="ms2_form">
         <input type="hidden" name="id" value="{$id}">
            <input type="hidden" name="count" value="1">
            <input type="hidden" name="options" value="[]">
        <button class="btn btn-warning to-cart-btn" type="submit" name="ms2_action" value="cart/add"><i class="fa fa-shopping-cart"></i><span>В корзину</span></button>
        </form>
    </div>
</div>