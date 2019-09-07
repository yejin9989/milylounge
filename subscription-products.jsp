<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*" %>
<%@ page language="java" import="myPackage.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko-KR" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<link rel="profile" href="http://gmpg.org/xfn/11"/>

<meta name="google-site-verification" content="Kd_LFdQNt5vRWUmO9Qt2ovvL9BdZUWBB-lf8_E5gcfg" />

<script>var dataLayer=[];</script>
<script>
	dataLayer.push({
		"site_type": "m"
	});
</script>
<script>
	dataLayer.push({
		"sjk_user_number": "",
		"sjk_user_diplay_name": "",
		"sjk_user_email": ""
	});
</script>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KNJCD96');</script>
<!-- End Google Tag Manager -->

<link rel="icon" type="image/png" sizes="16x16" href="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/96x96.png">
<link rel="icon" type="image/png" sizes="192x192" href="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/192x192.png">
<link rel="apple-touch-icon" sizes="76x76" href="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/76x76.png">
<link rel="apple-touch-icon" sizes="120x120" href="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/120x120.png">
<link rel="apple-touch-icon" sizes="152x152" href="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/180x180.png">
<link rel="mask-icon" href="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/safari-pinned-tab.svg" color="#5bbad5">
<meta name="msapplication-square70x70logo" content="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/70x70.png">
<meta name="msapplication-square150x150logo" content="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/150x150.png">
<meta name="msapplication-square310x310logo" content="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/310x310.png">
<link rel="manifest" href="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/favicons/manifest.json">
<meta name="theme-color" content="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

<style>.async-hide { opacity: 0 !important} </style>
<script>(function(a,s,y,n,c,h,i,d,e){s.className+=' '+y;h.start=1*new Date;
h.end=i=function(){s.className=s.className.replace(RegExp(' ?'+y),'')};
(a[n]=a[n]||[]).hide=h;setTimeout(function(){i();h.end=null},c);h.timeout=c;
})(window,document.documentElement,'async-hide','dataLayer',4000,
{'GTM-KNJCD96':true});</script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<title>정기구매 상품선택 - 와이즐리 :: 정직한 가격의 독일산 프리미엄 면도날</title>

<!-- This site is optimized with the Yoast SEO plugin v6.0 - https://yoast.com/wordpress/plugins/seo/ -->
<meta name="description" content="정기구매 상품 선택, 제품과 주기를 선택하세요"/>
<meta name="robots" content="noindex,follow"/>
<link rel="canonical" href="https://www.wiselyshave.com/subscription-products/" />
<meta property="og:locale" content="ko_KR" />
<meta property="og:type" content="article" />
<meta property="og:title" content="정기구매 상품선택 - 와이즐리 :: 정직한 가격의 독일산 프리미엄 면도날" />
<meta property="og:description" content="정기구매 상품 선택, 제품과 주기를 선택하세요" />
<meta property="og:url" content="https://www.wiselyshave.com/subscription-products/" />
<meta property="og:site_name" content="와이즐리 :: Wisely" />
<meta property="article:publisher" content="https://www.facebook.com/wiselyshave/" />
<meta property="fb:app_id" content="157635171692412" />
<meta property="og:image" content="https://www.wiselyshave.com/wp-content/uploads/2018/02/wisely-main-06.jpg" />
<meta property="og:image:secure_url" content="https://www.wiselyshave.com/wp-content/uploads/2018/02/wisely-main-06.jpg" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:description" content="정기구매 상품 선택, 제품과 주기를 선택하세요" />
<meta name="twitter:title" content="정기구매 상품선택 - 와이즐리 :: 정직한 가격의 독일산 프리미엄 면도날" />
<meta name="twitter:image" content="https://www.wiselyshave.com/wp-content/uploads/2018/02/wisely-main-06.jpg" />
<script type='application/ld+json'>{"@context":"http:\/\/schema.org","@type":"WebSite","@id":"#website","url":"https:\/\/www.wiselyshave.com\/","name":"\uc640\uc774\uc990\ub9ac :: Wisely","potentialAction":{"@type":"SearchAction","target":"https:\/\/www.wiselyshave.com\/?s={search_term_string}","query-input":"required name=search_term_string"}}</script>
<!-- / Yoast SEO plugin. -->

<link rel='dns-prefetch' href='//cdn.iamport.kr' />
<link rel='dns-prefetch' href='//d3sfvyfh4b9elq.cloudfront.net' />
<link rel='dns-prefetch' href='//ajax.googleapis.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="와이즐리 :: Wisely &raquo; 피드" href="https://www.wiselyshave.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="와이즐리 :: Wisely &raquo; 댓글 피드" href="https://www.wiselyshave.com/comments/feed/" />
<link rel='stylesheet' id='channel_io_dashicons-css'  href='https://www.wiselyshave.com/wp-content/plugins/channel-io/css/channelicons.css?ver=4.8.3.01' type='text/css' media='all' />
<link rel='stylesheet' id='dashicons-css'  href='https://www.wiselyshave.com/wp-includes/css/dashicons.min.css?ver=4.8.3.01' type='text/css' media='all' />
<link rel='stylesheet' id='wp-jquery-ui-dialog-css'  href='https://www.wiselyshave.com/wp-includes/css/jquery-ui-dialog.min.css?ver=4.8.3.01' type='text/css' media='all' />
<link rel='stylesheet' id='woocommerce-smallscreen-css'  href='https://www.wiselyshave.com/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=3.2.2' type='text/css' media='only screen and (max-width: 768px)' />
<link rel='stylesheet' id='wp-pagenavi-css'  href='https://www.wiselyshave.com/wp-content/plugins/wp-pagenavi/pagenavi-css.css?ver=2.70' type='text/css' media='all' />
<link rel='stylesheet' id='jquery-ui-smoothness-css'  href='//ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.min.css?ver=1.11.4' type='text/css' media='all' />
<link rel='stylesheet' id='arconix-faq-css'  href='https://www.wiselyshave.com/wp-content/plugins/arconix-faq/includes/css/arconix-faq.css?t=1567580219&#038;ver=1.6.1' type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/inc/theme-options/cs-framework/assets/css/font-awesome.min.css?ver=4.8.3.01' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-css-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/css/bootstrap.min.css?ver=3.3.7' type='text/css' media='all' />
<link rel='stylesheet' id='seese-own-loader-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/css/loaders.css?ver=0.9.9' type='text/css' media='all' />
<link rel='stylesheet' id='seese-own-carousel-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/css/owl.carousel.min.css?ver=2.4' type='text/css' media='all' />
<link rel='stylesheet' id='seese-own-slider-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/css/slick-slider.min.css?ver=1.6' type='text/css' media='all' />
<link rel='stylesheet' id='seese-own-popup-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/css/magnific-popup.min.css?ver=0.9.9' type='text/css' media='all' />
<link rel='stylesheet' id='seese-own-scrollbar-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/css/mcustom-scrollbar.min.css?ver=3.1.5' type='text/css' media='all' />
<link rel='stylesheet' id='seese-own-animate-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/css/animate.css?ver=1.0.0' type='text/css' media='all' />
<link rel='stylesheet' id='seese-menu-styles-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/css/menu.css?ver=1.1.0.02' type='text/css' media='all' />
<link rel='stylesheet' id='seese-styles-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/css/styles.css?ver=1.1.0.02' type='text/css' media='all' />
<link rel='stylesheet' id='glidejs-styles-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/glidejs/dist/css/glide.core.min.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='glidejs-styles-theme-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/glidejs/dist/css/glide.theme.min.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='simple-calendar-styles-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/simple-calendar/simple-calendar.css?ver=1567580219' type='text/css' media='all' />
<link rel='stylesheet' id='raty-styles-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/raty/jquery.raty.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='seese-woocommerce-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/inc/plugins/woocommerce/woocommerce.css?ver=1.1.0.02' type='text/css' media='all' />
<link rel='stylesheet' id='seese-woocommerce-responsive-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/inc/plugins/woocommerce/woocommerce-responsive.css?ver=1.1.0.02' type='text/css' media='all' />
<link rel='stylesheet' id='seese-responsive-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/assets/css/responsive.css?ver=1.1.0.02' type='text/css' media='all' />
<link rel='stylesheet' id='seese-google-fonts-css'  href='//fonts.googleapis.com/css?family=Noto+Sans%3A400%2C400i%2C500%2C600%7CLora%3A400%2C400i%2C500%2C600&#038;subset=latin' type='text/css' media='all' />
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/unveil-lazyload.js?ver=1.0.0'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/theme-script.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='https://cdn.iamport.kr/js/iamport.payment-1.1.6-20181005.js?ver=20181009'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/iamport-for-woocommerce/assets/js/url.min.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/iamport-for-woocommerce/assets/js/iamport.woocommerce.js?ver=20181009'></script>
<script type='text/javascript' src='https://d3sfvyfh4b9elq.cloudfront.net/pmt/web/device.json?ver=4.8.3.01'></script>
<link rel='https://api.w.org/' href='https://www.wiselyshave.com/wp-json/' />
<meta name="generator" content="WordPress 4.8.3.01" />
<meta name="generator" content="WooCommerce 3.2.2" />
<link rel='shortlink' href='https://www.wiselyshave.com/?p=3021' />
<link rel="alternate" type="application/json+oembed" href="https://www.wiselyshave.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.wiselyshave.com%2Fsubscription-products%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://www.wiselyshave.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.wiselyshave.com%2Fsubscription-products%2F&#038;format=xml" />
	<noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
	</head>

<body class="page-template-default page page-id-3021">


	  <div class="seese-aside" id="seese-aside"><h2>장바구니</h2><div class="widget_shopping_cart_content">

	<p class="woocommerce-mini-cart__empty-message">장바구니에 상품이 없습니다.</p>


</div></div>		      <div class="seese-specialPage">
		        <a href="">
		          		        </a>
		      </div>

    <!-- Seese Wrap Start -->
    <div id="seese-wrap" class="simple seese-fixed-header">

	    	      <header class="seese-header" style="">

            <div class="header_logo simple">
                <a href="https://www.wiselyshave.com/">
                    <svg xmlns="http://www.w3.org/2000/svg" id="wisely-logo-svg" viewBox="0 0 123 47" id="logo" width="100%" height="100%">
<g><path d="M.213 15.352h5.236l5.235 11.484 5.7-13.299 5.7 13.299 5.194-11.484h5.192L21.957 36.968l-5.573-12.96-5.657 12.96L.213 15.352zM40.875 4.923c2.027 1.688.465 5.277-2.068 5.151a3.029 3.029 0 0 1-3.041-3.041c-.127-2.532 3.42-4.053 5.109-2.11zm-4.434 10.429h4.644V35.45h-4.644V15.352zM55.652 20.84c-.59-1.224-1.351-1.858-2.238-1.858-.844 0-1.562.675-1.562 1.521 0 .675.887 1.435 2.703 2.279l1.773.845c3.336 1.562 4.434 2.998 4.434 5.657 0 1.941-.676 3.547-2.069 4.856-1.393 1.265-3.082 1.899-5.067 1.899-3.419 0-5.783-1.647-7.177-4.94l3.969-1.815c1.14 2.026 1.858 2.619 3.251 2.619 1.562 0 2.364-.719 2.364-2.154 0-.972-.591-1.731-1.815-2.322l-2.575-1.225c-3.04-1.478-4.138-2.702-4.138-5.362 0-1.731.592-3.166 1.816-4.307 1.225-1.14 2.702-1.731 4.433-1.731 2.575 0 4.476 1.309 5.742 3.969l-3.844 2.069zM84.11 26.498H69.713c.296 3.251 2.238 5.405 5.236 5.405 1.14 0 2.11-.254 2.829-.804.759-.548 1.604-1.562 2.575-3.082l3.926 2.154c-2.364 4.094-5.277 5.868-9.499 5.868-2.999 0-5.405-.972-7.22-2.914-1.815-1.941-2.702-4.517-2.702-7.684 0-3.208.887-5.785 2.617-7.726 1.772-1.943 4.138-2.914 7.052-2.914 5.952 0 9.583 4.137 9.583 10.598v1.099zm-4.77-3.8c-.634-2.491-2.196-3.716-4.688-3.716-2.236 0-4.095 1.478-4.644 3.716h9.332zM89.518.616h4.645v26.009c0 1.941.295 3.293.844 4.095.55.761 1.52 1.141 2.913 1.141l-1.267 4.18c-2.321 0-4.137-.718-5.447-2.195-1.14-1.226-1.688-3.293-1.688-6.123V.616zM101.508 46.384l7.811-14.651-9.035-16.381h5.404l6.122 11.569 5.742-11.569h5.235l-16.002 31.032h-5.277z"/></g></svg>                    <span>
                    와이즐리 :: Wisely                    </span>
                </a>
            </div>
	      </header>

	    <!-- Seese Wrapper Start -->
	    <div class="seese-wrapper">

<div class="seese-containerWrap seese-extra-width">
	<div class="seese-background seese-background-outer">
		<div class="container">
			<div class="seese-background-inner  seese-container-inner" style="">
				<div class="row">


					<!-- Content Col Start -->
					<div class="seese-contentCol">
						<div class="seese-content-area">





<div id="subscription-product" class="subsection subscription-product" style="display:none;">


	<div class="subsection-wrapper wrapper1120 paddingtb">

	<!--
	<div style="text-align:center;">
		<div style="display:inline-block; width:100%; max-width:1120px; margin-top:-40px; margin-bottom:40px; background-color:#d4edda; border:1px solid #c3e6cb; padding:20px 10px; text-align:center; font-size:14px; font-weight:bold; color:#000000;">
			<div style="padding:10px 0px 20px 0px; font-size:20px; font-weight:bold; color:#000000;">
				<배송 지연 안내>
			</div>
			주문 폭주로 인한 품절로 정기구매의 배송이 지연되고 있습니다.<br>
			지금 주문 시 3월 28일(목)부터 순차적으로 배송이 시작될 예정이고, 늦어도 3월 29일(금)에는 배송이 시작될 예정입니다.<br>
			고객님들의 양해를 부탁드리며 뜨거운 성원에 다시 한번 감사드립니다.
		</div>
	</div>
	-->

	<div class="section-content aligncenter">
			<div class="subsection-text col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
				<div class="row">
					<div class="big-title">구매할 상품을 선택하세요</div>
					<div class="small-title">정기구매 상품</div>

					<div id="subscription-products">
																		<div class="roundBox-col-2">

							<div class="roundselectBox col-xs-12 col-sm-12 col-md-6">
								<div id="product-item-3079" class="product-item roundBox selected "
									product-id="3079"
									product-price="8900"
									product-price-formatted="8,900 원"
									product-quantity="1"
									product-type="variable-subscription"
									product-img="https://www.wiselyshave.com/wp-content/uploads/2017/11/shave-blade-4-refills-01.jpg"
									product-name="리필 면도날 4개"
									product-excerpt=""
									product-unsellable=""
									product-attributes="3109,3110,3111,3112,3113,3114"
									product-itemized-info="<li>인체공학적 디자인
</li><li>오픈 카트리지 구조
</li><li>간편한 세척
</li><li>5+1 날로 더욱 깔끔한 면도</li>"
									product-images="<li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/blade_1.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/blade_2.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2017/11/shave-blade-4-refills-03.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2017/11/shave-blade-4-refills-04.jpg' width='400'/></li>">
																			<div class="sub-necessary">
											<span>필수</span>
										</div>
																		<div class="product-img"><img width="100" height="100" src="https://www.wiselyshave.com/wp-content/uploads/2017/11/shave-blade-4-refills-01.jpg" /></div>
									<div class="product-name">리필 면도날 4개</div>
									<div class="product-quantity" style="display:none;">수량: <span class="quantity">1</span></div>
									<div class="product-price">8,900 원</div>
								</div>
								<div class="infomark"><img src="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/ico-infomark.png" /></div>
							</div>


							<div class="roundselectBox col-xs-12 col-sm-12 col-md-6">
								<div id="product-item-3291" class="product-item roundBox unselected "
									product-id="3291"
									product-price="3900"
									product-price-formatted="3,900 원"
									product-quantity="1"
									product-type="variable-subscription"
									product-img="https://www.wiselyshave.com/wp-content/uploads/2017/11/gel_150ml_ver2.jpg"
									product-name="쉐이빙젤"
									product-excerpt=""
									product-unsellable=""
									product-attributes="3292,3293,3294,3295,3296,3297"
									product-itemized-info="<li>150ml, 약 2~3개월 사용 가능
</li><li>알로에 등 천연성분 사용
</li><li>100% 공기로 분사하여 안전
</li><li>녹이 슬지 않고 잔량 확인 가능</li>"
									product-images="<li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-006-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-035-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-027-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-029-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-025-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-018-copy.jpg' width='400'/></li>">
																		<div class="product-img"><img width="100" height="100" src="https://www.wiselyshave.com/wp-content/uploads/2017/11/gel_150ml_ver2.jpg" /></div>
									<div class="product-name">쉐이빙젤</div>
									<div class="product-quantity" style="display:none;">수량: <span class="quantity">1</span></div>
									<div class="product-price">3,900 원</div>
								</div>
								<div class="infomark"><img src="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/ico-infomark.png" /></div>
							</div>

													<div class="clear"></div>
						</div>
																								</div>


					<div class="small-title">1회 구매</div>
					<div class="title-desc">오늘 주문에만 1회 포함되고, 이후 정기구매에는 포함되지 않습니다.<br />첫 구매라면, 꼭 면도기를 추가해 주세요.</div>

					<div id="simple-products">
																		<div class="roundBox-col-2">
													<div class="roundselectBox col-xs-12 col-sm-12 col-md-6">
								<div id="product-item-2172" class="product-item roundBox unselected disable"
									product-id="2172"
									product-price="6000"
									product-price-formatted="6,000 원"
									product-quantity="1"
									product-type="simple"
									product-img="https://www.wiselyshave.com/wp-content/uploads/2017/02/starter-set-04-modified.jpg"
									product-name="면도기"
									product-excerpt=""
									product-unsellable=""
									product-attributes=""
									product-itemized-info="<li>인체공학적 디자인
</li><li>오픈 카트리지 구조
</li><li>간편한 세척</li>"
									product-images="<li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2019/02/razor_navy_1.png' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-008-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/starter_4.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/starter_6.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/starter_7.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2019/02/WISELY-2019-003-copy.jpg' width='400'/></li>">
									<div class="product-img">
										<img class="product-img-selected product-img-selected-2172" style="" width="100" src="https://www.wiselyshave.com/wp-content/uploads/2017/02/starter-set-04-modified.jpg" /><img class="product-img-selected product-img-selected-1118383" style="display:none;" width="100" src="https://www.wiselyshave.com/wp-content/uploads/2019/02/red.png" /><img class="product-img-selected product-img-selected-1118384" style="display:none;" width="100" src="https://www.wiselyshave.com/wp-content/uploads/2019/02/khaki.png" />										<!--
										<img width="100" height="100" src="https://www.wiselyshave.com/wp-content/uploads/2017/02/starter-set-04-modified.jpg" />
										-->
									</div>
									<div class="product-name">면도기</div>
																			<div class="product-color-variations" style="display:none;">
											<div class="ipw-attribute-color">
												<div class="color-buttons">
																											<label class="color-container">
															<input type="radio" name="variation_color_target_2172"  checked='checked' data-color_name="네이비" data-product_id="2172" /><span class="checkmark" style="background-color: #375e77"></span>
														</label>
																												<label class="color-container">
															<input type="radio" name="variation_color_target_2172"  data-color_name="버건디" data-product_id="1118383" /><span class="checkmark" style="background-color: #a12c36"></span>
														</label>
																												<label class="color-container">
															<input type="radio" name="variation_color_target_2172"  data-color_name="카키" data-product_id="1118384" /><span class="checkmark" style="background-color: #586520"></span>
														</label>
																										</div>
											</div>
										</div>
																			<div class="product-quantity" >수량: <span class="quantity">1</span></div>
									<div class="product-price">6,000 원</div>
								</div>
								<div class="infomark"><img src="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/ico-infomark.png" /></div>
							</div>
																									<div class="roundselectBox col-xs-12 col-sm-12 col-md-6">
								<div id="product-item-2979" class="product-item roundBox unselected disable"
									product-id="2979"
									product-price="4500"
									product-price-formatted="4,500 원"
									product-quantity="1"
									product-type="simple"
									product-img="https://www.wiselyshave.com/wp-content/uploads/2017/11/gel_150ml_ver2.jpg"
									product-name="쉐이빙젤"
									product-excerpt="용량 : 150ml"
									product-unsellable=""
									product-attributes=""
									product-itemized-info="<li>150ml, 약 2~3개월 사용 가능
</li><li>알로에 등 천연성분 사용
</li><li>100% 공기로 분사하여 안전
</li><li>녹이 슬지 않고 잔량 확인 가능</li>"
									product-images="<li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-006-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-005-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-027-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-029-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-025-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-018-copy.jpg' width='400'/></li>">
									<div class="product-img">
										<img width="100" src="https://www.wiselyshave.com/wp-content/uploads/2017/11/gel_150ml_ver2.jpg" />										<!--
										<img width="100" height="100" src="https://www.wiselyshave.com/wp-content/uploads/2017/11/gel_150ml_ver2.jpg" />
										-->
									</div>
									<div class="product-name">쉐이빙젤</div>
																		<div class="product-quantity" >수량: <span class="quantity">1</span></div>
									<div class="product-price">4,500 원</div>
								</div>
								<div class="infomark"><img src="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/ico-infomark.png" /></div>
							</div>
													<div class="clear"></div>
						</div>
																								<div class="roundBox-col-2">
													<div class="roundselectBox col-xs-12 col-sm-12 col-md-6">
								<div id="product-item-859643" class="product-item roundBox unselected disable"
									product-id="859643"
									product-price="2900"
									product-price-formatted="2,900 원"
									product-quantity="1"
									product-type="simple"
									product-img="https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-001-copy.jpg"
									product-name="스타터 쉐이빙젤"
									product-excerpt="용량 : 75ml"
									product-unsellable=""
									product-attributes=""
									product-itemized-info="<li>75ml, 약 1~2개월 사용 가능
</li><li>알로에 등 천연성분 사용
</li><li>100% 공기로 분사하여 안전
</li><li>녹이 슬지 않고 잔량 확인 가능</li>"
									product-images="<li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-033-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/starter_3.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/starter_5.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-027-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-029-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-018-copy.jpg' width='400'/></li>">
									<div class="product-img">
										<img width="100" src="https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-001-copy.jpg" />										<!--
										<img width="100" height="100" src="https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-001-copy.jpg" />
										-->
									</div>
									<div class="product-name">스타터 쉐이빙젤</div>
																		<div class="product-quantity" >수량: <span class="quantity">1</span></div>
									<div class="product-price">2,900 원</div>
								</div>
								<div class="infomark"><img src="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/ico-infomark.png" /></div>
							</div>
																								</div>
											</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="btn-next-wrapper" class="subsection-wrapper" style="display:none;">
	<div class="section-content aligncenter">
		<div class="nextbtnBox selected">
			<a id="btn-next" class="btn-fillgrey btn-aligncenter btn-mgBottom100 btn-width250"><span>다음</span></a>
		</div>
	</div>
</div>
<div id="subscription-period" class="subsection subscription-period col-xs-12 col-sm-12" style="display:none;">
	<div class="subsection-wrapper wrapper1120 paddingtb">
		<div class="section-content aligncenter">
			<div class="subsection-text col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
				<div class="row">
					<div class="big-title btn-mgBottom100">배송 주기를 선택하세요</div>
					<div class="roundBox-col-3 col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
						<div class="roundselectBox col-xs-12 col-sm-12 col-md-4">
							<div class="row">
								<div class="roundBox" billing-period="1">
									<div class="product-period">1개월에 한 번</div>
									<div class="period-img">
										<img width="100" height="100" src="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/img-1month.png">
									</div>
								</div>
							</div>
						</div>
						<div class="roundselectBox col-xs-12 col-sm-12 col-md-4">
							<div class="row">
								<div class="roundBox" billing-period="2">
									<div class="product-period" >2개월에 한 번</div>
									<div class="period-img">
										<img width="100" height="100" src="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/img-2month.png">
									</div>
									<div class="best-tag" style="width:60px;">BEST</div>
								</div>
							</div>
						</div>
						<div class="roundselectBox col-xs-12 col-sm-12 col-md-4">
							<div class="row">
								<div class="roundBox" billing-period="4">
									<div class="product-period">4개월에 한 번</div>
									<div class="period-img">
										<img width="100" height="100" src="https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/img-4month.png">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="text-center desc btn-mgTop50 btn-mgBottom50">걱정마세요. 언제든지 변경할 수 있어요.<br> 결제 3일 전에 미리 알려 드릴게요.</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="btn-order-wrapper" class="subsection-wrapper" style="display:none;">
	<div class="section-content aligncenter">
		<div class="nextbtnBox">
			<a id="btn-order" class="btn-fillgrey btn-aligncenter btn-mgTop50 btn-mgBottom100 btn-width250" style="margin-top:50px !important;"><span>주문하기</span></a>
		</div>
	</div>
</div>

						</div>
					</div>
					<!-- Content Col End -->



<div class="lightBox addProduct-2 bills-css" product-id="3079" style="display:none;" id="lb-type2-3079">
	<a class="btn-close"></a>

	<div class="d-table">
		<div class="d-table-cell v-middle">
			<div class="product-img glide-wrapper ">
								<div id="glide-3079" class="glide">
					<div class="glide__wrapper">
						<ul class="glide__track">
							<li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/blade_1.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/blade_2.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2017/11/shave-blade-4-refills-03.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2017/11/shave-blade-4-refills-04.jpg' width='400'/></li>						</ul>
					</div>
					<div class="glide__bullets"></div>
				</div>
							</div>
			</div>
		<div class="product-info d-table-cell v-middle">
			<div class="product-name">리필 면도날 4개</div>
			<div class="product-desc"></div>
						<div class="product-price">8,900 원</div>



			<ul class="product-descList">
				<li>인체공학적 디자인
</li><li>오픈 카트리지 구조
</li><li>간편한 세척
</li><li>5+1 날로 더욱 깔끔한 면도</li>			</ul>



		</div>



	</div>

	<div class="d-table w270">
		<div class="lastbtnBox d-table-cell   ">
		<!--a href="javascript:;" class="btn-fillgrey btn-last-close btn-width250"><span>닫기</span></a>&nbsp;&nbsp;&nbsp;-->
		<a href="javascript:;" class="btn-add-lightbox btn-fillBlue btn-width250"><span>정기구매 추가</span></a>
	</div>
	</div>


</div>


<div class="lightBox addProduct-2 bills-css" product-id="3291" style="display:none;" id="lb-type2-3291">
	<a class="btn-close"></a>

	<div class="d-table">
		<div class="d-table-cell v-middle">
			<div class="product-img glide-wrapper ">
								<div id="glide-3291" class="glide">
					<div class="glide__wrapper">
						<ul class="glide__track">
							<li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-006-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-035-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-027-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-029-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-025-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-018-copy.jpg' width='400'/></li>						</ul>
					</div>
					<div class="glide__bullets"></div>
				</div>
							</div>
			</div>
		<div class="product-info d-table-cell v-middle">
			<div class="product-name">쉐이빙젤</div>
			<div class="product-desc"></div>
						<div class="product-price">3,900 원</div>



			<ul class="product-descList">
				<li>150ml, 약 2~3개월 사용 가능
</li><li>알로에 등 천연성분 사용
</li><li>100% 공기로 분사하여 안전
</li><li>녹이 슬지 않고 잔량 확인 가능</li>			</ul>



		</div>



	</div>

	<div class="d-table w270">
		<div class="lastbtnBox d-table-cell   ">
		<!--a href="javascript:;" class="btn-fillgrey btn-last-close btn-width250"><span>닫기</span></a>&nbsp;&nbsp;&nbsp;-->
		<a href="javascript:;" class="btn-add-lightbox btn-fillBlue btn-width250"><span>정기구매 추가</span></a>
	</div>
	</div>


</div>

<div class="lightBox addProduct-1" product-id="2172" style="display:none;" id="lb-type1-2172">
	<a class="btn-close"></a>
	<div class="product-img">
		<img class="product-img-thumbnail product-img-thumbnail-2172" style="" width="200" src="https://www.wiselyshave.com/wp-content/uploads/2017/02/starter-set-04-modified.jpg" /><img class="product-img-thumbnail product-img-thumbnail-1118383" style="display:none;" width="200" src="https://www.wiselyshave.com/wp-content/uploads/2019/02/red.png" /><img class="product-img-thumbnail product-img-thumbnail-1118384" style="display:none;" width="200" src="https://www.wiselyshave.com/wp-content/uploads/2019/02/khaki.png" />	</div>
	<div class="product-name">면도기</div>
	<div class="product-price">6,000 원</div>
	<div class="product-desc"></div>
			<div class="product-color-variations">
			<div class="ipw-attribute-color">
				<div class="color-buttons">
											<label class="color-container">
							<input type="radio" name="variation_color_1_2172"  checked='checked' data-color_name="네이비" data-product_id="2172" /><span class="checkmark" style="background-color: #375e77"></span>
						</label>
												<label class="color-container">
							<input type="radio" name="variation_color_1_2172"  data-color_name="버건디" data-product_id="1118383" /><span class="checkmark" style="background-color: #a12c36"></span>
						</label>
												<label class="color-container">
							<input type="radio" name="variation_color_1_2172"  data-color_name="카키" data-product_id="1118384" /><span class="checkmark" style="background-color: #586520"></span>
						</label>
										</div>
			</div>
		</div>

	<div class="product-order-num">
		<a class="product-order-minus"><span class="icon minus-roundbutton"></span></a>
		<span class="quantity">1</span>
		<a class="product-order-plus"><span class="icon plus-roundbutton"></span></a>
	</div>
	<div class="lastbtnBox">
		<a href="javascript:;" class="btn-fillgrey btn-last-close btn-width250"><span>닫기</span></a>&nbsp;&nbsp;&nbsp;
		<a href="javascript:;" class="btn-add-lightbox btn-fillBlue btn-width250"><span>1회 구매 추가</span></a>
	</div>
</div>

<div class="lightBox addProduct-2 bills-css" product-id="2172" style="display:none;" id="lb-type2-2172">
	<a class="btn-close"></a>

	<div class="d-table">
		<div class="d-table-cell v-middle">
			<div class="product-img glide-wrapper ">
								<div id="glide-2172" class="glide">
					<div class="glide__wrapper">
						<ul class="glide__track">
							<li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2019/02/razor_navy_1.png' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-008-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/starter_4.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/starter_6.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/starter_7.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2019/02/WISELY-2019-003-copy.jpg' width='400'/></li>						</ul>
					</div>
					<div class="glide__bullets"></div>
				</div>
							</div>
			</div>
		<div class="product-info d-table-cell v-middle">
			<div class="product-name">면도기</div>
			<div class="product-desc"></div>
							<div class="product-color-variations">
					<div class="ipw-attribute-color">
						<div class="color-buttons">
															<label class="color-container">
									<input type="radio" name="variation_color_2_2172"  checked='checked' data-color_name="네이비" data-product_id="2172" /><span class="checkmark" style="background-color: #375e77"></span>
								</label>
																<label class="color-container">
									<input type="radio" name="variation_color_2_2172"  data-color_name="버건디" data-product_id="1118383" /><span class="checkmark" style="background-color: #a12c36"></span>
								</label>
																<label class="color-container">
									<input type="radio" name="variation_color_2_2172"  data-color_name="카키" data-product_id="1118384" /><span class="checkmark" style="background-color: #586520"></span>
								</label>
														</div>
					</div>
				</div>
							<div class="product-price">6,000 원</div>



			<ul class="product-descList">
				<li>인체공학적 디자인
</li><li>오픈 카트리지 구조
</li><li>간편한 세척</li>			</ul>



		</div>



	</div>

	<div class="d-table w270">
			<div class="d-table-cell">
			<div class="product-order-num2 ">

			<a class="product-order-minus"><span class="icon minus-roundbutton"></span></a>
			<span class="quantity">1</span>
			<a class="product-order-plus"><span class="icon plus-roundbutton"></span></a>

			</div>
		</div>

		<div class="lastbtnBox d-table-cell   t-left">
		<!--a href="javascript:;" class="btn-fillgrey btn-last-close btn-width250"><span>닫기</span></a>&nbsp;&nbsp;&nbsp;-->
		<a href="javascript:;" class="btn-add-lightbox btn-fillBlue btn-width250"><span>1회 구매 추가</span></a>
	</div>
	</div>


</div>

<div class="lightBox addProduct-1" product-id="2979" style="display:none;" id="lb-type1-2979">
	<a class="btn-close"></a>
	<div class="product-img">
		<img width="200" src="https://www.wiselyshave.com/wp-content/uploads/2017/11/gel_150ml_ver2.jpg" />	</div>
	<div class="product-name">쉐이빙젤</div>
	<div class="product-price">4,500 원</div>
	<div class="product-desc">용량 : 150ml</div>

	<div class="product-order-num">
		<a class="product-order-minus"><span class="icon minus-roundbutton"></span></a>
		<span class="quantity">1</span>
		<a class="product-order-plus"><span class="icon plus-roundbutton"></span></a>
	</div>
	<div class="lastbtnBox">
		<a href="javascript:;" class="btn-fillgrey btn-last-close btn-width250"><span>닫기</span></a>&nbsp;&nbsp;&nbsp;
		<a href="javascript:;" class="btn-add-lightbox btn-fillBlue btn-width250"><span>1회 구매 추가</span></a>
	</div>
</div>

<div class="lightBox addProduct-2 bills-css" product-id="2979" style="display:none;" id="lb-type2-2979">
	<a class="btn-close"></a>

	<div class="d-table">
		<div class="d-table-cell v-middle">
			<div class="product-img glide-wrapper ">
								<div id="glide-2979" class="glide">
					<div class="glide__wrapper">
						<ul class="glide__track">
							<li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-006-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-005-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-027-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-029-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-025-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-018-copy.jpg' width='400'/></li>						</ul>
					</div>
					<div class="glide__bullets"></div>
				</div>
							</div>
			</div>
		<div class="product-info d-table-cell v-middle">
			<div class="product-name">쉐이빙젤</div>
			<div class="product-desc">용량 : 150ml</div>
						<div class="product-price">4,500 원</div>



			<ul class="product-descList">
				<li>150ml, 약 2~3개월 사용 가능
</li><li>알로에 등 천연성분 사용
</li><li>100% 공기로 분사하여 안전
</li><li>녹이 슬지 않고 잔량 확인 가능</li>			</ul>



		</div>



	</div>

	<div class="d-table w270">
			<div class="d-table-cell">
			<div class="product-order-num2 ">

			<a class="product-order-minus"><span class="icon minus-roundbutton"></span></a>
			<span class="quantity">1</span>
			<a class="product-order-plus"><span class="icon plus-roundbutton"></span></a>

			</div>
		</div>

		<div class="lastbtnBox d-table-cell   t-left">
		<!--a href="javascript:;" class="btn-fillgrey btn-last-close btn-width250"><span>닫기</span></a>&nbsp;&nbsp;&nbsp;-->
		<a href="javascript:;" class="btn-add-lightbox btn-fillBlue btn-width250"><span>1회 구매 추가</span></a>
	</div>
	</div>


</div>

<div class="lightBox addProduct-1" product-id="859643" style="display:none;" id="lb-type1-859643">
	<a class="btn-close"></a>
	<div class="product-img">
		<img width="200" src="https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-001-copy.jpg" />	</div>
	<div class="product-name">스타터 쉐이빙젤</div>
	<div class="product-price">2,900 원</div>
	<div class="product-desc">용량 : 75ml</div>

	<div class="product-order-num">
		<a class="product-order-minus"><span class="icon minus-roundbutton"></span></a>
		<span class="quantity">1</span>
		<a class="product-order-plus"><span class="icon plus-roundbutton"></span></a>
	</div>
	<div class="lastbtnBox">
		<a href="javascript:;" class="btn-fillgrey btn-last-close btn-width250"><span>닫기</span></a>&nbsp;&nbsp;&nbsp;
		<a href="javascript:;" class="btn-add-lightbox btn-fillBlue btn-width250"><span>1회 구매 추가</span></a>
	</div>
</div>

<div class="lightBox addProduct-2 bills-css" product-id="859643" style="display:none;" id="lb-type2-859643">
	<a class="btn-close"></a>

	<div class="d-table">
		<div class="d-table-cell v-middle">
			<div class="product-img glide-wrapper ">
								<div id="glide-859643" class="glide">
					<div class="glide__wrapper">
						<ul class="glide__track">
							<li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-033-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/starter_3.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/starter_5.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-027-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-029-copy.jpg' width='400'/></li><li class='glide__slide'><img src='https://www.wiselyshave.com/wp-content/uploads/2018/12/WISELY-2019-018-copy.jpg' width='400'/></li>						</ul>
					</div>
					<div class="glide__bullets"></div>
				</div>
							</div>
			</div>
		<div class="product-info d-table-cell v-middle">
			<div class="product-name">스타터 쉐이빙젤</div>
			<div class="product-desc">용량 : 75ml</div>
						<div class="product-price">2,900 원</div>



			<ul class="product-descList">
				<li>75ml, 약 1~2개월 사용 가능
</li><li>알로에 등 천연성분 사용
</li><li>100% 공기로 분사하여 안전
</li><li>녹이 슬지 않고 잔량 확인 가능</li>			</ul>



		</div>



	</div>

	<div class="d-table w270">
			<div class="d-table-cell">
			<div class="product-order-num2 ">

			<a class="product-order-minus"><span class="icon minus-roundbutton"></span></a>
			<span class="quantity">1</span>
			<a class="product-order-plus"><span class="icon plus-roundbutton"></span></a>

			</div>
		</div>

		<div class="lastbtnBox d-table-cell   t-left">
		<!--a href="javascript:;" class="btn-fillgrey btn-last-close btn-width250"><span>닫기</span></a>&nbsp;&nbsp;&nbsp;-->
		<a href="javascript:;" class="btn-add-lightbox btn-fillBlue btn-width250"><span>1회 구매 추가</span></a>
	</div>
	</div>


</div>

<form name="form-checkout" method="post" action="/checkout/">
	<input type="hidden" name="wisely-checkout" value="1" />
	<input type="hidden" name="is_subscription" value="1" />
	<div id="checkout-products"></div>
</form>


									</div>
			</div>
		</div>
	</div>
</div>

<style>
.seese-footer { display:none; }
</style>
<script>
window.onload = function(){
    jQuery(document).ready(function($){


		var page_order_type = "product-first";

		if(page_order_type == "product-first"){
			$("#subscription-product").fadeIn();
		}else{
			$("#subscription-period").fadeIn();
		}
		$("#btn-next-wrapper").fadeIn();
		$(".seese-footer").fadeIn();

		/**
		 * validate all elements in the subscription-products page
		 * to check if the page is now ready enough to order
		 */
		function validate_elements(){

			var subscription_selected	= $("#subscription-products .roundBox.selected").size() > 0;
			var period_selected			= $("#subscription-period .roundBox.selected-border").size() > 0;

			//console.log("subscription_selected: " + subscription_selected);
			//console.log("period_selected: " + period_selected);

			// 1. common-rules
			// - if subscription-product selected, enable clicking simple-product items, or disable 'em.
			$("#simple-products .product-item").each(function(e){
				var o = $(this);
				if(o.attr("product-unsellable") != "Y"){
					if(subscription_selected){
						o.removeClass("disable");
					}else{
						o.addClass("disable");
						if(o.hasClass("selected")){
							o.removeClass("selected");
							o.addClass("unselected");
						}
					}
				}
			});

			// 2. light-up the button "Next"
			set_btn_color($("#btn-next"),
				(page_order_type == "product-first" ?
					(subscription_selected ? "blue" : "grey") :
					(period_selected ? "blue" : "grey")));

			// 3. finally, check if the "order" is available
			set_btn_color($("#btn-order"), (subscription_selected &&  period_selected? "blue" : "grey"));
		}
		validate_elements();

		/**
		 * set button color
		 * @param o (object) target button object
		 * @param color (string) 'blue' or 'grey'
		 */
		function set_btn_color(o, color){
			if(o == null){ return; }
			if(color == "blue"){
				o.addClass("btn-fillBlue");
				o.removeClass("btn-fillgrey");
			}else if(color == "grey"){
				o.addClass("btn-fillgrey");
				o.removeClass("btn-fillBlue");
			}
		}

		// subscription-products OR simple-products: selection
		$("#subscription-products .roundBox, #simple-products .roundBox").click(function(e){
			e.preventDefault();
			var o = $(this);
			var product_id = o.attr("id").substring(13);
			var product_type = o.attr("product-type");

			if(3079==product_id) {
				return;
			}
			if(o.hasClass("disable")){ return; }

			// open-up a lightbox or unselect the roundbox
			if(o.hasClass("selected")){ select_roundBox(o, false); }
			else{
				if(product_type == "simple"){
					show_lightbox(1, product_id);
				}else{
					select_roundBox(o, true);
				}
			}

			validate_elements();
		});

		// subscription period selection
		$("#subscription-period .roundBox").click(function(e){
			e.preventDefault();
			// clear selected status
			$("#subscription-period .roundBox.selected-border").each(function(){ $(this).removeClass("selected-border"); });
			// select this
			$(this).addClass("selected-border");

			validate_elements();
		});

		// btn-next: product -> period
		$("#btn-next").click(function(e){
			e.preventDefault();
			if(!$(this).hasClass("btn-fillBlue")){ return; }

			var curr_element = "#subscription-period";
			var target_element = "#subscription-product";
			if(page_order_type == "product-first"){
				curr_element = "#subscription-product";
				target_element = "#subscription-period";
			}
			$(target_element).slideDown();
			$("#btn-order-wrapper").slideDown();

			var scroll_height = ($(target_element).offset().top - $("header.seese-header").height());
			$('html, body').animate({ scrollTop: scroll_height }, 500);
		});

		/**
		|-----------------------------------------------------------------------------------------
		| Lightbox-related functions
		|-----------------------------------------------------------------------------------------
		|*/

				$("#glide-3079").glide({ type:'carousel', autoplay:false });
				$("#glide-3291").glide({ type:'carousel', autoplay:false });
				$("#glide-2172").glide({ type:'carousel', autoplay:false });
				$("#glide-2979").glide({ type:'carousel', autoplay:false });
				$("#glide-859643").glide({ type:'carousel', autoplay:false });

		// show/hide lightbox
		function show_lightbox(lb_type, product_id){
			var target_id = "lb-type"+lb_type+"-"+product_id;
			var l = $("#" + target_id);
			l.css("position", "fixed");
			l.css("top", ($(window).height() - l.height())/2);
			l.fadeIn();
			$("#bg-lightbox-product-detail").fadeIn();
			$("#bg-lightbox-product-detail").attr("data-target", target_id);
		}
		function hide_lightbox(o){
			o.fadeOut();
			$("#bg-lightbox-product-detail").fadeOut();
			$("#bg-lightbox-product-detail").attr("data-target", "");
		}

		$("#bg-lightbox-product-detail").click(function(e){
			e.preventDefault();
			var target_id = $(this).attr("data-target");
			if(target_id != ""){
				hide_lightbox($("#" + target_id));
			}
		});

		// open-up light-box
		$(".infomark").click(function(e){
			var o = $(this).prev();
			var product_id = o.attr("id").substring(13);
			if(o.hasClass("disable")){ return; }
			// show lightbox
			show_lightbox(2, product_id);
		});

		// close light-box
		$(".lightBox .btn-close").click(function(e){
			e.preventDefault();
			hide_lightbox($(this).parent());
		});
		$(".lightBox .btn-last-close").click(function(e){
			e.preventDefault();
			hide_lightbox($(this).parent().parent());
		});

		// plus (+)
		$(".lightBox .product-order-plus").click(function(e){
			e.preventDefault();
			var qo = $(this).parent().find(".quantity");
			var quantity = parseInt(qo.text());
			qo.text(quantity + 1);
		});
		// minus (-)
		$(".lightBox .product-order-minus").click(function(e){
			e.preventDefault();
			var qo = $(this).parent().find(".quantity");
			var quantity = parseInt(qo.text());
			if(quantity > 1){
				qo.text(quantity - 1);
			}
		});

		$(".roundBox.disable").on("hover click", function(e){
			e.preventDefault();
		});

		$('.lightBox .color-buttons input').on('click', function() {
			var variationId = $(this).data('product_id');
			$('#product-item-'+$(this).closest('.lightBox').attr('product-id')).attr('product-id', variationId);
			$('.color-buttons input[data-product_id="'+variationId+'"]').attr('checked', true);

			$(".product-img-thumbnail").hide();
			$(".product-img-thumbnail-"+variationId).show();
		});

		$(".btn-add-lightbox").click(function(e){
			e.preventDefault();
			//console.log("btn-add-lightbox");
			var l = $(this).closest('.lightBox');
			var id = l.attr("product-id");
			var o = $("#product-item-" + id);
			if(o.attr("product-type") == "simple"){
				var quantity = parseInt(l.find(".quantity").text());
				//console.log("quantity: " + quantity);
				o.find(".product-quantity .quantity").text(quantity);
				o.attr("product-quantity", quantity);
				o.find(".product-quantity").css("display", "block");
			}

			// select the product
			select_roundBox(o, true);
			hide_lightbox(l);
			var selected_color_id = $("input[name='variation_color_target_2172']:checked").data("product_id");
			$(".product-img-selected").hide();
			$(".product-img-selected-"+selected_color_id).show();
		});

		// select the roundBox
		function select_roundBox(o, do_select){
			var _class_selected = "selected";
			if(do_select){
				o.addClass(_class_selected);
				o.removeClass("unselected");
			}else{
				if(o.find(".product-quantity") != null){
					o.attr("product-quantity", 1);
					o.find(".product-quantity .quantity").text(1);
				}
				if(o.hasClass(_class_selected)){ o.removeClass(_class_selected); }
				if(!o.hasClass("unselected")){ o.addClass("unselected"); }
			}
			validate_elements();
		}

		// order
		$("#btn-order").click(function(e){
			e.preventDefault();
			if(!$(this).hasClass("btn-fillBlue")){ return; }

			// [[type, id, attr-id, bililng-period, quantity], ...]
			var arr_items = [];
			// subscription items + biling period
			var billing_period = $("#subscription-period .roundBox.selected-border").attr("billing-period");
			$("#subscription-products .roundBox.selected").each(function(){
				var splitted = $(this).attr("product-attributes").split(",");
				var attr_key = parseInt(billing_period) - 1;
				var attr_id = splitted[attr_key];
				arr_items.push(["variable-subscription", $(this).attr("product-id"), attr_id, billing_period, "1", $(this).attr("product-price")]);
			});
			// simple items + quantity
			$("#simple-products .roundBox.selected").each(function(){
				arr_items.push(["simple", $(this).attr("product-id"), "", "", $(this).attr("product-quantity"), $(this).attr("product-price")]);
			});
			// add subscription items by ajax
			if(arr_items.length > 0)
			{
				$(this).removeClass("btn-fillBlue");
				$(this).addClass("btn-fillgrey");

				$.post(
					"/wp-admin/admin-ajax.php", {
						action: 'add_subscription_items',
						items: arr_items
					}, function(response){
						if(response.is_succeeded){
                            var _total_price = 0;
							for(var i=0; i<arr_items.length; i++){
								var _item = arr_items[i];
								$("#checkout-products").append(
									"<input type=\"hidden\" name=\"product_type[]\" value=\""+ _item[0] +"\" />"+
									"<input type=\"hidden\" name=\"product_id[]\" value=\""+ _item[1] +"\" />"+
									"<input type=\"hidden\" name=\"attr_id[]\" value=\""+ _item[2] +"\" />" +
									"<input type=\"hidden\" name=\"billing_period[]\" value=\""+ _item[3] +"\" />" +
									"<input type=\"hidden\" name=\"product_quantity[]\" value=\""+ _item[4]+"\" />"
								);
                                _total_price += parseInt(_item[5]);
							}
                            							$("form[name=form-checkout]").submit();
						}
					}, "json");
			}
		});
	});
};
</script>


<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KNJCD96"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<style>
a, .infomark{ cursor:pointer; }
#bg-lightbox-product-detail { pointer-events:none; }
#ajax-loading-div {
	background-image:url(https://www.wiselyshave.com/wp-content/themes/wisely/assets/images/ico-ajax-spinner-70x70.gif);
	background-size:cover;
	width:70px; height:70px; z-index:9998;
	top: 50%; left: 50%;
	margin-top: -35px; margin-left: -35px;
	position: fixed;
	display: none;
}
</style>


<div id="lb-notification" class="lb-notification" style="display:none;">
	<a class="btn-close"></a>
	<p class="lb-message"></p>
	<div class="lastbtnBox">
		<a class="btn-fillBlue btn-width250 btn-last-close"><span>확인</span></a>
	</div>
	<div class="clear"></div>
</div>
<div id="bg-lb-notification" class="lightBoxBg" style="display:none;"></div>
<div id="bg-lightbox-product-detail" class="lightBoxBg" style="display:none;" data-target=""></div>

<div id="ajax-loading-div"></div>

</div>
<!-- Seese Wrapper End -->

  <div class="container-fluid seese-bottomboxes">
    <div class="row">
          </div>
  </div>
    <!-- Footer Start -->
    <footer class="seese-footer">
      <!-- Footer Widgets Start -->
        <div class="center-block">
            <div class="container-fluid">
                <div class="row">
                    <div class="ft-left col-sm-4 col-md-4 col-lg-4">
                        <ul class="ft-sns">
                        	<li><a href="http://pf.kakao.com/_xkFAmxl" target="_blank"><i class="fa fa-comment fa-2x" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.facebook.com/wiselyshave" target="_blank"><i class="fa fa-facebook-official fa-2x" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.instagram.com/wiselyshave" target="_blank"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></a></li>
                        </ul>
                        <div class="footer_logo hidden-xs">
                            <a href="https://www.wiselyshave.com/">
                                <svg xmlns="http://www.w3.org/2000/svg" id="wisely-logo-svg" viewBox="0 0 123 47" id="logo" width="100%" height="100%">
<g><path d="M.213 15.352h5.236l5.235 11.484 5.7-13.299 5.7 13.299 5.194-11.484h5.192L21.957 36.968l-5.573-12.96-5.657 12.96L.213 15.352zM40.875 4.923c2.027 1.688.465 5.277-2.068 5.151a3.029 3.029 0 0 1-3.041-3.041c-.127-2.532 3.42-4.053 5.109-2.11zm-4.434 10.429h4.644V35.45h-4.644V15.352zM55.652 20.84c-.59-1.224-1.351-1.858-2.238-1.858-.844 0-1.562.675-1.562 1.521 0 .675.887 1.435 2.703 2.279l1.773.845c3.336 1.562 4.434 2.998 4.434 5.657 0 1.941-.676 3.547-2.069 4.856-1.393 1.265-3.082 1.899-5.067 1.899-3.419 0-5.783-1.647-7.177-4.94l3.969-1.815c1.14 2.026 1.858 2.619 3.251 2.619 1.562 0 2.364-.719 2.364-2.154 0-.972-.591-1.731-1.815-2.322l-2.575-1.225c-3.04-1.478-4.138-2.702-4.138-5.362 0-1.731.592-3.166 1.816-4.307 1.225-1.14 2.702-1.731 4.433-1.731 2.575 0 4.476 1.309 5.742 3.969l-3.844 2.069zM84.11 26.498H69.713c.296 3.251 2.238 5.405 5.236 5.405 1.14 0 2.11-.254 2.829-.804.759-.548 1.604-1.562 2.575-3.082l3.926 2.154c-2.364 4.094-5.277 5.868-9.499 5.868-2.999 0-5.405-.972-7.22-2.914-1.815-1.941-2.702-4.517-2.702-7.684 0-3.208.887-5.785 2.617-7.726 1.772-1.943 4.138-2.914 7.052-2.914 5.952 0 9.583 4.137 9.583 10.598v1.099zm-4.77-3.8c-.634-2.491-2.196-3.716-4.688-3.716-2.236 0-4.095 1.478-4.644 3.716h9.332zM89.518.616h4.645v26.009c0 1.941.295 3.293.844 4.095.55.761 1.52 1.141 2.913 1.141l-1.267 4.18c-2.321 0-4.137-.718-5.447-2.195-1.14-1.226-1.688-3.293-1.688-6.123V.616zM101.508 46.384l7.811-14.651-9.035-16.381h5.404l6.122 11.569 5.742-11.569h5.235l-16.002 31.032h-5.277z"/></g></svg>                            </a>
                        </div>
                    </div>
                    <div class="ft-right col-xs-12 col-sm-8 col-sm-offset col-md-8 col-md-offset col-lg-8 col-lg-offset">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><div class=" seese-widget footer-1-widget widget_nav_menu"><ul id="menu-footer-menu" class="main-navigation"><li id="menu-item-3969" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3969 seese-dropdown-menu"><a  href="#privacy">개인정보처리방침</a></li>
<li id="menu-item-3971" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3971 seese-dropdown-menu"><a  href="#terms">이용약관</a></li>
<li id="menu-item-3972" class="wisely-ext-lightbox menu-item menu-item-type-custom menu-item-object-custom menu-item-3972 seese-dropdown-menu"><a  href="#guide">이용안내</a></li>
</ul><div class="clear"></div></div> <!-- end widget --><div class=" seese-widget footer-1-widget widget_text">			<div class="textwidget"><p><b>와이즐리(주)</b> 경기도 성남시 분당구 판교로289번길 20, 판교테크노밸리 스타트업 캠퍼스 2동 8층 (삼평동)<br />
<b>대표자:</b> 김동욱 <b>사업자등록번호:</b> 344-88-00965 <a class="underline wisely-ext-lightbox" href="#company-info" rel="noopener">사업자정보확인</a><br />
<b>통신판매업신고번호:</b> 제 2018-성남분당-0624 <b>개인정보보호책임자:</b> 김윤호 <a class="link-email" href="mailto:yhkim@wiselyshave.com" target="_blank" rel="noopener">yhkim@wiselyshave.com</a><br />
<b>전화번호:</b> <a class="link-email" href="tel:1833-9133">1833-9133</a> <b>E-mail:</b> <a class="link-email" href="mailto:help@wiselyshave.com" target="_blank" rel="noopener">help@wiselyshave.com</a></p>
<div>고객님은 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 나이스페이먼츠(주)의 구매안전서비스를 이용하실 수 있습니다. <a class="underline wisely-ext-lightbox" href="#nicepay" rel="noopener">서비스 가입사실 확인</a></div>
</div>
		<div class="clear"></div></div> <!-- end widget --></div>                        <div class="seese-copyright col-xs-12">
                          <div class="">
                                    Copyright &copy;2019 WISELY. All rights reserved.                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

	</div>
</div>
<!-- Footer Widgets End -->    </footer>
    <!-- Footer End-->

</div><!-- Seese Wrap End -->

  <a href="javascript:void(0)" id="seese-closebtn"><i class="fa fa-times" aria-hidden="true"></i></a>
<link rel='stylesheet' id='seese-default-style-css'  href='https://www.wiselyshave.com/wp-content/themes/wisely/style.css?ver=4.8.3.01' type='text/css' media='all' />
<style id='seese-default-style-inline-css' type='text/css'>
.no-class {}.seese-title-bg-outer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}.seese-title-default .page-title {color:;}.no-class {}.seese-title-bg-outer::before {content:"";position:absolute;top:0;left:0;width:100%;height:100%;background-color:;}.no-class {}.seese-title-bg-inner {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}.seese-background-outer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;background-color:#ffffff;}.no-class {}.seese-background-inner {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;background-color:#ffffff;}.no-class {}.seese-footer {position:relative; background-repeat:no-repeat;background-position:center top;background-size:cover;}.no-class {}body.page-id- {}.no-class {}@media (max-width:767px) {.seese-mainmenu {display:none;}.slicknav_menu {display:block;}.slicknav_menu .nav.navbar-nav {display:block;}.navbar {min-height:inherit;}.seese-navicon {padding-top:14px;padding-bottom:13px;}.sub-menu.row {margin:0 !important;}.seese-fixed-header .scrolling.seese-header .seese-topright,.seese-topright {padding-right:50px;}}.no-class {}.seese-preloader-mask {background-color:#FFFFFF;height:100%;position:fixed;width:100%;z-index:100000;top:0;right:0;bottom:0;left:0;line-height:0px;}#seese-preloader-wrap {display:table;margin:0 auto;top:50%;transform:translateY(-50%);-webkit-transform:translateY(-50%);-moz-transform:translateY(-50%);position:relative;line-height:0px;}.seese-preloader-html. > div {background-color:;color:;}body, .woocommerce .seese_single_product_excerpt p,#tab-description p,.woocommerce-Reviews .description p{font-family:"Noto Sans", Arial, sans-serif;font-size:14px;line-height:1.42857143;font-style:normal;}.seese-header .seese-logo a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-mainmenu ul li a, #seese-mobilemenu .slicknav_nav li a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}#seese-mobilemenu .slicknav_nav li a.seese-title-menu,.seese-mainmenu ul li a.seese-title-menu,.seese-mainmenu ul li.seese-megamenu > ul > li > a:link,.seese-mainmenu ul li.seese-megamenu > ul > li > a:active,.seese-mainmenu ul li.seese-megamenu > ul > li > a:visited{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.woocommerce .variations label,.woocommerce p.woocommerce-result-count,.seese-single-team .seese-team-member-name,.woocommerce p.stock.out-of-stock,.seese-load-more-controls.seese-btn-mode .seese-btn,.woocommerce .group_table td del .woocommerce-Price-amount,.woocommerce .group_table td.label a,.woocommerce table.shop_table_responsive tr td:before, .woocommerce-page table.shop_table_responsive tr td:before,.seese-single-product-share .container > a,.woocommerce-Tabs-panel .comment_container .meta strong,.seese-product-summary-col .entry-summary ins .woocommerce-Price-amount,h1, h2, h3, h4, h5, h6,.seese-aside h2,.seese-aside .widget_shopping_cart_content .buttons a,.seese-specialPage a,.seese-gototop a,.modal-content input[type="search"],.seese-filterTabs li a,.seese-footer .widget_nav_menu li a,.seese-contentCol h1, .seese-contentCol h2, .seese-contentCol h3, .seese-contentCol h4, .seese-contentCol h5, .seese-contentCol h6,.seese-contentCol .seese-publish li a,.single .seese-article strong,.seese-sharebar .sharebox a,.seese-author .author-content a,.seese-author .author-content label,.seese-commentbox h3.comment-reply-title,.seese-commentbox h3.comments-title,.seese-readmore a,.seese-sidebar h2.widget-title,.seese-team-box .seese-team-info .seese-lift-up .member-name a,.seese-team-box .seese-team-info .seese-lift-up .member-name,.seese-testi-name a,.seese-testi-name,.woocommerce-checkout .checkout_coupon .form-row-last input[type="submit"],.woocommerce-checkout .login input[type="submit"],.woocommerce table strong,.woocommerce table th,.woocommerce-checkout-review-order-table strong,.woocommerce-checkout-review-order-table th,.cart-empty,.woocommerce-message,.woocommerce ul.products li a.added_to_cart.wc-forward,.woocommerce ul.products li a.button,.seese-dropcap,.seese-form-order-filter select,.seese-content-area .seese-result-count p,.page-numbers a,.page-numbers span.current,.wp-pagenavi span.current,.wp-pagenavi a,.seese-product-summary-col .entry-summary .woocommerce-Price-amount.amount{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.slick-slider .seese-prslr-content .seese-prslr-price,.seese-product-summary-col .product_meta span,.seese-sidebar .seese-recent-blog .boxright label,.seese-sidebar .tagcloud a,.seese-sidebar th,.seese-sidebar td,.seese-testi-name:before,.seese-testi-name:after,.woocommerce textarea,.woocommerce input[type="tel"],.woocommerce input[type="text"],.woocommerce input[type="password"],.woocommerce input[type="email"],.woocommerce input[type="url"],.woocommerce .select2-container .select2-choice,.woocommerce-checkout .checkout_coupon input[type="text"],.woocommerce-checkout .login input[type="password"],.woocommerce-checkout .login input[type="text"],.track_order input[type="text"],.woocommerce-ResetPassword input[type="text"],.seese-containerWrap #seese-woo-register-wrap input[type="email"],.seese-containerWrap #seese-woo-login-wrap input[type="url"],.seese-containerWrap #seese-woo-login-wrap textarea,.seese-containerWrap #seese-woo-login-wrap input[type="email"],.seese-containerWrap #seese-woo-login-wrap input[type="search"],.seese-containerWrap #seese-woo-login-wrap input[type="text"],.seese-containerWrap #seese-woo-login-wrap input[type="password"],.woocommerce-checkout .woocommerce-info,#ship-to-different-address .checkbox,#ship-to-different-address .input-checkbox,.woocommerce-checkout-payment label{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-sidebar h2.widget-title a,.up-sells.products h2,.related.products h2,.woocommerce p.cart-empty,#review_form h3.comment-reply-title,.wc-tabs-wrapper .wc-tabs li a,.seese-product-summary-col .quantity input,.seese-contentCol h1.product_title,button,.button,.vc_btn3-container a.vc_general,.seese-blog-pagination a,.seese-btn,input[type="submit"],input[type="button"],.seese-filterOptions h3,.wpcf7-form input[type="submit"],.seese-cntr-box .cntr-value,.seese-cntr-box .cntr-title,.slick-slider .seese-prslr-content .seese-prslr-shopNow-title a{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-bottomboxes h4,.seese-contentCol strong,.seese-contentCol h1.post-heading,.seese-title-area .page-title,.track_order h2,.seese-containerWrap #seese-woo-register-wrap h2,.seese-containerWrap #seese-woo-login-wrap h2,.woocommerce-checkout .checkout_coupon input[type="submit"],.woocommerce-checkout .login input[type="submit"],.track_order input[type="submit"],.woocommerce-ResetPassword input[type="submit"],.seese-containerWrap #seese-woo-register-wrap .seese-btn#seese-show-login-button,.seese-containerWrap #seese-woo-register-wrap input[type="submit"],.seese-containerWrap #seese-woo-login-wrap .seese-btn,.seese-containerWrap #seese-woo-login-wrap input[type="submit"],.form-row.place-order input[type="submit"]{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.slick-slider .seese-prslr-content .seese-prslr-title,.woocommerce td, .woocommerce th, .woocommerce-checkout-review-order-table td, .woocommerce-checkout-review-order-table th,.seese-filterOptions li span,.price_slider_amount .price_label,.woocommerce ul.products li.product-category h3,.seese-custom-badge,.seese-product-image-col .onsale,.woocommerce ul.products li span.onsale,.seese-product-summary-col .entry-summary del .woocommerce-Price-amount,.woocommerce div.product .woocommerce-product-rating a,.seese-cat-masonry .seese-cat-masonry-text .seese-cat-masonry-name,.seese-aside .product_list_widget li a,.seese-aside .product_list_widget li .quantity,.seese-aside .widget_shopping_cart_content .total,.seese-aside .widget_shopping_cart_content .total strong,.seese-filterOptions li a,.seese-copyright,.seese-sidebar .comment-publish label,.wpcf7-form select,.wpcf7-form input,.wpcf7-form textarea,input[type="date"],input[type="tel"],input[type="number"],.woocommerce .select2-container .select2-choice,input[type="password"],select,input[type="url"],textarea,input[type="email"],input[type="search"],input[type="text"],.tagbox .taglist a,.seese-pagination a .seese-label,.seese-pagination a .post-name,.breadcrumbs li,.wp-pagenavi span.pages,.seese-sidebar,.seese-sidebar li,.seese-sidebar li a,.seese-sidebar .widget_categories li a,.seese-sidebar .seese-recent-blog .boxright h4 a,.seese-sidebar table,.woocommerce ul.products .seese-product-cnt .price,.woocommerce ul.products .seese-product-cnt h3,.woocommerce p,.woocommerce-checkout .checkout_coupon p,.woocommerce-checkout .login p,.track_order p,.woocommerce-ResetPassword p,.seese-containerWrap #seese-woo-register-wrap form.register p,.seese-containerWrap #seese-woo-login-wrap form.login p,.woocommerce label,.woocommerce-checkout .checkout_coupon label,.woocommerce-checkout .login label,.track_order label,.woocommerce-ResetPassword label,.seese-containerWrap #seese-woo-register-wrap form.register label,.seese-containerWrap #seese-woo-login-wrap form.login label,.seese-containerWrap #seese-woo-login-wrap form.login .woocommerce-LostPassword a,.seese-containerWrap .seese-login-form-divider span,.woocommerce ul.products .seese-product-cnt .price,.woocommerce ul.products .seese-product-cnt h3,.seese-catslr-box .seese-catslr-text .seese-catslr-name,.seese-catdt-box .seese-catdt-text .seese-catdt-name{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}.seese-single-team .seese-team-member-job,.woocommerce-Tabs-panel .comment_container .meta time,.seese-cat-masonry .seese-cat-masonry-text .seese-cat-masonry-desc,.seese-bottomboxes .subtitle,blockquote,.seese-contentCol .seese-publish li,.comment-wrapper .comments-date,.seese-commentbox .date,.comment-wrapper .comments-date .comments-reply a,.seese-sidebar .comment-publish span,.seese-cntr-box .cntr-details,.seese-team-box .seese-team-info .seese-lift-up .member-job,.seese-team-box .seese-team-text em,.seese-testi-pro a,.seese-testi-pro,address,.woocommerce ul.products li .seese-product-cnt .seese-posted-in-cats .seese-single-cat a,.woocommerce ul.products li .seese-product-cnt .seese-posted-in-cats .seese-single-cat a,.slick-slider .seese-prslr-content .seese-prslr-desc,.seese-catslr-box .seese-catslr-text .seese-catslr-desc,.seese-catdt-box .seese-catdt-text .seese-catdt-desc{font-family:"Lora", Arial, sans-serif;font-style:normal;}.your-custom-class{font-family:"Noto Sans", Arial, sans-serif;font-style:normal;}
</style>
<script type='text/javascript'>
/* <![CDATA[ */
var channel_io_options = {"channel_io_plugin_key":"7f424af9-c2ee-400f-aef2-b5edbe4a944e","channel_io_hide_default_launcher":"","channel_io_custom_launcher_selector":"","login":""};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/channel-io/channel_plugin_script.js?ver=4.8.3.01'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/resizable.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/draggable.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/button.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/position.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/jquery/ui/dialog.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.70'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=3.2.2'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/wp-admin\/admin-ajax.php","wc_ajax_url":"https:\/\/www.wiselyshave.com\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments_b2627323470bbe1531b576244c5bb266"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=3.2.2'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/bootstrap.min.js?ver=3.3.6'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/plugins.js?ver=1.1.0.02'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/scripts.js?ver=1.1.0.02'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/glidejs/dist/glide.min.js?ver=1.0'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/simple-calendar/jquery.simple-calendar.js?ver=1567580219'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/raty/jquery.raty.js?ver=1.0'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/jquery.validate.min.js?ver=1.9.0'></script>
<script type='text/javascript'>
jQuery(document).ready(function($) {$("#commentform").validate({rules: {author: {required: true,minlength: 2},email: {required: true,email: true},comment: {required: true,minlength: 10}}});});
</script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-content/themes/wisely/assets/js/wc-scripts.js?ver=1.0'></script>
<script type='text/javascript' src='https://www.wiselyshave.com/wp-includes/js/wp-embed.min.js?ver=4.8.3.01'></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "s_5a2dac8d7891";
if (!_nasa) var _nasa={};
wcs.inflow("wiselyshave.com");
wcs_do(_nasa);
</script>



<div id="alert_notice_area" style="display:none; position:fixed; z-index:1000000; top:0px; left:0px; width:100%; height:100%; text-align:center; background-color:rgba(0,0,0,0.5);">
	<script>
	function closeAlert()
	{
		jQuery("input[name=progressMode]").val("");
		document.getElementById('alert_notice_area').style.display='none';
	}

	function goCheck()
	{
		var getProgress = jQuery("input[name=progressMode]").val();
		if( getProgress == "checkout"){
			jQuery(".wisely-checkout-button").trigger( "click" );
		}else if( getProgress == "addtocart"){
			closeAlert();
		}
	}
	</script>
	<input name="progressMode" type="hidden" value="" />
	<table style="border:0px !important; width:100%; height:100%;">
		<tr>
			<td align="center" valign="middle" style="border:0px !important; padding:0px 20px !important;">
				<div style="max-width:800px; background-color:#fff; border-radius:4px; padding:20px 20px; 20px 10px;">
					<div style="text-align:right;">
						<div style="display:inline-block; width:20px; height:20px; background:url('/wp-content/themes/wisely/assets/images/ic-close.png') 0 0 no-repeat; cursor:pointer;" onclick="closeAlert();"></div>
					</div>
					<div style="padding:0px 0px 25px 0px; font-size:20px; font-weight:bold; color:#000000;">
						<리필 면도날 배송 지연 안내>
					</div>
					<div style="font-size:14px; font-weight:bold; color:#000000; line-height:20px; padding:0px 20px 20px 20px;">
						주문 폭주로 인한 품절로 <리필 면도날 4개>의 배송이 지연되고 있습니다.<br>
						지금 주문 시 3월 28일(목)부터 순차적으로 배송이 시작될 예정이고, 늦어도 3월 29일(금)에는 배송이 시작될 예정입니다.<br>
						고객님들의 양해를 부탁드리며 뜨거운 성원에 다시 한번 감사드립니다.
					</div>
					<div>
						<div style="display:inline-block; background-color:#0096ff; color:#fff; font-size:16px; font-family:'notokr-demilight'; padding:10px 30px; border-radius:4px; cursor:pointer;" onclick="goCheck();">
							확인했어요!
						</div>
					</div>
				</div>
			</td>
		</tr>
	</table>
</div>




<div id="pleaseWait" style="display:none; position:fixed; left:50%; top:50%; width:276px; height:110px; margin-left:-138px; margin-top:-55px; background-color:#fff; z-index:90000; border-radius:5px;">
  <div style="display:table; width:100%; height:100%;">
    <div style="display:table-cell; vertical-align:middle; text-align:center;">
      <div style="font-size:16px; font-weight:bold; color:#333;" class="waitContents">잠시만 기다려 주세요 :)</div>
    </div>
  </div>
</div>



</body>
</html>
