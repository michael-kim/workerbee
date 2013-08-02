$(function(){

    // disabled transition while loading page
    $("body").removeClass("preload");

    // focus
    $('input.focus').focus();

    // dialog
    $('.dialog .close').click(function() {
        $(this).closest('.dialog').remove();
    })

    // Focus state for append/prepend inputs
    $('.input-prepend, .input-append').on('focus', 'input', function () {
        $(this).closest('.control-group, form').addClass('focus');
    }).on('blur', 'input', function () {
            $(this).closest('.control-group, form').removeClass('focus');
        });
});