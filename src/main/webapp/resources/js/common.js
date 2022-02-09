$(function(){

	$('.onlineList ul li .hover').each(function(){
		$(this).hover(function(){
			$(this).find('div').delay(200).fadeIn(300);
		},function(){
			$(this).find('div').css('display','none');
		});
	});



	// checkbox, radio design
	$('input').customInput();
	

	// data table 
	$('.diTable, .diTable02, .diTable03, .piTable, .inquireTable').each(function(){
		$(this).find('tr:last th').css('border-bottom','0');
		$(this).find('tr:last td').css('border-bottom','0');
	});

	// slide tabs 
	$('li[class^=ingTab0]').each(function (){ 
		$(this).bind('click', function(){
			var winWidth = $(window).width();
			if (winWidth > 900) {
				var widCheck = 152;
			} else if (winWidth < 901 && winWidth > 540){ var widCheck = 250;
			} else {var widCheck = 180;}

			var depClass = $(this).attr('class');
			var depNum = parseInt(depClass.substr(6,7));
			
			switch(depNum) {
			case 1:
				$('html, body').animate({ scrollTop: $('.imgArea').offset().top - widCheck}, 800, 'easeInOutExpo' );
			break;
			case 2:
				$('html, body').animate({ scrollTop: $('.reviewArea').offset().top - widCheck}, 800, 'easeInOutExpo' );
			break;
			case 3:
				$('html, body').animate({ scrollTop: $('.policyArea').offset().top - widCheck}, 800, 'easeInOutExpo' );
			break;
			} 

		});
	});


	// select box
	$.fn.extend({
		searchStyle : function(options) {
			this.each(function() {
				var currentSelected = $(this).find(':selected');
				$(this).after('<span class="searchStyleSelectBox"><span class="searchStyleSelectBoxInner">'+currentSelected.text()+'</span></span>').css({position:'absolute', opacity:0,fontSize:$(this).next().css('font-size')});
				var selectBoxSpan = $(this).next();
				var selectBoxWidth = parseInt($(this).width()) - parseInt(selectBoxSpan.css('padding-left'));   
				var selectBoxSpanInner = selectBoxSpan.find(':first-child');
				selectBoxSpan.css({display:'inline-block'});
				selectBoxSpanInner.css({width:selectBoxWidth, display:'inline'});
				var selectBoxHeight = parseInt(selectBoxSpan.height()) + parseInt(selectBoxSpan.css('padding-top')) + parseInt(selectBoxSpan.css('padding-bottom'));
				var selectWidth = $(this).siblings(".searchStyleSelectBox").width();
				$(this).css('width',selectWidth+'px');
				$(this).height(selectBoxHeight).change(function(){
					selectBoxSpanInner.text($(this).find(':selected').text()).parent().addClass('changed');
					});
				});	
		}
	}); $('.select').searchStyle();

	//variable select design
	$.fn.extend({
		bdStyle : function(options) {
			this.each(function() {
				var currentSelected = $(this).find(':selected');
				$(this).after('<span class="bdSbox"><span class="bdSboxInner">'+currentSelected.text()+'</span></span>').css({position:'absolute', opacity:0,fontSize:$(this).next().css('font-size')});
				var selectBoxSpan = $(this).next();
				var selectBoxWidth = parseInt($(this).width()) - parseInt(selectBoxSpan.css('padding-left'));   
				var selectBoxSpanInner = selectBoxSpan.find(':first-child');
				selectBoxSpan.css({display:'inline-block'});
				selectBoxSpanInner.css({width:selectBoxWidth, display:'inline'});
				var selectBoxHeight = parseInt(selectBoxSpan.height()) + parseInt(selectBoxSpan.css('padding-top')) + parseInt(selectBoxSpan.css('padding-bottom'));
				var selectWidth = $(this).siblings('.bdSbox').width();
				$(this).css('width',selectWidth+'px');
				$(this).height(selectBoxHeight).change(function(){
					selectBoxSpanInner.text($(this).find(':selected').text()).parent().addClass('changed');
					});
				});
		}
	});$('.bdbox').bdStyle();


	$(window).resize(function () {
		// resize select
		$('.select, .bdbox').each(function () {
			var selectWidth = $(this).siblings('span').width();
			var selectHeight = $(this).siblings('span').height();
			$(this).css('width',selectWidth+'px').css('height',selectHeight+'px');
		});
	});


	//slide quick
	var scrollDiv = function() {
		var winWidth = $(window).width();
		var $tmp = $(window).scrollTop();
		var $el = $('#header');
		var $target = $el.offset().top + $el.outerHeight(true);
		
		if ( winWidth > 900){			
			if ($tmp > $target){
				$('#sqMenu').fadeIn(300);
			} else {
				$('#sqMenu').fadeOut(300);
				$('.tsClosed').click();
			}
		} else {
			$('#sqMenu').css('display','none');
		}
	}
	

		$(window).scroll(function() {
			
			scrollDiv();
		});
	
	$(window).resize(function(){
		if ( $("#header").length > 0 ) { } 
		else {
			scrollDiv();
		}

		if(!navigator.userAgent.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
			$('.tsClosed').click();
		}
	});

	//top search 
	$('.openSearch').bind('click',function(){
		if ($(this).is('.sq')){
			$('#topSearch').css({'top':'80px','height':'135px'}).fadeIn(300);
			$('.inSearchBox').css({'margin':'35px auto 0'});
		} else {
			var bCheck = $('#headerBanner').height();
			var searchH = bCheck + 36;
			$('#topSearch').css('top',searchH).fadeIn(300);
			console.log(bCheck);
		}
		
		$('#sq').focus();

	});

	$('.tsClosed').bind('click',function(){
		$('#topSearch').removeAttr('style').fadeOut(300);
		$('.inSearchBox').removeAttr('style');
	});





	// 2depth scroll menu 
//	var scrollDiv = function() {
//		var winWidth = $(window).width();
//		var $tmp = $(window).scrollTop();
//		var $el = $('#headerWrap');
//		var $target = $el.offset().top + $el.outerHeight(true);
//		
//		if ( winWidth > 767){			
//			if ($tmp > $target){
//				$('.fixedMenu').fadeIn(300);
//			} else {
//				$('.fixedMenu').fadeOut(300);
//			}
//		} else {
//			$('.fixedMenu').css('display','none');
//		}
//	}
	

	// scrollDiv action
//	if ( $("#mainSection").length > 0 ) { } 
//	else {
//		$(window).scroll(function() {
//			scrollDiv();
//		});
//	}


//	$(window).resize(function () {
//		scrollDiv();
//
//		// resize select
//		$('.longbox, .bdbox, .colorbox').each(function () {
//			var selectWidth = $(this).siblings('span').width();
//			var selectHeight = $(this).siblings('span').height();
//			$(this).css('width',selectWidth+'px').css('height',selectHeight+'px');
//		});
//
//		// same height	
//		$('.inWrap').matchHeight();
//
//	});






});