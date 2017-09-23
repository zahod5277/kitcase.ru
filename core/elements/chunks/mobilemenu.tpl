<nav id="sidr" class="hidden-lg-up">
    <div class="col-xs-12" id="menu-inner">
        <form action="{$_modx->makeUrl(304)}" fole="form">
            <input type="text" name="query" class="form-control" id="search2" placeholder="Найти все, что нужно!">
        </form>
        {$_modx->runSnippet('!pdoMenu',[
            'parents' => '0',
            'resources' => '23,24,25,26',
            'level' => '1',
            'tplOuter' => '@INLINE {$wrapper}',
            'tpl' => '@INLINE <a href="{$link}?category={$id}" class="col-xs-6 slide-menu-row">{$pagetitle}</a>'
        ])}
        
        <a href="#delivery" class="smooth col-xs-12 slide-menu-btns centered">Доставка</a>
        <a href="#contacts-outer" class="smooth col-xs-12 slide-menu-btns centered">Контакты</a>
        <a href="#reviews" class="smooth col-xs-12 slide-menu-btns centered">Отзывы</a>
    </div>
        <div class="centered col-xs-12">
            <p class="mobile-menu-phone">{$_modx->config.site_phone}</p>
            <a class="mobile-menu-bottom-soc" href="https://www.instagram.com/kitcase.ru/" target="_blank"><img class="img-fluid" src="{$_modx->config.assets_url}templates/default/img/insta_bottom.png" alt=""></a>
            <a class="mobile-menu-bottom-soc" hef="https://vk.com/kitcase" target="_blank"><img class="img-fluid" src="{$_modx->config.assets_url}templates/default/img/vk_bottom.png" alt=""></a>
        </div>
</nav>