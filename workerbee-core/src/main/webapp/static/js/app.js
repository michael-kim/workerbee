function closeNavigation(){
    var $accordion = $('#side-nav').find('.accordion-body.in');
    $accordion.collapse('hide');
    $accordion.siblings(".accordion-toggle").addClass("collapsed");
}

$(function(){

    $("#sidebar").on("mouseleave",function(){
        if (($(this).is(".sidebar-icons") || $(window).width() < 1049) && $(window).width() > 767){
            setTimeout(function(){
                closeNavigation();
            }, 300); // some timeout for animation
        }
    });

    $(window).resize(function(){
       closeNavigation()
    });

    $(".btn-group > .btn[data-toggle-class]").click(function(){
        var $this = $(this),
            $parent = $this.parent();

        if ($parent.data("toggle") == "buttons-radio"){
            $parent.children(".btn[data-toggle-class]").removeClass(function(){
                return $(this).data("toggle-class")
            }).addClass(function(){
                    return $(this).data("toggle-passive-class")
                });
            $this.removeClass($(this).data("toggle-passive-class")).addClass($this.data("toggle-class"));
        } else {
            $this.toggleClass($(this).data("toggle-passive-class")).toggleClass($this.data("toggle-class"));
        }
    });


    $("#notification-link").click(function(){
        if ( $(window).width() > 767){
            $("#settings").popover('show');
            $(document).on("click",  function(e){
                var $settings = $("#settings"),
                    $popover = $settings.siblings(".popover");
                if(!$.contains($popover[0], e.target)){
                    $settings.popover('hide');
                    $(document).off("click", close);
                }
            });
            return false;
        }
    });
});