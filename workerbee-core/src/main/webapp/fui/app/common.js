$(function(){

    // disabled transition while loading page
    $("body").removeClass("preload");

    // focus
    $('input.focus').focus();

    // dialog
    $('.dialog .close').click(function() {
        $(this).closest('.dialog').remove();
    });

    //selectpicker
    $('.selectpicker').selectpicker();

    //select2
    $(".select2").each(function(){
        $(this).select2($(this).data());
    });

    // jQuery UI Spinner
    $.widget( "ui.customspinner", $.ui.spinner, {
        widgetEventPrefix: $.ui.spinner.prototype.widgetEventPrefix,
        _buttonHtml: function() { // Remove arrows on the buttons
            return "" +
                "<a class='ui-spinner-button ui-spinner-up ui-corner-tr'>" +
                "<span class='ui-icon " + this.options.icons.up + "'></span>" +
                "</a>" +
                "<a class='ui-spinner-button ui-spinner-down ui-corner-br'>" +
                "<span class='ui-icon " + this.options.icons.down + "'></span>" +
                "</a>";
        }
    });

    $('#spinner-01').customspinner({
        min: -99,
        max: 99
    }).on('focus', function () {
            $(this).closest('.ui-spinner').addClass('focus');
        }).on('blur', function () {
            $(this).closest('.ui-spinner').removeClass('focus');
        });

    // Focus state for append/prepend inputs
    $('.input-prepend, .input-append').on('focus', 'input', function () {
        $(this).closest('.control-group, form').addClass('focus');
    }).on('blur', 'input', function () {
            $(this).closest('.control-group, form').removeClass('focus');
        });
});