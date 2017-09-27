    <header class="col-xs-12 no-padding sps sps--abv">
        <div class="hidden-md-down col-lg-1"></div>
        {*<button  id="menu-btn">
            <i class="fa fa-bars" class="toggle-button col-xs-3 col-md-3 hidden-lg-up"></i> Меню
        </button>*}
        <button class="toggle-button col-xs-3 col-md-3 hidden-lg-up" id="menu-btn"><i class="fa fa-bars"></i> Меню</button>
        <div class="col-xs-6 col-md-6 col-lg-2" id="logo-outer">
            {if $_modx->resource.id == 1}
            <img id="logo" src="{$_modx->config.assets_url}templates/default/img/Logo.png" alt="Kitcase. Чехлы для iPhone, Samsun Galaxy, Sony Xperia, HTC" class="img img-fluid">
            {else}
                <a href="{$_modx->makeUrl(1)}" title="На главную">
                <img id="logo" src="{$_modx->config.assets_url}templates/default/img/Logo.png" alt="Kitcase. Чехлы для iPhone, Samsun Galaxy, Sony Xperia, HTC" class="img img-fluid">
                </a>
            {/if}
        </div>
        <div class="hidden-md-down col-lg-3 header-outer no-padding" id="search-outer">
            <div class="col-xs-12 no-padding">
                <span class="phone">{$_modx->config.site_phone}</span>
                 <span class="socials-icon">
                     <a href="https://www.instagram.com/kitcase.ru/" target="_blank"><img src="{$_modx->config.assets_url}templates/default/img/insta.png" alt=""></a>
                     <a href="https://vk.com/kitcase" target="_blank"><img src="{$_modx->config.assets_url}templates/default/img/vk.png" alt=""></a>
                </span>
            </div>
            <div class="col-xs-12 no-padding search-form">
                <form action="{$_modx->makeUrl(304)}" role="form">
                    <div class="form-group">
                        <input type="text" name="query" id="search" placeholder="Найти то, что нужно!" class="form-control">
                        <button class="zoom-zoom" type="submit"></button>
                    </div>
                </form>
            </div>
        </div>
        <div class="hidden-md-down col-lg-4 header-outer no-padding" id="header-menu-outer">
            <a href="#delivery" class="smooth header-menu">Доставка</a>
            <a href="#contacts-outer" class="smooth header-menu">Контакты</a>
            <a href="#reviews" class="smooth header-menu">Отзывы</a>
        </div>
        {$_modx->runSnippet('!msMiniCart',['tpl' => '@FILE: chunks/cart/minicart.tpl'])}
        <div class="hidden-lg-down col-lg-1"></div>
    </header>