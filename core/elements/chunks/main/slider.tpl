    <div class="col-lg-12 no-padding slider" id="slider">
        <div class="hidden-xs col-lg-1"></div>
        <div id="garanties" class="hidden-lg-down col-lg-2 no-padding">
            <p class="garanties-descr">Мы гарантируем:</p>
            <ul>
                <li><i class="fa fa-thumbs-o-up"></i> Качество изделий</li>
                <li><i class="fa fa-percent"></i> Низкие цены</li>
                <li><i class="fa fa-truck"></i> Доставку вовремя</li>
            </ul>
        </div>
        {$_modx->runSnippet('BannerY',[
            'position' => 1,
            'tplWrapper' => '@FILE:chunks/main/slider.outer.tpl',
            'tpl' => '@FILE:chunks/main/slider.row.tpl'
        ])}
        <div class="hidden-xs col-lg-1"></div>
    </div>