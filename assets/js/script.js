$(document).ready(function(){
    deviceWidth = $(window).width();
    {
        // Active/ Deactive nav-expand on click
        
        let navExpand = 0; // nav-main collapsed default
        const $nav = $('header nav .nav-main');
        const $button = $('#nav-expand');
        
        // function happens when on devices < 1200px
        if(deviceWidth < 1200){
            $button.click(function(){
                if (navExpand == 0) {
                    $('header').addClass('active');
                    $nav.addClass('active');
                    $button.addClass('active');
            
                    navExpand = 1;
                } else {
                    $('header').removeClass('active');
                    $nav.removeClass('active');
                    $button.removeClass('active');
            
                    navExpand = 0;
                }
            });
        }
    }
    
});