    <header class="col-xs-12 no-padding cart-header sps sps--abv">
        <div class="hidden-md-down col-lg-1"></div>
        {*<button  id="menu-btn">
            <i class="fa fa-bars" class="toggle-button col-xs-3 col-md-3 hidden-lg-up"></i> Меню
        </button>*}
        <button class="toggle-button col-xs-3 col-md-3 hidden-lg-up" id="menu-btn"><i class="fa fa-bars"></i> Меню</button>
        <div class="col-xs-6 col-md-6 col-lg-2" id="logo-outer">
            <a href="{'1'|url}" title="На главную">
                <img id="logo" src="{$_modx->config.assets_url}templates/default/img/Logo.png" alt="Kitcase. Чехлы для iPhone, Samsung Galaxy, Sony Xperia, HTC" class="img img-fluid">
            </a>
        </div>
        <div class="hidden-md-down col-lg-3 header-outer no-padding cart-search-outer" id="search-outer">
            <div class="col-xs-12 no-padding">
                <span class="phone">{$_modx->config.site_phone}</span>
            </div>
        </div>
        <div class="hidden-lg-down col-lg-1"></div>
    </header>