<span class="btn-nav-outer btn-nav-outer--inline">
    {if $id==$_modx->resource.id}
        {var $class = ' btn-nav-active'}
    {/if}
    <a href="{$uri}?category={$id}" data-trigger="parents" data-value="{$id}" class="btn btn-nav fl{$class}">
        {$pagetitle}
    </a>
</span>