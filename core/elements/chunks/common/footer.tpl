    <footer class="col-xs-12 col-md-12 col-lg-10 offset-lg-1" id="mainfooter">
        {block 'delivery-and-stuff'}
        <div class="col-xs-12 col-md-6 col-lg-6" id="delivery">
            <h3 class="title centered">Доставка и оплата</h3>
            <div class="col-xs-12 card">
                <h4>Доставка курьером по Москве</h4>
                <p>Стоимость - 290 р.</p>
                <p>Срок доставки от 1 до 2 дней (при условии наличия товара)</p>
                <p>Способы оплаты: онлайн-оплата, наличными при получении</p>
            </div>
            <div class="col-xs-12 card">
                <h4>Доставка почтой по России</h4>
                <p>Стоимость - 290 р.</p>
                <p>Срок доставки от 5 до 15 дней (в зависимости от удаленности вашего региона от Москвы)</p>
                <p>Способы оплаты: онлайн-оплата</p>
            </div>
            <div class="col-xs-12 card">
                <h4>Самовывоз</h4>
                <p>Вы можете забрать заказ из нашего магазина в день заказа при условии наличия товара</p>
                <p>Способы оплаты: онлайн оплата, наличными при получении, банковской картой при получении</p>
            </div>
        </div>
        <div class="col-xs-12 col-md-6 col-lg-6" id="reviews">
            <h3 class="title centered">Отзывы о нас</h3>
            <div class="col-xs-12 no-padding">
                <!-- Put this div tag to the place, where the Comments block will be -->
                <div id="vk_comments"></div>
                <script type="text/javascript">
                VK.Widgets.Comments("vk_comments", { limit: 5, width: "auto", attach: "*" });
                </script>
            </div>
        </div>
        {/block}
        <div class="col-xs-12" id="contacts-outer">
            <div class="col-xs-12" id="contacts" itemscope itemtype="http://schema.org/Organization">
                <h4 class="centered">Контакты</h4>
                <div class="hidden-lg-up col-xs-12">
                    <p> <img src="{$_modx->config.assets_url}templates/default/img/email-ico.png" alt="" class="bottom-phone-email-ico"><span itemprop="email">Kitcase@ya.ru</span></p>
                    <p> <img src="{$_modx->config.assets_url}templates/default/img/phone_ico.png" alt="" class="bottom-phone-email-ico"><span itemprop="telephone">{$_modx->config.site_phone}</span></p>
                </div>
                <span itemprop="name" class="hidden">Kitcase.ru. Аксессуары для мобильных устройств</span>
                <div class="col-xs-12 col-md-4" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                    <p itemprop="addressLocality">г. Москва</p>
                    <p itemprop="streetAddress">Бульвар Дмитрия Донского, ТЦ "Северное сияние", 1 этаж</p>
                </div>
                <div class="col-xs-12 col-md-4">
                    <p class="centered">10:00 - 22:00 без выходных</p>
                    <div class="col-xs-6 col-md-6 ta-right no-padding centered-ico">
                        <a href="https://www.instagram.com/kitcase.ru/" target="_blank"><img src="{$_modx->config.assets_url}templates/default/img/insta_bottom.png" alt="Kitcase instagram" class="img img-fluid bottom_icons"></a>
                    </div>
                    <div class="col-xs-6 col-md-6 no-padding centered-ico">
                        <a href="https://vk.com/kitcase" target="_blank"><img src="{$_modx->config.assets_url}templates/default/img/vk_bottom.png" alt="Kitcase Вконтакте" class="img img-fluid bottom_icons"></a>
                    </div>
                </div>
                    <!-- я знаю о push и pull, но что-то они тут не работают, поэтому дублирую -->
                <div class="hidden-lg-down col-lg-4">
                    <p> <img src="{$_modx->config.assets_url}templates/default/img/email-ico.png" alt="" class="bottom-phone-email-ico"> Kitcase@ya.ru</p>
                    <p> <img src="{$_modx->config.assets_url}templates/default/img/phone_ico.png" alt="" class="bottom-phone-email-ico">  {$_modx->config.site_phone}</p>
                </div>
            </div>
            <div class="col-xs-12 no-padding" id="maps-outer">
                <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=WyEle7xRZkxRI1rwoUbhJWF0IYEtngIe&amp;width=100%&amp;height=430&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>
            </div>
        </div>
    </footer>
    <div class="col-xs-12 no-padding">
        <div class="col-xs-12 justice-info">
              <p class="marginbottom0px">ИП Каширин Дмитрий Андреевич ОГРНИП 314504005600070 ИНН 504022007956</p>
        </div>
    </div>
<p id="back-top">
    <a href="#top"><i class="fa fa-arrow-up"></i></a>
</p>
<!-- Yandex.Metrika counter -->
<script type="text/javascript">
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter37203930 = new Ya.Metrika({
                    id:37203930,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<!-- /Yandex.Metrika counter -->