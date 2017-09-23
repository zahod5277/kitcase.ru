<!doctype html>
<html>
    {block 'head'}
        {include 'file:chunks/opt/head.tpl'}
    {/block}
    <body style="background:url('{$_modx->resource.optbg}') no-repeat">
        <div id="videowrap">
            <video loop autoplay id="bgvid">
                <source src="kitcase2.mp4" type="video/mp4">
            </video>
        </div>
        <div class="container">
            <div class="col-xs-12 col-md-6 col-lg-3" id="logo-outer">
                <img class="img-fluid" src="{$_modx->config.assets_url}templates/default/opt/img/logo.png" alt="">
            </div>
            <div class="col-xs-12 col-md-5 offset-md-1 col-lg-5 offset-lg-4">
                <p class="phone">
                    +7 (495) 975-74-64
                </p>
                <p class="email">opt.kitcase@ya.ru</p>
            </div>
            <div class="col-xs-12 col-lg-12" id="welcome">
                <h1 class="centered">{$_modx->resource.longtitle}</h1>
            </div>
            <div class="row">
                <div class="col-xs-12 col-lg-6 no-padding" id="advant-outer">
                    <!-- id="advant" -->
                    {$_modx->resource.content}
                </div>
                <div class="col-xs-12 col-lg-5 offset-lg-1"  id="form">
                    {$_modx->runSnippet('!AjaxForm',[
                'snippet' => 'FormIt',
                'form' => '@FILE chunks/opt/form.tpl',
                'hooks' => 'spam,email,FormSave,filesender',
                'emailSubject' => 'Был запрошен прайс-лист',
                'emailFrom' => 'optmanager@kitcase.ru',
                'emailTo' => 'zahod5277@mail.ru',
                'validate' => 'email:required,phone:required',
                'validationErrorMessage' => '<h6>В форме содержатся ошибки. Пожалуйста, заполните поля.</h6>'
                ])}
                </div>
            </div>
        </div>
        <!-- Yandex.Metrika counter -->
        <script type="text/javascript">
            (function (d, w, c) {
                (w[c] = w[c] || []).push(function () {
                    try {
                        w.yaCounter40561705 = new Ya.Metrika({
                            id: 40561705,
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
        <script src="{$_modx->config.assets_url}templates/default/jquery.mask.min.js"></script>
        <script src="{$_modx->config.assets_url}templates/default/validate/dist/jquery.validate.js"></script>
        <noscript><div><img src="https://mc.yandex.ru/watch/40561705" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
            {ignore}
        <script>
            $(document).ready(function(){
                $('input[name="phone"]').mask('+7 (000) 000-00-00');
            });
            $('input[name="email"]').on('keyup', function(){
                checkEmail(this);
            });
            $('input[name="email"]').on('change', function(){
                checkEmail(this);
            });
            
            function checkEmail(form){
                var pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
                    if(pattern.test($(form).val())){
                    $('input.hidden').show('slow');
                    }
            }
            
        </script>
        {/ignore}
        <!-- /Yandex.Metrika counter -->
    </body>
</html>