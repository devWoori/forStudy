<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	    <meta name="Title" content="">
	    <meta name="Keywords" content="">
	    <meta name="Location" content="South Korea, Seoul">
		<title>BANG BANG</title>
		<link rel="shortcut icon" type="images/png" sizes="32x32" href="/finalui/resources/images/favicon.ico">
	    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/3/css/bootstrap.css" />
	    <link rel="stylesheet" type="text/css" href="/finalui/resources/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="/finalui/resources/package/jquery-ui-1.12.1/jquery-ui.css" />
		<link rel="stylesheet" type="text/css" href="/finalui/resources/package/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.css" />
		<link rel="stylesheet" type="text/css" href="/finalui/resources/package/fancybox-3.0/dist/jquery.fancybox.css" />
		<link rel="stylesheet" type="text/css" href="/finalui/resources/package/jquery-loading-master/dist/jquery.loading.css" />
		<link rel="stylesheet" type="text/css" href="/finalui/resources/package/fullcalendar-3.4.0/dist/fullcalendar.css" />
	    <link rel="stylesheet" type="text/css" href="/finalui/resources/css/style.css" />
	    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
		<link rel="stylesheet" type="text/css" href="/finalui/resources/package/slider-pro-master/dist/css/slider-pro.css" />
	    <!-- <script src="/finalui/resources/package/jquery/jquery-1.12.4.js"></script> -->
	    <script src="/finalui/resources/js/jquery-3.3.1.min.js"></script>
		<script src="/finalui/resources/package/jquery-ui-1.12.1/jquery-ui.js"></script>
		<script src="/finalui/resources/package/moment/moment-2.19.2.js"></script>
		<script src="/finalui/resources/package/js-cookie-master/src/js.cookie.js"></script>
		<script src="/finalui/resources/package/jquery-loading-master/dist/jquery.loading.js"></script>
		<script src="/finalui/resources/package/fullcalendar-3.4.0/dist/fullcalendar.js"></script>
		<script src="/finalui/resources/package/fullcalendar-3.4.0/dist/locale-all.js"></script>
		<script src="/finalui/resources/package/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.concat.min.js"></script>
		<script src="/finalui/resources/package/fancybox-3.0/dist/jquery.fancybox.js"></script>
		<script src="/finalui/resources/package/eum/common.js"></script>
		<script src="/finalui/resources/package/eum/select.style.js"></script>
		<script src="/finalui/resources/package/slider-pro-master/dist/js/jquery.sliderPro.js"></script>
		
		<script type="text/javascript">
			$(function(){
				
				// 로그인 팝업
				$(".btnLogin").click(function(){
					$(this).fancybox({
						src		: '/member/login',
						type	: 'iframe',
						opts	: {
							iframe : {
								css : {
									width       : '430px',
									height      : '350px'
								}
							}
						}
					});
				});
				
				// 회원가입 팝업
				$(".btnJoin").click(function(){
					$(this).fancybox({
						src		: '/member/login',
						type	: 'iframe',
						opts	: {
							iframe : {
								css : {
									width       : '430px',
									height      : '350px'
								}
							}
						}
					});
				});
				
			});
		</script>
	</head>
	<body>
		<div class="adminHeader">
		    <div class="global_top">
				<h1 class="logo"><a href="/main/index">BANG GRAE</a></h1>
				<div class="myNavBox">
					<!-- <a href="javascript:void(0);" onclick="$.inc.header.onLogout();" class="btnLogin btnLogout"><span>로그아웃</span></a>
		    		<a href="/member/info" class="btnLogin btnMyinfo"><span>내 계정</span></a> -->
					<a href="javascript:void(0);" class="btnLogin"><span>로그인</span></a>
					<a href="javascript:void(0);" class="btnJoin"><span>회원가입</span></a>
				</div>
		        <ul class="global_top_menu">
					<li class="navTab navTab_1"><a href="">MAP</a></li>
					<li class="navTab navTab_2"><a href="">BANG</a></li>
					<li class="navTab navTab_5"><a href="">ZZIM</a></li>
					<li class="navTab navTab_6"><a href="">NOTICE</a></li>
		        </ul>
				<a href="" class="adminTab"><span>관리자</span></a>
		    </div>
		</div>
	</body>
</html>
