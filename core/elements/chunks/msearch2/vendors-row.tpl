<label for="mse2_[[+table]][[+delimeter]][[+filter]]_{$idx}" class="col-xs-4 col-md-3 col-lg-2 vendor-item [[+disabled]]" {if $title|lower == 'нет'}style="display:none"{/if}>
        <input type="radio" class="vendors-filter" data-check="{$title}" name="[[+filter_key]]" id="mse2_[[+table]][[+delimeter]][[+filter]]_[[+idx]]" value="[[+value]]" [[+checked]] [[+disabled]]/>
        <span data-value="{$title}" data-trigger="vendor" class="phone-ico col-xs-12 mobile-logo fl">
            {if $title|lower !== 'нет'}
            <img src="{$_modx->config.assets_url}templates/default/img/logos/{$title|lower}.png" alt="{$pagetitle}" class="img img-fluid">
            {/if}
        </span>
</label>