<div class="row">
	<div class="mspc_form">
		<div class="col-xs-12">
			<div class="input-group">
                            <p>Введите промокод (если есть)</p>
				<input type="text" class="mspc_field form-control {if $coupon != ''}{$disfield}{/if}" {if $coupon != ''}disabled{/if} value="[[+coupon]]" placeholder="[[%mspromocode_enter_promocode]]" />
				<span class="input-group-btn">
                                    <button type="button" class="mspc_btn btn btn-success"><i class="fa fa-check"></i></button>
				</span>
			</div>
			<div class="mspc_msg"></div>
		</div>
		<div class="col-xs-12">
                    <div class="mspc_discount_amount" style="display: none; margin-top: 7px;">
                        <div class="col-xs-12 col-md-6 no-padding"> <b>{$_modx->lexicon('mspromocode_discount_amount')}</b>:</div>
                        <div class="col-xs-12 col-md-6 no-padding ta-right">
                             <span>{$discount_amount}</span> 
                            <i class="fa fa-rouble"></i>
                        </div>
                    </div>
		</div>
	</div>
</div>