<%@ page language="java" import="user.User"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
   <head>
      <title>梅德萨斯</title>
      <!-- Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<script type="text/javascript">
		function loginStatus(){
			var obj1=document.getElementsByClassName("lo-Re_status");
			var obj2=document.getElementById("userstatus");
			var obj3=document.getElementById("leave");
			if('${login_status}' == "login"){
				obj1[0].style.display="none";
				obj1[1].style.display="none";
				obj2.style.display="block";
				obj3.style.display="block";
			}else{
				obj1[0].style.display="block";
				obj1[1].style.display="block";
				obj2.style.display="none";
				obj3.style.display="none";
			}
		}
	</script>
	<!-- // Meta Tags -->
<!-- Testimonials-slider-css-files -->
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
	<link href="css/owl.theme.css" rel="stylesheet">
<!-- //Testimonials-slider-css-files -->

      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.css" rel="stylesheet">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
	  <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<!--stylesheets-->
		<link href="css/contact.css" rel="stylesheet" type='text/css' media="all" />
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
	  <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
   </head>
   <body onload="loginStatus()">
<header>
		<div class="top">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 top-middle">
						<ul>
							<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#"><i class="fab fa-google-plus-g"></i></i></a></li>
							<li><a href="#"><i class="fab fa-linkedin-in"></i></i></a></li>
						</ul>
					</div>
					<div class="col-sm-6 top-left">
						<ul>
							<li><i class="fas fa-phone"></i> +021 365 777</li>
							<li><div class="lo-Re_status" ><a href="LoginUI/login.html" class="L_R">登录</a></div></li>
							<li><div class="lo-Re_status"><a href="RegisterUI/register.html" class="L_R">注册</a></div></li>
							<li class="nav-item dropdown">
								<div id="userstatus">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
							   					 aria-expanded="false">您好，${userName}
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="myhome.jsp">我的空间</a>
									<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="ShoppingCart">购物车</a>
									<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="OrderList">我的订单</a>
									</div>
									<li><div id="leave" style="display:none;"><a href="Leave">退出</a></div></li>
							   	</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
    <div class="header-bar">
		<div class="container">
            <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
               <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
               </button>
			   <div ><a href="index.jsp"><img alt="" src="images/logo.png" width=250px height=60px></a>
			   
			   </div>
			   
               <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                  <ul class="navbar-nav">
                     <li class="nav-item ">
                        <a class="nav-link" href="carType.jsp">车型 <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item">
                        <a href="#" class="nav-link">购车指南</a>
                     </li>
                     <li class="nav-item">
                        <a href="#" class="nav-link">客户服务</a>
                     </li>
					  <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
							    aria-expanded="false">
								热款
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">Mercedes me</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">EQ</a>
							</div>
						</li>
                     <li class="nav-item active nav-link" onclick="searchClicked()">
                        搜索
                     </li>
					 <li>
						<div style="display:none" id="searchLine">
						<form action="Search" role="search" method="get">
							<input maxlength="50" height=50px autocomplete="off" type="text" placeholder="新一代长轴距GLC SUV" name="ask" data-autoid="autocomplete-list" >
							<input type="submit" value="搜索" height=50px>
						</form>
						</div>
					 </li>
                  </ul>
               </div>
			   <script type="text/javascript">
					function searchClicked(){
						var odiv=document.getElementById("searchLine");
						if(odiv.style.display=="none"){
							odiv.style.display="block";
						}
						else{
							odiv.style.display="none";
						}
					}
			   </script>
            </nav>
            <div class="clearfix"> </div>
		</div>
   </div>
         <!-- //Navigation -->
</header>
<div class="banner" id="Banner">
	<div class="agile_dot_info one">
		<div class="w3_me">
			<div class="w3_banner_info">
				<div class="w3_me">
					<div class="flexslider-info">
						<section class="slider">
							<div class="flexslider">
								<ul class="slides">
									<li >
									<div class="w3_banner_info_grid" id="banner1">
										<h2>引领天下之势</h2>
										<p>与先同行，领时代之先。国6标准车型现已全面到店</p>
										<ul>
											<li><a href="Display?carName=S级轿车珍藏版" class="w3l_contact">详情</a></li>
											<li><a href="#" class="w3ls_more" data-toggle="modal" data-target="#myModal">获取更多</a></li>
											
										</ul>
									</div>
									</li >
									<li >
										<div class="w3_banner_info_grid" id="banner2">
											<h3>爱，无所不载</h3>
										<p>承载每一份爱。国6标准车型现已全面到店</p>
										<ul>
											<li><a href="Display?carName=长轴距E级轿车" class="w3l_contact">详情</a></li>
											<li><a href="#" class="w3l_contact">获取更多</a></li>
										</ul>
										</div>
									</li>
									<li >
										<div class="w3_banner_info_grid" id="banner3">
											<h3>敢为英雄</h3>
										<p>英雄之略，不懂险阻。国6标准车型现已全面到店</p>
										<ul>
											<li><a href="Display?carName=长轴距C级运动轿车" class="w3l_contact">详情</a></li>
											<li><a href="#" class="w3l_contact">获取更多</a></li>
										</ul>
										</div>
									</li>
									<li >
										<div class="w3_banner_info_grid" id="banner4">
											<h3>从此，电动+豪华</h3>
										<p>全新梅德赛斯-奔驰EQC纯点SUV<</p>
										<ul>
											<li><a href="Display?carName=全新长轴距A级轿车" class="w3l_contact">详情</a></li>
											<li><a href="#" class="w3ls_more">获取更多</a></li>
										</ul>
										</div>
									</li>
								</ul>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //banner -->
<section class="what_you">
	<div class="container">
		<div class="wthree_head_section">
				<h3 class="w3l_header">全部车型</h3>
				<p>Our team provides consulting services focusing on the most critical business issues.</p>
			</div>
			<div class="bord"></div>
			<div class="row about-info-grids">
				<div class="col-sm-4 about-info about-info1" >
				<a href="#">
					<i class="fas fa-th-large" height=50px width=60px></i>
					<h4>轿车</h4>
					<div class="h4-underline"></div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
				</a>
				</div>
				<div class="col-sm-4 about-info about-info2">
					<a href="#">
					<i class="fas fa-share-square"></i>
					<h4>SUV</h4>
					<div class="h4-underline"></div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
					</a>
				</div>
				<div class="col-sm-4 about-info about-info3">
					<a href="#">
					<i class="fas fa-expand-arrows-alt"></i>
					<h4>LMVP</h4>
					<div class="h4-underline"></div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
					</a>
				</div>
			</div>
	</div>
</section>
<!-- w3layouts_bottom -->
<section class="w3layouts_bottom">
	<div class="container">
		<div class="row">
			<div class="col-md-9 w3layouts_getin_info">
				<h3>最 优 质 的 客 户 服 务</h3>
			</div>
			<div class="col-md-3 w3layouts_getin">
				<a href="contact.html">了 解 我 们</a>
			</div>
		</div>
	</div>
</section>
<!-- //w3layouts_bottom -->
<!-- stats -->
<section class="stats">
	<div class="container"> 
		
		<h4>实 力 证 明</h4>
<p class="stap">Our results will fascinate you with the results we have</p>
		<div class="row inner_w3l_agile_grids-1">
			<div class="col-sm-4 w3layouts_stats_left w3_counter_grid">
				<p class="counter">1,546</p>
				<h3>月销售车辆</h3>
				<h6>客户才是一切</h6>
			</div>
			<div class="col-sm-4 w3layouts_stats_left w3_counter_grid1">
			
				<p class="counter">1,546</p>
				<h3>好评数目</h3>
				<h6>最优质服务</h6>
			</div>
			<div class="col-sm-4 w3layouts_stats_left w3_counter_grid2">
			
				<p class="counter">654</p>
				<h3>回头客</h3>
				<h6>优质售后</h6>
			</div>
		</div>
   </div>	
</section>
<!-- /testimonals section -->
<!-- footer -->
<footer>
	<section class="footer">
	<div class="container">
		<div class="row f-bg-w3l">
				<div class="col-md-6 w3layouts_footer_grid fokt">
					<h3>订阅最新资讯</h3>
					<p>订阅我们，您将最先获取最新的新品以及优惠活动</p>
					<form action="#" method="post">
						<input type="email" name="Email" placeholder="输入您的邮箱" required="">
						<button class="btn1"><i class="far fa-envelope"></i></button>
						<div class="clearfix"> </div>
					</form> 
				</div>
				
				<div class="col-md-2 w3layouts_footer_grid">
					<h3>Our Links </h3>
					  <ul class="links">
							<li><a href="index.html">本地</a></li>
							<li><a href="about.html">车型</a></li>
							<li><a href="gallery.html">购车指南</a></li>
							<li><a href="contact.html">客户服务</a></li>
						</ul>
				</div>
				<div class="col-md-4 w3layouts_footer_grid">
					<h2>Contact Us</h2>
					    <ul class="con_inner_text">
							<li><span class="fa fa-map-marker" aria-hidden="true"></span>1234k Avenue, 4th block, <label> New York City.</label></li>
							<li><span class="fa fa-envelope" aria-hidden="true"></span> <a href="mailto:info@example.com">info@example.com</a></li>
							<li><span class="fa fa-phone" aria-hidden="true"></span> +1234 567 567</li>
						</ul>
				</div>	
			</div>
		</div>	
	</section>
	<!-- //footer -->
	<p class="copyright">Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
</footer>

      <!--js working-->
      <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
      <!--//js working-->
<!--Start-slider-script-->
	<script defer src="js/jquery.flexslider.js"></script>
		<script type="text/javascript">
		
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	  </script>
<!--End-slider-script-->
<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
		<script>
			$('.counter').countUp();
		</script>
<!-- //stats -->
<!-- for testimonials slider-js-file-->
			<script src="js/owl.carousel.js"></script>
	<!-- //for testimonials slider-js-file-->
		<script>
		$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
 
			autoPlay: 3000, //Set AutoPlay to 3 seconds
			autoPlay:true,
			items : 3,
			itemsDesktop : [640,5],
			itemsDesktopSmall : [414,4]
		});
		}); 
</script>
<!-- for testimonials slider-js-script-->
	<!-- smooth scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- //smooth scrolling -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- //scrolling script -->

<!--bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
 <!-- //bootstrap working-->
   </body>
</html>