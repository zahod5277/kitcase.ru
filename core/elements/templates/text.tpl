<!doctype html>
{extends 'file:templates/base.tpl'}
{block 'filter'}

{/block}
{block 'content'}
    <div class="col-xs-12 col-md-10 offset-md-1 card">
        <h1>{$_modx->resource.pagetitle}</h1>
        {$_modx->resource.content}
    </div>
{/block}
