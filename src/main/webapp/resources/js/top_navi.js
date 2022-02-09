$(function(){

    // 모바일 마이메뉴
    //$('#snbMobile ul li a').each(function(){
    //	if(!navigator.userAgent.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
    //		$(this).hover(function(){
    //			$(this).children('.e').css('display','none');
    //			$(this).children('.k').css('display','inline-block');
    //		},function(){
    //			$(this).children('.e').css('display','inline-block');
    //			$(this).children('.k').css('display','none');
    //		});
    //	}
    //});
    
    
    // 모바일 메뉴 show
    var mnaviView = function (){	
        $('div[id^=topSubm]').stop().animate({'height':'0'},300);
        $('div[id^=topSubm]').css('border-bottom','1px #d5d5d5 solid;');
        //$('a[id^=topNavi]').removeClass('hover');
        $('#gnb ul li').removeClass('on');
        
        var winWidth = $(window).width();
        if (winWidth > 540){ depUlMargin = 40; } else { depUlMargin = 24;}
        var depUlH = $(this).siblings('div').children('ul').height() + depUlMargin;
    
        $(this).siblings('div').stop().animate({'height':depUlH},600);
        $(this).parent().addClass('on');
    
    }
    
    
    
    // 웹 메뉴 hide
    var menuClear = function (){
        //$('a[id^=topNavi]').removeClass('hover');
        $('#navibg').stop().animate({'height':'0'},300);
        $('#navibg').css('border-bottom','0');
        $('div[id^=topSubm]').stop().animate({'height':'0'},200);		
        $('div[id^=topSubm]').css('border-bottom','0');
    }
    
    
    
    // 웹 메뉴 show
    var menuBlock = function (){
    
        var depId = this.id;
        var depClass = depId.substr(0,7);
        var depNum = depId.substr(7,8);
        var nabgH = 0;
        var ulH = 0;
    
        if ( $('.target').length > 0 ) { 
            var vari = $('.target').siblings().attr('id');
            var chkTar = vari.substr(7,8);
        };
    
        if (depNum == 6){ nabgH=380; ulH=370; } else { nabgH=288; ulH=288; };
        if (depNum == 1 || depNum == 2 || depNum == 3 || depNum == 4 || depNum == 5 || depClass == 'navibg'){	
            $('#navibg').stop().animate({'height':nabgH},400);
            $('#navibg').css('border-bottom','1px #a8b7c6 solid');
        }
    
        if (depClass == 'topNavi') {
            $('div[id^=topSubm]').removeClass('target');
            targetDiv = $(this).siblings();
            targetDiv.stop().animate({'height':ulH},400)
            //$(this).addClass('hover');
        } else if (depClass == 'topSubm') {	
            $('div[id^=topSubm]').removeClass('target');
            targetDiv = $(this);
            targetDiv.stop().animate({'height':ulH},400)		
            targetDiv.addClass('target');
            //$(this).siblings('a').addClass('hover');
        } else {
            //$('.target').stop().animate({'height':ulH},400);
            //$('.target').siblings().addClass('hover');	
        }
        
    }
    
    
    
    // 메뉴버튼 이벤트
    var menuEvent = function () {
        
        $('a[id^=topNavi]').each(function() {
            if( $('#gnb').is('.on') ){
                $(this).mouseenter(menuBlock)
                       .focus(menuBlock)
                       .mouseleave(menuClear);
                $(this).unbind('click');
            } else {
                $(this).click(mnaviView)
                $(this).unbind('mouseenter mouseleave focus')
            }
        });
    
        $('div[id^=topSubm]').each(function() {
            if( $('#gnb').is('.on') ){
                $(this).mouseenter(menuBlock)
                       .focus(menuBlock)
                       .mouseleave(menuClear);
                $(this).unbind('click');
            } else {
                $(this).click(mnaviView)
                $(this).unbind('mouseenter mouseleave focus')
            }
        });
    
        $('#navibg').each(function() {
            $(this).mouseenter(menuBlock)
                       .focus(menuBlock)
                       .mouseleave(menuClear);
        });
        
    }
    
    
    // 해상도 체크
    var menuWchk = function(){
        var winWidth =  $(window).width();
    
        if(winWidth > 900){
            $('#gnb').addClass('on'); 
        } else {
            $('#gnb').removeClass('on');
        } 
        menuEvent();
    }
    
    menuWchk();
    
    
    
    // Mobile Mode Control
    $('#mNavi').click(function(){
    
        var winWidth = $(window).width();
        var winHeight = $(window).height();
        var allHeight = $('#allwrap').height();
        var marginTop = 0;
        var hambergerT = 0;
    
        if (!$(this).is('.active')){
            if (winWidth > 540){
                hambergerT = 30; marginTop = 0;
            } else {
                hambergerT = 17; marginTop = 0;
            }
    
            $('#allBg').css('display','block');
            $('#gnb').css('height',allHeight);
            $('#topMenu').css('height',winHeight-marginTop);
            $('#gnb').stop().animate({'left':'0'},300);
            $('div[id^=topSubm]').css('height','0');
            
            $(this).css({'top':hambergerT});
            $(this).css('z-index','9999');
            $('#mMenu').css('z-index','1');
    
            setTimeout( function(){
                $('#mNavi').addClass('active');	
            }, 300);
    
        } else {
            $(this).css('z-index','990');
            $('#allBg').css('display','none');
            $('a[id^=topNavi]').children('span').removeAttr('style');
            $('#gnb ul li').removeClass('on');
            $('#gnb ul li u').removeAttr('style');
            $('#mMenu').css('z-index','990');
            
            if (winWidth > 540){
                $(this).css({'top':'70px'});
            } else {
                $(this).css({'top':'58px'});
            }
            $('#gnb').stop().animate({'left':'-100%'},300);
            setTimeout( function(){
                $('#mNavi').removeClass('active');	
            }, 300);
        }
        
    });
    
    
    
    
    // Mymenu Mode Control
    $('#mMenu').click(function(){
        var allHeight = $('#allwrap').height();
        $('#mNavi').css('z-index','1');
        $('#allBg').css('display','block');
        $('#myMenu').css({'display':'block','height':allHeight});
        $('#myMenu').stop().animate({'right':'0'},300);
    
        $(this).find('img').fadeOut(300);	
    
        setTimeout( function(){			
            $('.mCloseBtn').addClass('active');	
        }, 300);
    });
    
    $('.mCloseBtn').click(function(){
        $('#allBg').css('display','none');
        $('#myMenu').stop().animate({'right':'-100%'},300);
        $('.mCloseBtn').removeClass('active');	
        $('#mNavi').css('z-index','990');
    
        setTimeout( function(){
            $('#mMenu').find('img').fadeIn(300);
            $('#myMenu').css('display','none');
        }, 300);
    });
    
    
    
    
    
    
    
    // 링크 제한
    var linkLimits = function (){ 
        $('#topMenu .dep > a').each(function(){
            $(this).click(function(event){
                var winWidth =  $(window).width();
                if (winWidth < 900){ 
                    event.preventDefault ? event.preventDefault() : event.returnValue = false;
                }
            });
        });
    }; 
    linkLimits();
    
    
    // 메뉴 리셋
    var menuReset = function (){ 
        $('#gnb').removeAttr('style');
        $('#mNavi').removeAttr('style');
        $('#mNavi').removeClass('active');
        $('#mMenu').removeClass('active');
        $('#mMenu').removeAttr('style');
        $('#myMenu').removeAttr('style');
        $('#gnb ul li u').removeAttr('style');
        $('#topMenu').removeAttr('style');
        $('#gnb ul li').removeClass('on');
        $('#mMenu').find('img').fadeIn(300);
        
        //$('a[id^=topNavi]').removeClass('hover');
        $('a[id^=topNavi]').children('span').removeAttr('style');
        $('div[id^=topSubm]').removeAttr('style');
        $('#allBg').css('display','none');
    };
    
    
    // Resize
    $(window).resize(function () {
        
        if(!navigator.userAgent.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
            menuReset();
        }
    
        linkLimits();
    
        // 아이폰 리사이즈시 실행
        var isiPad = /ipad/i.test(navigator.userAgent.toLowerCase());
        if(jQuery.browser.mobile) {
            if ($(window).width() != windowWidth) { menuWchk();}
        }
        else if (isiPad){
            if ($(window).width() != windowWidth) { menuWchk(); }
        } else { menuWchk(); }
    
    });
    
    
    // Orientation Control
    $(window).on( "orientationchange", function( event ) { menuWchk(); } )
    
    
    
    
    
    });