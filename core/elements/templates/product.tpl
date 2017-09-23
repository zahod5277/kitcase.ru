<!doctype html>
{extends 'file:templates/main.tpl'}
{block 'nav'}

{/block}
{block 'filter'}
    
{/block}
{block 'content'}
<div class="hidden-md-down col-lg-1"></div>
<div class="col-xs-12 col-lg-10 no-padding" id="product-content">
{include 'file:chunks/crumbs.tpl'}
{include 'file:chunks/minishop2/chunk.ms_product_content.tpl'}
</div>
<div class="hidden-md-down col-lg-1"></div>
{/block}