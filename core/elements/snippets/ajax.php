<?php
$pdo = $modx->getService('pdoTools');
// Откликаться будет ТОЛЬКО на ajax запросы
if (empty($_SERVER['HTTP_X_REQUESTED_WITH']) || $_SERVER['HTTP_X_REQUESTED_WITH'] != 'XMLHttpRequest') {return;}

// Сниппет будет обрабатывать не один вид запросов, поэтому работать будем по запрашиваемому действию
// Если в массиве POST нет действия - выход
if (empty($_POST['category']) && empty($_POST['category'])) {
    return;
} else {
    $res = '';
     if (!empty($_POST['category'])){
         $category = $_POST['category'];
        // А если есть - работаем
        $res = $pdo->runSnippet('@FILE snippets/model.php',array('id' => $category, 'tpl' => '@FILE: chunks/category/model.tpl'));

     } else if (!empty($_POST['model'])){
         $model = $_POST['model'];
         $res = $pdo->runSnippet('!msProducts', array('where'=>'{model:Galaxy A5}'));
//         $res = 'sssss';
     }
}

// Если у нас есть, что отдать на запрос - отдаем и прерываем работу парсера MODX
if (!empty($res)) {
	die($res);
}