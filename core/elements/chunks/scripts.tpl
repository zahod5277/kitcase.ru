<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha384-VjEeINv9OSwtWFLAtmc4JCtEJXXBub00gtSnszmspDLCtC0I4z4nqz7rEFbIZLLU" crossorigin="anonymous"></script>
<script src="{$_modx->config.assets_url}templates/default/jquery.smooth-scroll.js"></script>
<script src="{$_modx->config.assets_url}templates/default/jquery.sidr.min.js"></script>
<script src="{$_modx->config.assets_url}templates/default/scrollPosStyler.js"></script>
{ignore}
<script>
$(document).ready(function() {
    $('a.smooth').smoothScroll();
    $('#menu-btn').sidr();
    if ($('#mse2_mfilter').length > 0) {
        modelFilter.initialize();
    }
    
$("#back-top").hide();
$(function() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 50) {
            $('#back-top').fadeIn();
        } else {
            $('#back-top').fadeOut();
        }
    });
    $('#back-top a').click(function() {
        $('body,html').animate({
            scrollTop: 0
        }, 800);
        return false;
    });
});
    
    $('#panel').on('click', function(){
        $.sidr('close', 'sidr');
    });
    
    $('.slide-menu-btns').on('click', function(){
        $.sidr('close', 'sidr');
    });
    
    $('button[type="reset"]').on('click', function() {
        $('#nav').removeClass('filter-choice-bg');
    });
    $(document).on('mse2_load', function(e, response) {
        var hash = mSearch2.Hash.get();
        if (hash['vendor'] && hash['model']){
            setTimeout($this.getReset,1000,hash['model']);
        }
        if (hash['vendor'] != undefined) {
            $($this.options.vendor).find('input[value="' + hash['vendor'] + '"]').siblings('.phone-ico').addClass('active');
            $($this.options.vendor).find('input:not([value="' + hash['vendor'] + '"])').parents('label').addClass('disabled');
            $($this.options.vendor).find('input:not([value="' + hash['vendor'] + '"])').siblings('.phone-ico').removeClass('active');
            var vendor = $($this.options.vendor).find('input[value="' + hash['vendor'] + '"]').siblings('.phone-ico').data('value');
            if (hash['model'] === undefined){
                hash['model'] = '';
            }
            $this.setTitle(vendor, hash['model']);
        }
        if (hash['category'] == '25' || hash['category'] == '26'){
            modelFilter.hideVendor();
        } else {
            {*modelFilter.showVendor();*}
        }
    });

});
var modelFilter = {
    // Наши селекторы
    options: {
        parents: '#mse2_resource\\|parent',
        vendor: '#mse2_ms\\|vendor',
        model: '#mse2_ms\\|model',
        tag: '#mse2_msoption\\|tags',
        reset: 'button[type="reset"]'
    },
    // Запуск функции
    initialize: function() {
        $this = this;
        // Получаем нужные элементы исохраняем как свойства объекта
        this.parents = $(this.options['parents']);
        this.vendor = $(this.options['vendor']);
        this.model = $(this.options['model']);
        this.tags = $(this.options['tag']);
        this.reset = $(this.options['reset']);
        var url = window.location.href;
        if (url.split('?')[1] != undefined) {
            // Смотрим в параметры адресной строки на предмет выбранной марки
            var params = mSearch2.Hash.get();
            if ((params['vendor']) && (params['model'])) {
                var vendor = $($this.options.vendor).find('input[value="' + params['vendor'] + '"]').siblings('.phone-ico').data('value');
                $this.setTitle(vendor,params['model'])
                $this.hideVendor();
                setTimeout($this.getReset,1000,params['model']);
            } else {
                if (params['vendor'] === undefined) {
                    }
                    else {
                    //$this.selectVendor(params['vendor']);
                    $this.showModels();
                }
            }
            if (params['category'] === undefined) {
                $this.enableParents('default');
            } else {
                $this.enableParents(params['category']);
                 if (params['category'] == '25' || params['category'] == '26'){
                   $this.hideVendor();
                   $this.hideModels();
                   $this.showTags();
                } else {
                  $this.showVendor();
                }
            }
        } else {
            var filterParam = [[*filterParam]];
            if (filterParam['category'] != undefined){
                $this.enableParents(filterParam['category']);
                $('.btn-nav[data-value="' + filterParam['category'] + '"]').trigger('click');
            }
            if (filterParam['vendor'] != undefined){
                  setTimeout($this.triggerVendor, 1000, filterParam['vendor']);
               }
            if (filterParam['tags'] != undefined){
                    setTimeout($this.triggerTags, 1000, filterParam['tags']);
                }
            
        }
        this.parents.find('.btn-nav').on("click", function() {
            var parent = $(this).data('value');
            $this.enableParents(parent);
            if (parent == '25' || parent == '26'){
                $this.hideModels();
        }
        })
        $(this.options.vendor+' label').on('click', function() {
            if ($(this).find('input').is('[disabled]')){
            } else {
                $this.showModels();
            }
        })
        $($this.options.model + ' label').on('click', function() {
            var model = $(this).find('input').val();
            $this.selectModel(model);
        })
        this.reset.on('click', function() {
            $('#filter-outer .choice').show();
            $('#choice-outer').hide();
        })
    },
    triggerVendor: function(param){
        $($this.options.vendor).find('input[value="'+param+'"]').trigger('click');
    },
    triggerTags: function(param){
        $($this.options.tag).find('input[value="'+param+'"]').trigger('click');
    },
    showModels: function() {
        $($this.options.model).show('slow');
    },
    hideModels: function() {
        $($this.options.model).hide('slow');
    },
    selectVendor: function(param) {
        $($this.options.vendor).find('input[value="' + param + '"]').siblings('.phone-ico').addClass('active');      
    },
    selectModel: function(param) {
        $($this.options.model).hide();
    },
    getReset: function(param) {
        $('#filter-outer .choice').hide();
        $this.hideModels();
        $this.hideVendor();
        $this.showTags();
        var linkCategory = $('.btn-nav-active').data('value');
        if (linkCategory === undefined){
             linkCategory = [[*filterParam]];
             linkCategory = linkCategory.category;
        } 
        if ($('#resetbtn').attr('href').indexOf('?') === 1){
        $('#resetbtn').attr('href', $('#resetbtn').attr('href')+'?category='+linkCategory);
        }
        $('.vendor-id').html($('.vendors-filter-outer').find('.active').data('value'));
        $('.model-id').html(param);
        $('#choice-outer').show();
    },
    enableParents: function(mode) {
        if (mode === 'default') {
            //$('.btn-nav-outer>.btn-nav-active').trigger('click');
            console.log($('.btn-nav-active').data('value'));
        } else {
            $('.btn-nav').removeClass('btn-nav-active');
            $('input[value='+mode+']').trigger('click');
            $('.btn-nav-outer>.btn-nav[data-value="' + mode + '"]').addClass('btn-nav-active');
        }
    },
    setTitle: function(vendor,model){
        $('h3.maintitle').html(vendor + ' ' + model);
    },
    hideVendor: function(){
        $($this.options.vendor).hide();
    },
    showVendor: function(){
        $($this.options.vendor).show();
    },
    showTags: function(){
       $($this.options.tag).show();
    },


}
</script>
{/ignore}