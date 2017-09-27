<!doctype html>
{extends 'file:templates/base.tpl'}
{block 'header'}
    {include 'file:chunks/cart/header.tpl'}
{/block}
{block 'filter'}

{/block}
{block 'content'}
    <div class="hidden-md-down col-lg-1"></div>
    <div class="col-xs-12 col-lg-10 no-padding" id="product-content">
        <h1>{$_modx->resource.pagetitle}</h1>
        {$_modx->runSnippet('!msCart',['tpl' => '@FILE:chunks/cart/cart.tpl'])}
        {$_modx->runSnippet('!msOrder',['tpl' => '@FILE:chunks/cart/order_backup.tpl'])}
        {$_modx->runSnippet('!msGetOrder', ['tpl' => '@FILE: chunks/cart/getorder.tpl'])}
        {* modal window for tooltips *}
        <!-- Modal -->
        <div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="ModalLabel"></h4>
                    </div>
                    <div class="modal-body" id="modalbody">
                        <p></p>
                    </div>
                </div>
            </div>
        </div>
        {*end modal*}
    </div>
    <div class="hidden-md-down col-lg-1"></div>
{/block}
{block 'footer'}
    <footer class="col-xs-12 col-md-12 col-lg-10 offset-lg-1 no-padding" id="mainfooter">
        {block 'delivery-and-stuff'}
        {/block}
        <div class="col-xs-12 no-padding" id="contacts-outer">
            <div class="col-xs-12" id="contacts" itemscope itemtype="http://schema.org/Organization">
                <h4 class="centered">Контакты</h4>
                <div class="hidden-lg-up col-xs-12">
                    <p> <img src="{$_modx->config.assets_url}templates/default/img/email-ico.png" alt="" class="bottom-phone-email-ico"><span itemprop="email">Kitcase@ya.ru</span></p>
                    <p> <img src="{$_modx->config.assets_url}templates/default/img/phone_ico.png" alt="" class="bottom-phone-email-ico"><span itemprop="telephone">8 (495) 295-05-02</span></p>
                </div>
                <span itemprop="name" class="hidden">Kitcase.ru. Аксессуары для мобильных устройств</span>
                <div class="col-xs-12 col-md-4" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                    <p itemprop="addressLocality">г. Москва</p>
                    <p itemprop="streetAddress">Бульвар Дмитрия Донского, ТЦ "Североное сияние", 1 этаж</p>
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
                    <p> <img src="{$_modx->config.assets_url}templates/default/img/phone_ico.png" alt="" class="bottom-phone-email-ico">  8 (495) 295-05-02</p>
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
    <!-- Yandex.Metrika counter -->
    <script type="text/javascript">
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function () {
                try {
                    w.yaCounter37203930 = new Ya.Metrika({
                        id: 37203930,
                        clickmap: true,
                        trackLinks: true,
                        accurateTrackBounce: true,
                        webvisor: true
                    });
                } catch (e) {
                }
            });

            var n = d.getElementsByTagName("script")[0],
                    s = d.createElement("script"),
                    f = function () {
                        n.parentNode.insertBefore(s, n);
                    };
            s.type = "text/javascript";
            s.async = true;
            s.src = "https://mc.yandex.ru/metrika/watch.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else {
                f();
            }
        })(document, window, "yandex_metrika_callbacks");
    </script>
    <!-- /Yandex.Metrika counter -->
{/block}
{block 'scripts'}
    {include 'file:chunks/scripts.tpl'}
    {ignore}
    <script>
        //так себе скрипт для сокрытия не нужных полей
        var fields = new Object();
        fields["self"] = 'email,receiver,phone';
        fields["delivery"] = "email,receiver,phone,city,street,building,room";
        fields["post"] = "email,receiver,phone,index,region,city,street,building,room";
        $('input[name="delivery"]').on("change", function () {
            var val = $(this).val();
            var show = [];
            switch (val) {
                case '1':
                    show = fields["self"].split(',');
                    break;
                case '2':
                    show = fields["delivery"].split(',');
                    break;
                case '3':
                    show = fields["post"].split(',');
            }
            $('#user-info .form-control').hide();
            for (var el in show) {
                $('#' + show[el]).show();
            }
        })
        $(".tooltips").on("click", function () {
            $(".modal-title").html($(this).siblings('.delivery-name').html());
            $("#modalbody>p").html($(this).siblings('.hidden').html());
        });
        $('.payment-no-step').on('click', function () {
            $(this).hide();
        });
    </script>
    {/ignore}
{/block}