<?php
$pdo = $modx->getService('pdoTools');
if ($tpl == ''){
    $tpl = '@INLINE <span data-model="{$model}" class="col-xs-4 col-md-3 col-lg-2 model">{$model}</span>';
}
$query = $modx->newQuery('modResource');
$query->select('msProduct.model');
$query->leftJoin('msProductData', 'msProduct', 'modResource.id=msProduct.id');
$query->where(array(
   'parent' => $id,
   'template:=' => 5,
));
$query->distinct();
$query->prepare();
$query->stmt->execute();
$results = $query->stmt->fetchAll(PDO::FETCH_ASSOC);
foreach ($results as $result){
    $placeholders = array(
          'model' => $result['model'],
        );
    $output .= $pdo->getChunk($tpl, $placeholders);
}
return $output;

//$query->prepare();
//echo "RAW SQL : ".$query->toSQL();
