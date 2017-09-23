<div id="msGallery">
    {if $files?}
        <div class="fotorama"
             data-nav="thumbs"
             data-thumbheight="80"
             data-width="250"
             data-height="350"
             data-allowfullscreen="true"
             data-swipe="true"
             data-autoplay="5000">
            {foreach $files as $file}
                <a href="{$file['url']}" target="_blank">
                    <img src="{$file['120x90']}" alt="" title="">
                </a>
            {/foreach}
        </div>
    {else}
        <img src="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium.png'}"
             srcset="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium@2x.png'} 2x"
             alt="" title=""/>
    {/if}
</div>

