$(function(){

    $("input:checkbox").uniform();

    // Notification link click handler.
    // JUST FOR DEMO.
    // Can be removed.

    function close(e){
        var $settings = $("#settings"),
            $popover = $settings.siblings(".popover");
        if(!$.contains($popover[0], e.target)){
            $settings.popover('hide');
            $(document).off("click", close);
        }
    }
    $("#notification-link").click(function(){
        if ( $(window).width() > 767){
            $("#settings").popover('show');
            $(document).on("click", close);
            return false;
        }
    });

    $("#feed").slimscroll({
        height: 'auto',
        size: '5px',
        alwaysVisible: true,
        railVisible: true
    });

    $("#chat-messages").slimscroll({
        height: '240px',
        size: '5px',
        alwaysVisible: true,
        railVisible: true
    });
});

