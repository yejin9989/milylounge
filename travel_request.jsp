<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.text.*,java.sql.*,java.util.*" %>
<%@ page language="java" import="myPackage.*" %> 
<% request.setCharacterEncoding("UTF-8"); %>

<% //데스크탑 금지
String ua=request.getHeader("User-Agent").toLowerCase();

if (ua.matches(".*(android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|symbian|treo|up\\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino).*")||ua.substring(0,4).matches("1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|e\\-|e\\/|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\\-|2|g)|yas\\-|your|zeto|zte\\-"));
else{
	 response.getWriter().println("<script type=\"text/javascript\">");
     response.getWriter().println("location.href='desktopindex.html'");
     response.getWriter().println("</script>");
}
%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" type = "text/css" href="footer.css">
<link rel="stylesheet" type = "text/css" href="css/bootstrap-theme.css">
<link rel="stylesheet" type = "text/css" href="css/bootstrap.css">
<link rel="stylesheet" type = "text/css" href="http://flatlogic.github.io/awesome-bootstrap-checkbox/bower_components/Font-Awesome/css/font-awesome.css">
<link rel="stylesheet" type = "text/css" href="http://flatlogic.github.io/awesome-bootstrap-checkbox/demo/build.css">
<link rel="stylesheet" type="text/css" href="https://pm.pstatic.net/css/webfont_v170623.css"/>
<link rel="stylesheet" type = "text/css" href="menu.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/board.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/contents.css">
<link rel="stylesheet" href="css/datepicker.css">
<link rel="stylesheet" href="css/fakeLoader.css">
<link rel="stylesheet" href="css/landing.css">
<link rel="stylesheet" href="css/layer.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/product.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
<!-- 占쎈립占쎄묘占쎈뮩占쎌뵬占쎌뵠占쎈굡 -->
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

    /* 疫꿸퀣�덌옙肉� 占쎈립占쎄묘 占쎌뵠甕겹끋�뱜 css */
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
	<script src="/resources/mobile/js/jquery.js"></script>
<script src="/resources/mobile/js/ui.libs.js"></script>
<script src="/resources/mobile/js/ui.plugin.js?v=20190619"></script>
<style type="text/css">
	html{
	width:100%;
	}
	body{
	margin : 0px;
	font-family: NanumSquare;
	width:100%;
	}
	input[id="cb1"]+label{
	display:inline-block;
	width:20px;
	height: 20px;
	border:2px solid #bcbcbc;
	cursor:pointer;
	}
	input[id="cb1"]:checked+label{
	background-color: #666666;
	}
	.radio label::before{
	background-color: #8c8c8c8c;
	border: none;
	}
	label{
	width:100%;
	display:initial;
	}
	p{
	margin:0px;
	padding: 40px 26px 6px 26px;
	font-size: 17px;
	}
	#ifLiving p{
		padding: 0px;
		padding-top:20px;
	}
	.box-radio-input input[type="radio"]{
		display:none;
	}
	.box-radio-input input[type="radio"] + span{
		display:inline-block;
		background:none;
		border:1px solid #dfdfdf;
		text-align:center;
		height:35px;
		line-height:33px;
		font-weight:500;
		cursor:pointer;
		width:49%;
	}
	.box-radio-input input[type="radio"]:checked + span{
		border:1px solid #000000c7;
		background:#000000c7;
		color: #fff;
	}
	select{
		height: 35px;
		width:32%;
	}
	input[type="date"]{
		width:99%;
	}
	input[type="text"]{
		width:48%;
	}
	
	input[type="checkbox"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip:rect(0,0,0,0);
	border: 0
	}
	input[type="checkbox"] + label {
	display: inline-block;
	position: relative;
	cusor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	}
	input[type="checkbox"] + label:before {
	content: ' ';
	display: inline-block;
	width: 18px;
	height: 18px;
	line-height: 18px;
	margin: -2px 8px 0 0;
	text-align: center;
	vertical-align: middle;
	background: #fafafa;
	border: 1px solid #cacece;
	border-radius: 3px;
	box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
	}
	input[type="checkbox"] + label:active:before,
	input[type="checkbox"]:checked + label:active:before {
        box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
	}
	input[type="checkbox"]:checked + label:before {
	content: '\2713';
	color: #314ca2;
	text-shadow: 1px 1px white;
	background: #f1f4ff;
	border-color: #adb8c0;
	box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
	}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Milymood</title>
</head>
<body>
<%session.setAttribute("page", "travel_request.jsp");
String now = session.getAttribute("page")+"";
String s_id = session.getAttribute("s_id")+"";
%>
<%
now = session.getAttribute("page") + "";
Connection conn = DBUtil.getMySQLConnection();
ResultSet rs = null;
PreparedStatement pstmt = null;
String query = "SELECT * FROM IMG WHERE Page = ?";
pstmt = conn.prepareStatement(query);
pstmt.setString(1, now);
rs = pstmt.executeQuery();
String imgpath = "";
String id = "";
HashMap<String, String> map = new HashMap<String, String>();
while(rs.next()){
	id = rs.getString("Id");
	imgpath = rs.getString("ImgPath");
	map.put(id, imgpath);
}
pstmt.close();
rs.close();
query="";
conn.close();
%>
<div class="topbar">
	<div id="back">
	<a href="index.jsp">
	<img src="img/backarrow.png"><span style="top:5px;left:8px;">뒤로</span></a>
	</div>
	<div class="milylounge">
	<a href="index.jsp"><img id="logo" src="img/milylounge.png" style="width:90px;"></a>
	</div>
</div>
<!-- container -->
<div id=container style="margin:40px 0 0 0; width:100%;">
	<div>
	<img id='main' src=<%=map.get("main")%> width="100%" >
<%
if(s_id.equals("admin"))//관리자 계정일 경우
	{%>
<form method="post" enctype="multipart/form-data" action="_changeimg.jsp">
<input type="file" name="filename1" size=40>
<input type="button" value="이미지수정"><br><br>
</form>
<%}%>
	</div>
<form action="_travel_request.jsp">
<p>현관</p>
<div id="page-transitions" class="wrap">
<div id="page-content" class="page-content" style="min-height:200px;">
	<div id="page-content-scroll" class="header-clear-2 header-margin-top">
	<div class="hard_coding_part my_home_hc">
					<div class="hsdt_info clearfix">
					</div>
					<div class="hsdt_info clearfix">
<div class="event_wrap">
    <div class="event_detail bg06">
        <div class="btn-slider">
            <!-- Swiper -->
            <div class="swiper-container swiper-container_1 swiper-container-initialized swiper-container-horizontal swiper-container-android">
                <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-1058px, 0px, 0px);">
                    <div class="swiper-slide" style="width:529px;position:relative;">
                    <img id="e1" src=<%=map.get("e1")%>>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="entrance" class="mainRadio" value="1">첫번째 현관옵션</label>
                    </div>
                    </div>
                    <div class="swiper-slide swiper-slide-prev" style="width:529px;position:relative;">
					<img id="e2"src=<%=map.get("e2")%>>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="entrance" class="mainRadio" value="2">두번째 현관옵션</label>
                    </div>
					</div>
                    <div class="swiper-slide swiper-slide-active" style="width:529px;position:relative;">
                    <img id="e3" src=<%=map.get("e3")%>>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="entrance" class="mainRadio" value="3">세번째 현관옵션</label>
                    </div>
                    </div>
                    <div class="swiper-slide swiper-slide-next" style="width:529px;position:relative;">
                    <img id="e4" src=<%=map.get("e4")%>>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="entrance" class="mainRadio" value="4">네번째 현관옵션</label>
                    </div>
                    </div>
                </div>
                <!--  div id="swiper-pagination_1" class="swiper-pagination swiper-pagination-progressbar"><span class="swiper-pagination-progressbar-fill" style="transform: translate3d(0px, 0px, 0px) scaleX(0.75) scaleY(1); transition-duration: 300ms;"></span></div-->
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
<p>거실</p>
<div id="page-transitions" class="wrap">
<div id="page-content" class="page-content" style="min-height:200px;">
	<div id="page-content-scroll" class="header-clear-2 header-margin-top">
	<div class="hard_coding_part my_home_hc">
					<div class="hsdt_info clearfix">
					</div>
					<div class="hsdt_info clearfix">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
<div class="event_wrap">
    <div class="event_detail bg06">
        <div class="btn-slider">
            <!-- Swiper -->
            <div class="swiper-container swiper-container_1 swiper-container-initialized swiper-container-horizontal swiper-container-android">
                <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-1058px, 0px, 0px);">
                    <div class="swiper-slide" style="width:529px;position:relative;">
                    <img src=<%=map.get("l1")%> id='l1'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="livingroom" class="mainRadio" value="1">첫번째 거실옵션</label>
                    </div>
                    </div>
                    <div class="swiper-slide swiper-slide-prev" style="width:529px;position:relative;">
					<img src=<%=map.get("l2")%> id="l2">
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="livingroom" class="mainRadio" value="2">두번째 거실옵션</label>
                    </div>
					</div>
                    <div class="swiper-slide swiper-slide-active" style="width:529px;position:relative;">
                    <img src=<%=map.get("l3")%> id='l3'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="livingroom" class="mainRadio" value="3">세번째 거실옵션</label>
                    </div>
                    </div>
                    <div class="swiper-slide swiper-slide-next" style="width:529px;position:relative;">
                    <img src=<%=map.get("l4")%> id='l4'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="livingroom" class="mainRadio" value="4">네번째 거실옵션</label>
                    </div>
                    </div>
                </div>
                <!--  div id="swiper-pagination_1" class="swiper-pagination swiper-pagination-progressbar"><span class="swiper-pagination-progressbar-fill" style="transform: translate3d(0px, 0px, 0px) scaleX(0.75) scaleY(1); transition-duration: 300ms;"></span></div-->
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
<p >침실</p>
<div id="page-transitions" class="wrap">
<div id="page-content" class="page-content" style="min-height:200px;">
	<div id="page-content-scroll" class="header-clear-2 header-margin-top">
	<div class="hard_coding_part my_home_hc">
					<div class="hsdt_info clearfix">
					</div>
					<div class="hsdt_info clearfix">
<div class="event_wrap">
    <div class="event_detail bg06">
        <div class="btn-slider">
            <!-- Swiper -->
            <div class="swiper-container swiper-container_1 swiper-container-initialized swiper-container-horizontal swiper-container-android">
                <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-1058px, 0px, 0px);">
                    <div class="swiper-slide" style="width:529px;position:relative;">
                    <img src=<%=map.get("d1")%> id='d1'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="bedroom" class="mainRadio" value="1">첫번째 침실옵션</label>
                    </div>
                    </div>
                    <div class="swiper-slide swiper-slide-prev" style="width:529px;position:relative;">
					<img src=<%=map.get("d2")%> id='d2'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="bedroom" class="mainRadio" value="2">두번째 침실옵션</label>
                    </div>
					</div>
                    <div class="swiper-slide swiper-slide-active" style="width:529px;position:relative;">
                    <img src=<%=map.get("d3")%> id='d3'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="bedroom" class="mainRadio" value="3">세번째 침실옵션</label>
                    </div>
                    </div>
                    <div class="swiper-slide swiper-slide-next" style="width:529px;position:relative;">
                    <img src=<%=map.get("d4")%> id='d4'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="bedroom" class="mainRadio" value="4">네번째 침실옵션</label>
                    </div>
                    </div>
                </div>
                <!--  div id="swiper-pagination_1" class="swiper-pagination swiper-pagination-progressbar"><span class="swiper-pagination-progressbar-fill" style="transform: translate3d(0px, 0px, 0px) scaleX(0.75) scaleY(1); transition-duration: 300ms;"></span></div-->
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
<p>부엌</p>
<div id="page-transitions" class="wrap">
<div id="page-content" class="page-content" style="min-height:200px;">
	<div id="page-content-scroll" class="header-clear-2 header-margin-top">
	<div class="hard_coding_part my_home_hc">
					<div class="hsdt_info clearfix">
					</div>
					<div class="hsdt_info clearfix">
<div class="event_wrap">
    <div class="event_detail bg06">
        <div class="btn-slider">
            <!-- Swiper -->
            <div class="swiper-container swiper-container_1 swiper-container-initialized swiper-container-horizontal swiper-container-android">
                <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-1058px, 0px, 0px);">
                    <div class="swiper-slide" style="width:529px;position:relative;">
                    <img src=<%=map.get("k1")%> id='k1'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="kitchen" class="mainRadio" value="1">첫번째 부엌옵션</label>
                    </div>
                    </div>
                    <div class="swiper-slide swiper-slide-prev" style="width:529px;position:relative;">
					<img src=<%=map.get("k2")%> id='k2'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="kitchen" class="mainRadio" value="2">두번째 부엌옵션</label>
                    </div>
					</div>
                    <div class="swiper-slide swiper-slide-active" style="width:529px;position:relative;">
                    <img src=<%=map.get("k3")%> id='k3'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="kitchen" class="mainRadio" value="3">세번째 부엌옵션</label>
                    </div>
                    </div>
                    <div class="swiper-slide swiper-slide-next" style="width:529px;position:relative;">
                    <img src=<%=map.get("k4")%> id='k4'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="kitchen" class="mainRadio" value="4">네번째 부엌옵션</label>
                    </div>
                    </div>
                </div>
                <!--  div id="swiper-pagination_1" class="swiper-pagination swiper-pagination-progressbar"><span class="swiper-pagination-progressbar-fill" style="transform: translate3d(0px, 0px, 0px) scaleX(0.75) scaleY(1); transition-duration: 300ms;"></span></div-->
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
<p>화장실</p>
<div id="page-transitions" class="wrap">
<div id="page-content" class="page-content" style="min-height:200px;">
	<div id="page-content-scroll" class="header-clear-2 header-margin-top">
	<div class="hard_coding_part my_home_hc">
					<div class="hsdt_info clearfix">
					</div>
					<div class="hsdt_info clearfix">
<div class="event_wrap">
    <div class="event_detail bg06">
        <div class="btn-slider">
            <!-- Swiper -->
            <div class="swiper-container swiper-container_1 swiper-container-initialized swiper-container-horizontal swiper-container-android">
                <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-1058px, 0px, 0px);">
                    <div class="swiper-slide" style="width:529px;position:relative;">
                    <img src=<%=map.get("b1")%> id='b1'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="bathroom" class="mainRadio" value="1">첫번째 화장실옵션</label>
                    </div>
                    </div>
                    <div class="swiper-slide swiper-slide-prev" style="width:529px;position:relative;">
					<img src=<%=map.get("b2")%> id='b2'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="bathroom" class="mainRadio" value="1">두번째 화장실옵션</label>
                    </div>
					</div>
                    <div class="swiper-slide swiper-slide-active" style="width:529px;position:relative;">
                    <img src=<%=map.get("b3")%> id='b3'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="bathroom" class="mainRadio" value="1">세번째 화장실옵션</label>
                    </div>
                    </div>
                    <div class="swiper-slide swiper-slide-next" style="width:529px;position:relative;">
                    <img src=<%=map.get("b4")%> id='b4'>
                    <div style="position:absolute;bottom:10%;color:white;">
                    	<label><input type="radio" name="bathroom" class="mainRadio" value="1">네번째 화장실옵션</label>
                    </div>
                    </div>
                </div>
                <!--  div id="swiper-pagination_1" class="swiper-pagination swiper-pagination-progressbar"><span class="swiper-pagination-progressbar-fill" style="transform: translate3d(0px, 0px, 0px) scaleX(0.75) scaleY(1); transition-duration: 300ms;"></span></div-->
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

<section class="sub_container product" style="margin:0 0 0 0;">
<div style="margin-top:50px; padding:0 20px; z-index:-1;">
<!--input type="radio" name="applitype" id="living"><label for="living">상담신청</label-->
<h2 style="text-align:center;"></h2>
<!--input type="radio" name="applitype" id="commerce"><label for="commerce">상업공간상담신청</label-->

<div id="ifLiving" style="display:block;">
<h4 style="text-align:center;"></h4>
<p style="margin:0px;padding-top:10px;">시공할 공간의 규모는 어떻게 되나요?</p>
<label class="box-radio-input"><input type="radio" name="area_type" value="supplyArea" checked="checked"><span>공급면적</span></label>
<label class="box-radio-input"><input type="radio" name="area_type" value="privateArea"><span>전용면적</span></label>
<select style="width:99%;margin-top:3px;" name="area_size">
	<option value="59">59m² (18평)</option>
	<option value="62">62m² (19평)</option>
	<option value="66">66m² (20평)</option>
	<option value="69">69m² (21평)</option>
	<option value="72">72m² (22평)</option>
	<option value="75">75m² (23평)</option>
	<option value="79">79m² (24평)</option>
	<option value="82">82m² (25평)</option>
	<option value="85">85m² (26평)</option>
	<option value="89">89m² (27평)</option>
	<option value="92" selected>92m² (28평)</option>
	<option value="95">95m² (29평)</option>
	<option value="99">99m² (30평)</option>
	<option value="102">102m² (31평)</option>
	<option value="105">105m² (32평)</option>
	<option value="108">108m² (33평)</option>
	<option value="112">112m² (34평)</option>
	<option value="115">115m² (35평)</option>
	<option value="118">118m² (36평)</option>
	<option value="122">122m² (37평)</option>
	<option value="125">125m² (38평)</option>
	<option value="128">128m² (39평)</option>
	<option value="132">132m² (40평)</option>
	<option value="135">135m² (41평)</option>
	<option value="138">138m² (42평)</option>
	<option value="141">141m² (43평)</option>
	<option value="145">145m² (44평)</option>
	<option value="148">148m² (45평)</option>
	<option value="151">151m² (46평)</option>
	<option value="155">155m² (47평)</option>
	<option value="158">158m² (48평)</option>
	<option value="161">161m² (49평)</option>
	<option value="165">165m² (50평)</option>
</select>
<span style="padding:2px; display:block;"></span>
<select style="width:99%; margin-bottom:3px;" name="add_room">
	<option value="0">확장방 0개</option>
	<option value="1">확장방 1개</option>
	<option value="2">확장방2개</option>
	<option value="3">확장방 3개</option>
</select>

<label class="box-radio-input"><input type="radio" name="living_expand" value="1"><span>거실확장</span></label>
<label class="box-radio-input"><input type="radio" name="living_expand" value="0" checked="checked"><span>거실 미확장</span></label>

<p>희망시공일</p>
<input name="construct_date" type="date">
<div class="agree"><div class="all_agree">
<input name="construct_date_defined" type="checkbox" id="ck1" value="0"><label for="ck1"><span></span>시공일미정</label>
</div></div>

<p>고객명/연락처</p>
<input type="text" name="name" placeholder="고객명">
<input type="text" name="mobile" placeholder="연락처"><br>
<input type="text" name="address" placeholder="주소" style="width:97%;margin-top:3px;"><br>
<input type="checkbox" name="agree" value="yes" id="agree">
<label for="agree"><span></span>개인정보 수집/이용에 동의합니다</label>
<a href="personal.html" target="_blanck" style="font-size:11px;float:right;padding-right:10px;display:block;">전문보기</a>

<input type="submit" style="float:left;background-color:#000000c7; color:#fff; display:block; position:relative; bottom:10px; width:100%; line-height:70px; left:-0px; text-align:center; font-size:17px; margin-top:10px;" value="상담신청하기">
</div>
<div id="ifCommerce" style="display:none;">
<p style="margin:0px;">업종(자세히 적어주세요)</p>
<select name="businessType">
	<option value="store">상가/매장</option>
	<option value="restaurant">카페/식당</option>
	<option value="academy">학원/교육</option>
	<option value="office">오피스</option>
	<option value="lodging">숙박</option>
	<option value="medical">의료</option>
	<option value="Franchise">프랜차이즈</option>
	<option value="sign">간판</option>
	<option value="etc">기타</option>
</select>
<input type="text" name="businessDetail" value="[선택] 업종 상세내용 (기타 선택시 필수입력)">
<p>평수/층수</p>
<input type="text">평
<input type="text">층
<p>시공지 주소</p>
<input type="text">
<p>고객명/연락처</p>
<input type="text" value="고객명을 입력하세요">
<input type="text" value="연락처를 입력하세요">
<p>시공일정/예산</p>
<input type="date"> <input type="checkbox">시공일정 미정
<select name="fee">
	<option value="" disabled selected>예상비용 선택</option>
	<option value="0">1000만원미만</option>
	<option value="1000">1000만원~2000만원 미만</option>
	<option value="2000">2000만원~3000만원 미만</option>
	<option value="3000">3000만원~5000만원 미만</option>
	<option value="5000">5000만원~1억원 미만</option>
	<option value="10000">1억원 이상</option>
	<option value="x">미정 (상담후 결정)</option>
</select>
<p>특이사항</p>
<input type="text">

<p>연락처</p>
<input type="text">

</div>
</section>
</form>
</div>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
//<input type="radio" name="applitype" id="living"><label for="living">주거공간상담신청</label>
//<input type="radio" name="applitype" id="commerce"><label for="commerce">상업공간상담신청</label>

var rad = document.getElementsByName('applitype');
var living = document.getElementById('ifLiving');
var commerce = document.getElementById('ifCommerce');
rad[0].onclick = function(){
	//alert("I\'m not checked!")
	commerce.style.display = "none";
	living.style.display = "block";
};
rad[1].onclick = function(){
	//alert("I\'m checked!");
	commerce.style.display = "block";
	living.style.display = "none";
};
</script>
<div id="footer" class="g_footer _footer">
    <div class="g_info_footer">
        <div class="g_center_area">
            <a id="toggleme" class="g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info">밀리무드 사업자정보</a>
            <!-- 사업자 기본정보 -->
            <div class="g_info_area _business_info_area">
                <dl>
                    <dt>대표</dt>
                    <dd>길영민</dd>
                    <dt>주소</dt>
                    <dd>대구광역시 북구 대현동 <span class="g_en">199-8</span>번지</dd>
                    <dt>전화</dt>
                    <dd><a class="g_en" href="tel:010-4848-7660">010-4848-7660</a> (대표전화/고객센터)</dd>
                    <dt>문의</dt>
                    <dd><a class="g_en" href="mail:zenith9500@naver.com" target="_blank">zenith9500@naver.com</a></dd>
                    <dt class="g_w2">사업자등록번호</dt>
                    <dd><span class="g_en">476-30-00276</span></dd>
                    <dt class="g_w2">통신판매업신고번호</dt>
                    <dd>제<span class="g_en">2017-</span>대구북구<span class="g_en">-0141</span>호</dd>
                    <dt class="g_w2">호스팅 서비스 제공</dt>
                    <dd>카페24</dd>
                </dl>
            </div>
            <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
            <script>
            	$(document).ready( function() {
            		$('#toggleme').click( function(){
            		if($('#toggleme').hasClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info on'))
            			$('#toggleme').removeClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info on').addClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info');
            		else
            			$('#toggleme').removeClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info').addClass('g_fd_info _business_info _click(shopn.mobile.footer.businessInfoToggle()) _stopDefault N=a:fot.info on');
            		
            		});
            	})
            </script>
            <!-- //사업자 기본정보 -->
            <div class="g_link_area">
                <a href="https://www.ftc.go.kr/www/bizCommList.do?key=232" class="N=a:fot.sellerinfo" target="_blank"><span class="g_txt">사업자정보 확인</span></a>
            </div>
        </div>
        <!-- 안드로이드용 바로가기 -->
        <iframe id="uriFrame" src="" height="0" width="0" style="border:0px"></iframe>
		<div class="u_sca N=a:fot.shortcut">
			<a href="javascript:;;" class="N=a:fot.shortcut g_btn _click(shopn.mobile.shortcut.addShortCut(intent://addshortcut?version=9&amp;url=https%3A%2F%2Fm.smartstore.naver.com%2Finflow%2Foutlink%2Fs%2Fmilymood%3Ftr%3Ddv%26gtme%3D1&amp;icon=https%3A%2F%2Fshop-phinf.pstatic.net%2F20180731_50%2Fgym9510_1533025977890qYSce_PNG%2F15744836740851773_269127316.png%3Ftype%3Dround_160&amp;title=%EB%B0%80%EB%A6%AC%EB%AC%B4%EB%93%9C&amp;serviceCode=shopN#Intent;scheme=naversearchapp;action=android.intent.action.VIEW;category=android.intent.category.BROWSABLE;package=com.nhn.android.search;end,5.0)) u_sc  _stopDefault">
				<span class="u_ics"><img src="https://shop-phinf.pstatic.net/20180731_50/gym9510_1533025977890qYSce_PNG/15744836740851773_269127316.png?type=round_160" alt=""></span>
				<em>네이버앱의</em><strong>밀리무드</strong> <span>홈화면에 바로가기 추가</span> <span class="u_ica"></span>
			</a>
		</div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>//揶쏆뮆�롳옙�뻻�⑨옙 占쎄퐨占쎄문占쎈뻻 �넫�굝履� 占쎄퐨占쎄문占쎌넅筌롳옙 癰귣똻�뵠占쎈즲嚥∽옙
//<input type="radio" name="is_ohouse" value="off" id="expert-form00-0-2">
//<label for="expert-form00-0-2"><span class="expert-grid-select-input_button">揶쏆뮆�롳옙�뻻�⑨옙</span></label>

//<!--// 揶쏆뮆�롳옙�뻻�⑨옙 占쎄퐨占쎄문占쎈뻻 癰귣똻�뿫 -->
//<div class="expert-form-group expert-form-group01 clear" id="work_group" style="display:none;">
				
var rad = document.getElementsByName('is_ohouse');
var roquf = document.getElementById('expert-form00-0-2');
rad[0].onclick = function(){
	//alert("I\'m not checked!")
	document.getElementById('work_group').style.display = "none";
};
rad[1].onclick = function(){
	//alert("I\'m checked!");
	document.getElementById('work_group').style.display = "block";
};
</script>

<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "3602e31fd32c7e";
wcs_do();
</script>
	</body>
</html>