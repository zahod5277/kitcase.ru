var modelFilter = {
    // Наши селекторы
    options: {
        parents: '#mse2_resource\\|parent',
        vendor: '#mse2_ms\\|vendor',
        model: '#mse2_ms\\|model',
        tag: '#mse2_msoption\\|tag',
        reset: 'button[type="reset"]'
    },
    // Запуск функции
    initialize: function() {
        $this = this;
        // Получаем нужные элементы исохраняем как свойства объекта
        this.parents = $(this.options['parents']);
        this.vendor = $(this.options['vendor']);
        this.model = $(this.options['model']);
        this.tag = $(this.options['tag']);
        this.reset = $(this.options['reset']);
        var url = window.location.href;
        if (url.split('?')[1] != undefined) {
            // Смотрим в параметры адресной строки на предмет выбранной марки
            var params = mSearch2.Hash.get();
            if ((params['vendor']) && (params['model'])) {
                //$this.selectVendor(params['vendor']);
                $this.getReset(params['model']);
            } else {
                if (params['vendor'] == undefined) {
                    }
                    else {
                    //$this.selectVendor(params['vendor']);
                    $this.showModels();
                }
            }
            if (params['category'] == undefined) {
                $this.enableParents('default');
            }
        } else {
            var filterParam = [[*filterParam]];
            if (filterParam['category'] != undefined){
                $this.enableParents(filterParam['category']);
            }
            if (filterParam['vendor'] != undefined){
                  setTimeout($this.triggerVendor, 1000, filterParam['vendor']);
                }
            
        }
        this.parents.find('.btn-nav').on("click", function() {
            var parent = $(this).data('value');
            $this.enableParents(parent);
        })
        $(this.options.vendor).on('click', function() {
            $this.showModels();
        })
        $($this.options.model + ' label').on('click', function() {
            var model = $(this).find('input').val();
            $this.selectModel(model);
        })
        this.reset.on('click', function() {
            $('#filter-outer').show();
            $('#choice-outer').hide();
        })
    },
    triggerVendor: function(param){
        $($this.options.vendor).find('input[value="'+param+'"]').trigger('click');
    }
    ,
    showModels: function() {
        $($this.options.model).show();
    },
    hideModels: function() {
        $($this.options.model).hide();
    },
    selectVendor: function(param) {
        $($this.options.vendor).find('input[value="' + param + '"]').siblings('.phone-ico').addClass('active');
        console.log($($this.options.vendor).find('input[value="' + param + '"]').parents('label').html());
        
    },
    selectModel: function(param) {
        $($this.options.model).hide();
        $this.getReset(param);
    },
    getReset: function(param) {
        $('#filter-outer').hide();
        $('#nav').addClass('filter-choice-bg');
        var category = $('.category-id').html($('.btn-nav-active').html());
        if (category == undefined) {
            category = 'все разделы';
        }
        $('.btn-nav').removeClass('btn-nav-active');
        $('.vendor-id').html($('.vendors-filter-outer').find('.active').data('value'));
        $('.model-id').html(param);
        $('#choice-outer').show();
    },
    enableParents: function(mode) {
        if (mode === 'default') {
            $('.btn-nav-outer>.btn-nav-active').trigger('click');
        } else {
            $('.btn-nav').removeClass('btn-nav-active');
            $('.btn-nav-outer>.btn-nav[data-value="' + mode + '"]').addClass('btn-nav-active');
        }
    },


}/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


