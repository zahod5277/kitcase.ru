var App = {
    init: function () {
        //base functions for each page
        $this = this;
        $this.mainSlick();
        $this.smoothScroll();
        $this.sidr();
        $this.backTop();
        $this.mFilter();
    },
    mainSlick: function () {
        $('.slick-js').slick({
            autoplay: true,
            autoplaySpeed: 2000,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                      arrows: false  
                    },
                }
            ]
        });
    },
    smoothScroll: function () {
        $('a.smooth').smoothScroll();
    },
    sidr: function () {
        $('#menu-btn').sidr();
        $('#panel').on('click', function () {
            $.sidr('close', 'sidr');
        });

        $('.slide-menu-btns').on('click', function () {
            $.sidr('close', 'sidr');
        });
    },
    backTop: function () {
        $("#back-top").hide();
        $(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop() > 50) {
                    $('#back-top').fadeIn();
                } else {
                    $('#back-top').fadeOut();
                }
            });
            $('#back-top a').click(function () {
                $('body,html').animate({
                    scrollTop: 0
                }, 800);
                return false;
            });
        });
    },
    mFilter: function () {
        if ($('#mse2_mfilter').length > 0) {
            filter.initialize();
        }
    }
}


$(document).on('mse2_load', function (e, response) {
    filter.work();
});

var filter = {
    options: {
        parents: '#mse2_resource\\|parent',
        vendor: '#mse2_ms\\|vendor',
        model: '#mse2_ms\\|model',
        tag: '#mse2_msoption\\|tags',
        reset: 'button[type="reset"]',
        categoryParam: $('#mse2_mfilter[data-category]').data('category'),
        vendorParam: $('#mse2_mfilter[data-vendor]').data('vendor'),
        cancelModel: $('i.cancel')
    },
    initialize: function () {
        //базовые переменные
        $this = this;
        if (window.location.href !== 'https://kitcase.ru/') {
            console.log($this.options.categoryParam);
            if (($this.options.categoryParam == '26')||($this.options.categoryParam == '25')){
                $this.hideVendor();
                $this.showTags();
            } else {
            var hash = mSearch2.Hash.get();
            if ((hash['vendor']) || (hash['model']) || (hash['tags'])) {
                mSearch2.submit();
            } else if ($this.options.vendorParam != '') {
                mSearch2.Hash.add('vendor', $this.options.vendorParam);
                $this.work();
            }
            }
        }
    },
    work: function () {
        var hash = mSearch2.Hash.get();
        if (hash['vendor']) {
            $this.selectVendor(hash['vendor']);
            $this.showModels();
        }
        if (hash['model']) {
            $this.selectModel(hash['model']);
            $this.showTags();
            $this.getReset(hash);
        }
        if (hash['tags']) {
            $this.getReset(hash);
        }
        var url = window.location.href;
        if (url.split('?')[1] != undefined) {
            $this.setTitle(hash);
        }
    },
    showModels: function () {
        $($this.options.model).show();
    },
    hideModels: function () {
        $($this.options.model).hide();
    },
    selectVendor: function (param) {
        $($this.options.vendor).find('label').removeClass('disabled');
        $($this.options.vendor).find('input:not([value=' + param + '])').parents('label').addClass('disabled');
    },
    hideVendor: function(){
        $($this.options.vendor).hide();
        $this.showTags();
    },
    selectModel: function (param) {
        param = param.split(',');
        $($this.options.model).find($this.options.cancelModel).hide();
        for (var i = 0; i < param.length; i++) {
            $($this.options.model).find('input[value="' + param[i] + '"]').siblings('span').find('i').show();
        }
        $($this.options.model).find('input[value="' + param + '"]').siblings('span').find('i').show();
    },
    getReset: function (hashUrl) {
        $('#filter-outer .choice').hide();
        var v = $(this.options.vendor).find('input[value="' + hashUrl['vendor'] + '"]').data('check');
        $('.vendor-id').html(v);
        $('.model-id').html(hashUrl['model']);
        $('#choice-outer').show();
    },
    setTitle: function (hashUrl) {
        var v = '',m = '',c = '', models = '';
        if ($('input').is('[value="' + hashUrl['vendor'] + '"]')){
            v = $($this.options.vendor).find('input[value="' + hashUrl['vendor'] + '"]').data('check');
        }
        if ($('input').is('[value="' + hashUrl['model'] + '"]')){
            m = $($this.options.model).find('input[value="' + hashUrl['model'] + '"]');
        }
        if ($('a').is('.btn-nav-active')){
            c = $('.btn-nav-active').html();
        }
        if (m.length > 0) {
            for (var i = 0; i < m.length; i++) {
                if ($(m[i]).val() !== 'undefined') {
                    models += $(m[i]).val() + ' ';
                } else {
                    models += '';
                }
            }
        }
        if (c !== ''){
            console.log('undef!');
        }
        c ? c : ''; (c!=='undefined') ? c: '';
        v ? v : ''; (v!=='undefined') ? v: '';
        var title = c + ' ' + v + ' ' + models;
        $('title').text(title);
        $('.maintitle').html(title);
    },
    showTags: function () {
        $($this.options.tag).show();
    }
};