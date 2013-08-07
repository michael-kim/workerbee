(function ($) {
    $.fn.rowselect = function (options) {
        var settings = jQuery.extend({
            selectedClass: 'selected-row',
            lastRowClass: 'last-selected-row',
            inputClass: 'rowselect',
            showClass: 'rowselect-show',
            numTextClass: 'rowselect-num',
            allSelectId: 'rowselect-all'
        }, options);


        this.each(function () {

            var selectedClass = settings.selectedClass;
            var lastRowClass = settings.lastRowClass;
            var inputClass = settings.inputClass;
            var showClass = settings.showClass;

            var $allSelect = $('#' + settings.allSelectId);
            var $num = $('.' + settings.numTextClass);

            var updateMsg = function () {
                var num = $('input.{0}[type=checkbox]:checked'.f(inputClass)).length;
                $num.text(num);
                //$('.' + showClass).toggle(num > 0);
                if (num > 0) {
                    $('.' + showClass).removeClass('hide'); //show
                } else {
                    $('.' + showClass).addClass('hide'); //hide
                }
            };

            $('input.{0}[type=checkbox]'.f(inputClass)).click(function (e) {
                if (e.shiftKey) {
                    var rows = $('input.{0}[type=checkbox]:checked'.f(inputClass));
                    var curIdx = $(this).attr('data-row-index');
                    var lastIdx = $('.{0} input.{1}[type=checkbox]'.f(lastRowClass, inputClass)).attr('data-row-index');
                    var startIdx = Math.min(curIdx, lastIdx);
                    var endIdx = Math.max(curIdx, lastIdx);
                    var isChecked = $(this).is(':checked');
                    $('input.{0}[type=checkbox]'.f(inputClass)).each(function (index) {
                        if (startIdx <= index && index <= endIdx) {
                            $(this).prop('checked', isChecked).trigger('change');
                        }
                    });
                }
                $('.' + lastRowClass).removeClass(lastRowClass);
                $(this).closest('tr').addClass(lastRowClass);
            });

            $('input.{0}[type=checkbox]'.f(inputClass)).change(function () {
                if ($(this).is(':checked')) {
                    $(this).closest('tr').addClass(selectedClass);
                } else {
                    $(this).closest('tr').removeClass(selectedClass);
                }

                var isAllChecked = !$('input.{0}[type=checkbox]'.f(inputClass)).is(':not(:checked)');
                $allSelect.prop('checked', isAllChecked);

                updateMsg();
            });

            $allSelect.change(function () {
                if ($(this).is(':checked')) {
                    $('input.{0}[type=checkbox]'.f(inputClass)).prop('checked', true).closest('tr').addClass(selectedClass);
                } else {
                    $('input.{0}[type=checkbox]'.f(inputClass)).prop('checked', false).closest('tr').removeClass(selectedClass);
                }
                updateMsg();
            });
        });
    }
}(jQuery));