<?php

define('MODX_API_MODE', true);
require 'index.php';
$pdo = $modx->getService('pdoTools');
// Откликаться будет ТОЛЬКО на ajax запросы
if (empty($_SERVER['HTTP_X_REQUESTED_WITH']) || $_SERVER['HTTP_X_REQUESTED_WITH'] != 'XMLHttpRequest') {
return;
}

// Сниппет будет обрабатывать не один вид запросов, поэтому работать будем по запрашиваемому действию
// Если в массиве POST нет действия - выход
if (empty($_POST['trigger'])) {
return;
}

// А если есть - работаем
$products_limit = 20;
$res = '';
$baseParam = array(
    'parents' => '23',
    'element' => 'msProducts',
    'tplOuter' => '@FILE: chunks/msearch2/chunk.mfilter2.outer.tpl',
    'limit' => $products_limit,
    'filters' => 'msoption|tag,ms|vendor',
    'tpl' => '@FILE chunks/category/products_row.tpl'
);
if (!empty($_POST['action'])) {
    switch ($_POST['trigger']) {
        case 'getmodels':
            $category = $_POST['action'];
            $res = $pdo->runSnippet('@FILE snippets/model.php', array(
                'id' => $category,
                'tpl' => '@FILE: chunks/category/model.tpl'));
        break;
        case 'getproducts':
            $model['Data.model'] = $_POST['action'];
            $where = $modx->toJSON($model);
            $baseParam[] = $where;
            $res = $pdo->runSnippet('!mFilter2', $baseParam);
            $res .= '<button class="btn btn-default btn_more jx" data-trigger="more" data-action="2">Загрузить еще</button>';
        break;
        case 'cancel-category':
            $res = $pdo->runSnippet('!mFilter2', array($baseParam));
        break;
        case 'more':
            $action = $_POST['action'];
            $limit = $products_limit * $action;
            $baseParam['limit'] = $limit;
            $res = $pdo->runSnippet('!mFilter2', $baseParam);
            $res .= '<button class="btn btn-default btn_more jx" data-trigger="more" data-action="'.$action++.'">Загрузить еще</button>';
            break;
}
}
if (!empty($res)) {
die($res);
}
