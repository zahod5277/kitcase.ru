<?php
if (!empty($title)){
$vendor = $modx->getObject('msVendor', array('name' => $title));
$logo = $vendor->get('logo');
return $logo;
} else return;