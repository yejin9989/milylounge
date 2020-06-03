<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" type="text/css" href="https://www.hanssem.com//resources/mobile/css/framework.css?v=2019112701">
<style>
    @import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
    .my_home_hc{padding: 0;}
    .my_home_hc .product_list_container{width: 100%; margin: 0;}

    .event_wrap *{margin: 0; padding:0;}
    .event_wrap img{width: 100%;}
    .event_wrap a {outline: none;}	
    .event_wrap .event_detail {width: 100%; box-sizing: border-box;}
    .event_wrap .event_detail .inner {position: relative; padding: 0 15px;}

    .event_wrap .event_detail.bg01 {background: #e0e0c7;}
    .event_wrap .event_detail.bg02 {background: #ffffff;}
    .event_wrap .event_detail.bg03 {background: #ffffff;}
    .event_wrap .event_detail.bg04 {background: #ffffff;}
    .event_wrap .event_detail.bg05 {background: #36374C;}
    .event_wrap .event_detail.bg06 {background: #333333;}
    .event_wrap .event_detail.bg07 {background: #ADC7D9;}

    /* 기존에 한샘 이벤트 css */
    .style_big_btn_wrap {position: relative;}
    .style_big_btn {position: absolute; width: 80%; left: 50%;  -webkit-transform: translateX(-50%);  -ms-transform: translateX(-50%);  transform: translateX(-50%); top: 60%;}
    .style_big_btn a {display: inline-block; float: left; margin-right: 2%; width: 32%;}
    .style_big_btn a:last-child {margin-right: 0;}
    .style_big_btn a:nth-child(1).on:after {content: ""; position: absolute; top: 0; left: -1px; background: url("http://image2.hanssem.com/rehaus/event/191114/mo/btn_event_color_interior_contents_02_1_sel.png") no-repeat; width: 100%; height: 100%; background-size: 100%;}
    .style_big_btn a:nth-child(2).on:after {content: ""; position: absolute; top: 0; left: -1px; background: url("http://image2.hanssem.com/rehaus/event/191114/mo/btn_event_color_interior_contents_02_2_sel.png") no-repeat; width: 100%; height: 100%; background-size: 100%;}
    .style_big_btn a:nth-child(3).on:after {content: ""; position: absolute; top: 0; left: -1px; background: url("http://image2.hanssem.com/rehaus/event/191114/mo/btn_event_color_interior_contents_02_3_sel.png") no-repeat; width: 100%; height: 100%; background-size: 100%;}

    .style_content_wrap {position: relative; }
    .best_cont {position: absolute; top: 0;  left: 50%;  -webkit-transform: translateX(-50%);  -ms-transform: translateX(-50%);  transform: translateX(-50%); width: 100%;}
    .best_cont1 {visibility: visible;}
    .best_cont2 {visibility: hidden;}
    .best_cont3 {visibility: hidden;}

    .main_sec .bx-controls {display: block !important; position: absolute; left: 50%; width: 100%; -webkit-transform: translateX(-50%);  -ms-transform: translateX(-50%);  transform: translateX(-50%);}
    .main_sec .bx-controls-direction {display: block; width: 100%; position:absolute; top:-48vw; left: 50%; -webkit-transform: translateX(-50%);  -ms-transform: translateX(-50%);  transform: translateX(-50%);}
    .main_sec .bx-controls-direction > a {display: block; position: absolute; width: 46px; height: 46px;text-indent: -9999px; top: 0;}
    .main_sec .bx-prev {z-index:8; left: 0; background: url('http://image2.hanssem.com/rehaus/event/191114/mo/before/style_slide_prev.png') 0 0 no-repeat; background-size: 100%;}
    .main_sec .bx-next {z-index:8; right: 0; background: url('http://image2.hanssem.com/rehaus/event/191114/mo/before/style_slide_next.png') 0 0 no-repeat; background-size: 100%;}

    .rolling_wrap {position: absolute; width: 90%; top: 25%; left: 50%; -webkit-transform: translateX(-50%);  -ms-transform: translateX(-50%);  transform: translateX(-50%);}
    .main_sec {position: absolute; width: 90%; top: 36.7%; left: 50%; -webkit-transform: translateX(-50%);  -ms-transform: translateX(-50%);  transform: translateX(-50%);}
    .pager_wrap a {float: left; display: inline-block; margin-right: 0.5%; margin-bottom: 0.5%; width: 33%;}
    .pager_wrap a:nth-child(3n) {margin-right: 0;}

    .pager_wrap a.active {position: relative;}
    .pager_wrap a.active:after {position: absolute; content: ""; top: 0; left: 0; width: 100%; height: 100%;}
    .pager_wrap a.active:nth-child(1):after {background: url("http://image2.hanssem.com/rehaus/event/191114/mo/before/style_tab_1_on.png") no-repeat; background-size: 100%;}
    .pager_wrap a.active:nth-child(2):after {background: url("http://image2.hanssem.com/rehaus/event/191114/mo/before/style_tab_2_on.png") no-repeat; background-size: 100%;}
    .pager_wrap a.active:nth-child(3):after {background: url("http://image2.hanssem.com/rehaus/event/191114/mo/before/style_tab_3_on.png") no-repeat; background-size: 100%;}
    .pager_wrap a.active:nth-child(4):after {background: url("http://image2.hanssem.com/rehaus/event/191114/mo/before/style_tab_4_on.png") no-repeat; background-size: 100%;}
    .pager_wrap a.active:nth-child(5):after {background: url("http://image2.hanssem.com/rehaus/event/191114/mo/before/style_tab_5_on.png") no-repeat; background-size: 100%;}
    .pager_wrap a.active:nth-child(6):after {background: url("http://image2.hanssem.com/rehaus/event/191114/mo/before/style_tab_6_on.png") no-repeat; background-size: 100%;}
    
    .rolling_btn {width: 86%; margin: 0 auto; margin-top: 5%;}
    .rolling_btn a {float: left; display: inline-block; width: 49%; margin-right: 2%;}
    .rolling_btn a:last-child {margin-right: 0;}

    .btn-slider {position: absolute; top: 42%; left: 50%; -webkit-transform: translateX(-50%);  -ms-transform: translateX(-50%);  transform: translateX(-50%); width: 95%;}
    .sw_wrap {position: absolute; top: 10%; left: 50%; -webkit-transform: translateX(-50%);  -ms-transform: translateX(-50%);  transform: translateX(-50%); width: 95%;}
    .bg06 .swiper-pagination-progressbar .swiper-pagination-progressbar-fill {background: #b42a3a !important;}
    .bg06 .swiper-container-horizontal>.swiper-pagination-progressbar, .swiper-container-vertical>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite {opacity: 1; transition: 0.4s; top: 85% !important; width: 95% !important; height: 5px !important; left: 50% !important; -webkit-transform: translateX(-50%);-ms-transform: translateX(-50%);transform: translateX(-50%); background: #fff;}
    .bg06 .swiper-container {top: 10%; width: 100%; height: 57vw; left: 50%;-webkit-transform: translateX(-50%);-ms-transform: translateX(-50%);transform: translateX(-50%);}
    .bg06 .swiper-slide {text-align: center;font-size: 18px;background: #fff; /* Center slide text vertically */display: -webkit-box;display: -ms-flexbox;display: -webkit-flex;display: flex;-webkit-box-pack: center;-ms-flex-pack: center;-webkit-justify-content: center;justify-content: center;-webkit-box-align: center;-ms-flex-align: center;-webkit-align-items: center;align-items: center;}
    .bg06 .swiper-button-prev, .bg06 .swiper-container-rtl .swiper-button-next {background-image: url("https://image.hanssem.com/hsimg/upload/display/planshop/2019/04/22/1555908802777_0.png") !important; width: 8px !important; height: 15px !important; background-size: 100% !important; top: 99% !important; left: 85% !important;}
    .bg06 .swiper-button-next, .bg06 .swiper-container-rtl .swiper-button-prev {background-image: url("https://image.hanssem.com/hsimg/upload/display/planshop/2019/04/22/1555908805306_0.png") !important; width: 8px !important; height: 15px !important; background-size: 100% !important; top: 99% !important; right: 8% !important;}

    .sw_pager {width: 100%; display: block; position: absolute; left: 50%; -webkit-transform: translateX(-50%);-ms-transform: translateX(-50%);transform: translateX(-50%); bottom: -48%;}
    .sw_pager a {float: left; display: inline-block; width: 24.2%; margin-right: 1%;}
    .sw_pager a:last-child {margin-right: 0;}
    .make_btn {position: absolute; bottom: 4.5%; right: 3%; z-index: 999; display: inline-block;}
    .play_btn {display: none;}

</style>
</head>
<body class="index main">
<div id="page-transitions" class="wrap">
<div id="page-content" class="page-content" style="min-height: 784px;">
	<div id="page-content-scroll" class="header-clear-2 header-margin-top">
	<div class="hard_coding_part my_home_hc">
					<div class="hsdt_info clearfix">
					</div>
					<div class="hsdt_info clearfix">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
<div class="event_wrap">
    <div class="event_detail bg06">
        <!-- 기존 한샘 이벤트 html -->
        <div class="btn-slider">
            <!-- Swiper -->
            <div class="swiper-container swiper-container_1 swiper-container-initialized swiper-container-horizontal swiper-container-android">
                <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-1058px, 0px, 0px);">
                    <div class="swiper-slide" style="width: 529px;"><img src="http://image2.hanssem.com/rehaus/event/191114/mo/before/slide/slide1.jpg"></div>
                    <div class="swiper-slide swiper-slide-prev" style="width: 529px;"><img src="http://image2.hanssem.com/rehaus/event/191114/mo/before/slide/slide2.jpg"></div>
                    <div class="swiper-slide swiper-slide-active" style="width: 529px;"><img src="http://image2.hanssem.com/rehaus/event/191114/mo/before/slide/slide3.jpg"></div>
                    <div class="swiper-slide swiper-slide-next" style="width: 529px;"><img src="http://image2.hanssem.com/rehaus/event/191114/mo/before/slide/slide4.jpg"></div>
                </div>
                <div id="swiper-pagination_1" class="swiper-pagination swiper-pagination-progressbar"><span class="swiper-pagination-progressbar-fill" style="transform: translate3d(0px, 0px, 0px) scaleX(0.75) scaleY(1); transition-duration: 300ms;"></span></div>
                <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
                <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div>
                <a class="make_btn stop_btn"><img src="http://image2.hanssem.com/rehaus/event/191114/mo/before/slide/btn_stop.png"></a>
                <a class="make_btn play_btn"><img src="http://image2.hanssem.com/rehaus/event/191114/mo/before/slide/btn_play.png"></a>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>   
        </div>
        <script>
            new Swiper('.swiper-container_1', {
                autoplay: {
                    delay: 4000
                },
                pagination: {
                    el: '#swiper-pagination_1',
                    type: 'progressbar'
                },
                observer: true,
                observeParents: true,
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev'
                }
            });
            var mySwiper1 = document.querySelector('.swiper-container_1').swiper
            $(".stop_btn").click(function() {
                $(this).hide();
                $(".play_btn").show();
                mySwiper1.autoplay.stop();
                console.log('slider stopped');
            });
            $(".play_btn").click(function() {
                $(this).hide();
                $(".stop_btn").show();
                mySwiper1.autoplay.start();
                console.log('slider started again');
            });
        </script>
        <!-- // 기존 한샘 이벤트 html -->
    
    </div>
</div>
					</div>
	</div>
	<!--  E:HARD CODING  -->
	</div>
	<!--E: page-content-scroll-->
	
<!-- loading start -->
</div>
<!--E: page-content-->
</div>
</body>
</html>