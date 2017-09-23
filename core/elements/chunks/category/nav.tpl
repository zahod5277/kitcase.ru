{var $par = $_modx->runSnippet('@FILE: snippets/getParent.php', ['id' => $_modx->resource.id])}
<div class="col-lg-3">
    <a href="{$link}" title="{$pagetitle}">
        <button data-trigger="parents" data-value="23" class="btn btn-nav-menu fl">{$pagetitle}</button>
    </a>
</div>