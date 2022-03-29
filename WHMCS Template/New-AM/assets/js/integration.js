
$( window ).load(function() {
    $(".p-hamburger").on( "click", function() {
    	if($(".p-hamburger-menu-wrapper").hasClass("is-shown"))
    	{
    		$(".p-hamburger-menu-wrapper").addClass("is-hidden");	
    		$(".p-hamburger-menu-wrapper").removeClass("is-shown");
    	}
    	else
    	{
	    	$(".p-hamburger-menu-wrapper").addClass("is-shown");
	    	$(".p-hamburger-menu-wrapper").removeClass("is-hidden");	
    	}
    });
    $(".p-hamburger").on( "click", function() {
    	if($(this).hasClass("is-black is-opened-navi"))
    	{
    		$(this).addClass("is-closed-navi");	
    		$(this).removeClass("is-black is-opened-navi");
    	}
    	else
    	{
	    	$(this).addClass("is-black is-opened-navi");
	    	$(this).removeClass("is-closed-navi");	
    	}
    });
    $(".p-hamburger").hover(function () {
    	if($(this).hasClass("is-over"))
    	{
    		$(this).addClass("is-leave");	
    		$(this).removeClass("is-over");
    	}
    	else
    	{
	    	$(this).addClass("is-over");
	    	$(this).removeClass("is-leave");	
    	}
    });
});

