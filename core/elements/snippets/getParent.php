<?php
if (!empty($id)){
    $page = $modx->getObject('modResource',$id);
    $parent = $page->get('parent');
}
return $parent;