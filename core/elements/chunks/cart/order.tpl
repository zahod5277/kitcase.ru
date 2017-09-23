<form class="ms2_form col-xs-12 no-padding" id="msOrder" method="post">
    <h2 class="marginbottom20px">Оформить заказ</h2>
    <div class="col-xs-12 col-lg-4" id="order-delivery-payment">
        {* order delivery      *}
        <div class="card col-xs-12" id="deliveries">
            <h4 class="order-title"><span class="order-step">1</span>{'ms2_frontend_deliveries' | lexicon}:</h4>
            <div class="form-group">
                {var $i = 0}
                {foreach $deliveries as $idx => $delivery}
                    {var $checked = !$order.delivery && $i == 0 || $delivery.id == $order.delivery}
                    {var $i += 1}
                    <div class="checkbox">
                        <label class="delivery input-parent">
                            <input type="radio" name="delivery" value="{$delivery.id}" id="delivery_{$delivery.id}"
                                   data-payments="{$delivery.payments | json_encode}"
                                   {$checked ? 'checked' : ''}>
                            {if $delivery.logo?}
                                <img src="{$delivery.logo}" alt="{$delivery.name}" title="{$delivery.name}"/>
                            {else}
                                <span class="delivery-name">{$delivery.name}</span>
                            {/if}
                            {if $delivery.description?}
                                <p class="small hidden">
                                    {$delivery.description}
                                </p>
                                <i class="fa fa-info-circle tooltips"  data-toggle="modal" data-target="#Modal" aria-hidden="true"></i>
                            {/if}
                        </label>
                    </div>
                {/foreach}
            </div>
        </div>
        {* end order delivery      *}
        {* order payment*}
        <div class="card col-xs-12" id="payments">
            <h4 class="order-title"><span class="order-step">2</span>{'ms2_frontend_payments' | lexicon}:</h4>
            <div class="form-group">
                <div class="checkbox">
                    <label class="payment input-parent">
                        <input type="radio" name="payment" value="1" id="payment_1" checked>
                        Оплата наличными
                    </label>
                </div>
                <div class="checkbox">
                    <select name="payment" class="form-control">
                        <option disabled selected hidden value="">Онлайн-оплата</option>
                        <option value="4" id="payment_4">Яндекс.Деньги</option>
                        <option value="5" id="payment_5">Банковские карты VISA, Maestro, MasterCard</option>
                        <option value="8" id="payment_8">Альфаклик</option>
                        <option value="9" id="payment_9">Сбербанк Онлайн</option>
                        <option value="11" id="payment_11">Промсвязьбанк</option>
                        <option value="12" id="payment_12">QIWI Wallet</option>
                    </select>
                </div>  
            </div>
        </div>
        {* end order payment*}
    </div>
    {* order user *}
    <div class="col-xs-12 col-lg-4" id="user-info">
        <div class="col-xs-12 card">
            <h4 class="order-title"><span class="order-step">3</span>{'ms2_frontend_credentials' | lexicon}:</h4>
            {foreach ['email','receiver','phone'] as $field}
                <div class="form-group input-parent">
                    <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                           name="{$field}" value="{$form[$field]}"
                           class="form-control{($field in list $errors) ? ' error' : ''}">
                </div>
            {/foreach}
            {foreach ['index','region','city'] as $field}
                <div class="form-group input-parent">
                    <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                           name="{$field}" value="{$form[$field]}"
                           class="form-control{($field in list $errors) ? ' error' : ''}">
                </div>
            {/foreach}
            <div class="form-group input-parent">
                {foreach ['street','building','room'] as $field}
                    <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                           name="{$field}" value="{$form[$field]}"
                           class="form-control{($field in list $errors) ? ' error' : ''}">
                {/foreach}
            </div>
        </div>
    </div>
    {* end order user*}
    {*  order confirm  *}
    <div class="col-xs-12 col-lg-4" id="confirm">
        <div class="col-xs-12 card">
            <h4 class="order-title"><span class="order-step">4</span>Подтвердите заказ</h4>
            <div class="col-xs-12 no-padding">
                {$_modx->runSnippet('!mspcForm', ['tpl' => '@FILE chunks/cart/promocode.tpl'])}
            </div>
            <div class="col-xs-12 no-padding">
                <div class="col-xs-6 no-padding">
                    <h4>Итого:</h4>
                </div>
                <div class="col-xs-6 no-padding ta-right">
                    <span id="ms2_order_cost">{$order.cost ?: 0}</span> <i class="fa fa-rouble"></i>
                </div>
            </div>
            <button type="submit" name="ms2_action" value="order/submit" class="btn btn-default btn-warning ms2_link">
                {'ms2_frontend_order_submit' | lexicon}
            </button>
        </div>
    </div>
    {* end order confirm *}
</form>