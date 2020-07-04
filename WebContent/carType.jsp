<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
   <head>
      <title>车型</title>
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
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.css" rel="stylesheet">
	  <!--cartype -->
	  <link href="css/carType1.css" rel='stylesheet' type='text/css' media="all">
	  <link href="css/carType2.css" rel='stylesheet' type='text/css' media="all">
      <!-- //font-awesome icons -->
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
										<li><div id="leave" style="display:none;"><a href="Leave">退出</a></div></li>
									</div>
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
                        <a class="nav-link active" href="">车型 <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item">
                        <a href="" class="nav-link">购车指南</a>
                     </li>
                     <li class="nav-item">
                        <a href="" class="nav-link">客户服务</a>
                     </li>
					  <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
							    aria-expanded="false">
								热款
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="">Mercedes me</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="">EQ</a>
							</div>
						</li>
					<li class="nav-item active nav-link" onclick="searchClicked()"> 搜索</li>
					<li>
						<div style="display: none" id="searchLine">
							<form action="Search" role="search" method="get">
								<input maxlength="50" height=50px autocomplete="off" type="text"
									placeholder="新一代长轴距GLC SUV" name="ask"
									data-autoid="autocomplete-list"> <input type="submit"
									value="搜索" height=50px>
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


<!-- container-->
   
    <div class="global-navigation-section-heading"><div class="wrapper">
    <section class="global-navigation__section-heading">
        所有车型
    </section>
</div>
</div>


<div class="vehicle-nav">
<div class="mega-menu-container">
<ul class="menu-car-list-mobile wrapper">
    <li class="menu-car-list-mobile__li menu-car-list-mobile__li--active" onclick="li_Click(this,1)">
        轿车
    </li>

    <li class="menu-car-list-mobile__li" onclick="li_Click(this,'2')">
        SUV
    </li>

    <li class="menu-car-list-mobile__li" onclick="li_Click(this,'3')">
        轿跑车 &amp; 敞篷跑车
    </li>

    <li class="menu-car-list-mobile__li" onclick="li_Click(this,'4')">
        MPV
    </li>

    <li class="menu-car-list-mobile__li" onclick="li_Click(this,'5')">
        新能源车
    </li>
</ul>
<!--l1-->
	<form name="carTypeForm" action="" method="get" style="display:none">
		<input type="hidden" name="carName"></input>
	</form>
	<ul class="menuCartype wrapper">
    <div class="menuCartype__container appear" id="menuCartype_l1">
        <li class="menuCartype__li appear">
            <div class="menuCartype__li__single-name">
                轿车
            </div>
            <ul class="menuCartype__li__onetype">
                <li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/800-S-nav-pc.png" >
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">S</div>
                        <span class="menuCartype__li__onetype__mobileTypeText">级</span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname"  >S级轿车珍藏版</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥84.28万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥1,988起</p>
                    </a>
                </div>
                </li>
				<li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/451.png">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">E</div>
                        <span class="menuCartype__li__onetype__mobileTypeText">级</span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">长轴距E级轿车</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥42.98万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥1,258起</p>
                    </a>
                </div>
                </li>
				<li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/my800-C-Class-L-Sport-nav-pc.png"l alt="长轴距C级运动轿车">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">C</div>
                        <span class="menuCartype__li__onetype__mobileTypeText">级</span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname" >长轴距C级运动轿车</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥30.78万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥818起</p>
                    </a>
                </div>
                    </li>
					<li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/1.png" alt="全新长轴距A级轿车">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">A</div>
                        <span class="menuCartype__li__onetype__mobileTypeText">级</span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname" >全新长轴距A级轿车</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥21.18万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥566起</p>
                    </a>
                </div>
                    </li>
            </ul>
        </li>
    </div>
<!--l2-->
    <div class="menuCartype__container" id="menuCartype_l2">
        <li class="menuCartype__li appear">
            <div class="menuCartype__li__single-name">
                SUV
            </div>
            <ul class="menuCartype__li__onetype">
                <li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/g500_new_top.png" alt="G级越野车">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">G</div>
                        <span class="menuCartype__li__onetype__mobileTypeText">级</span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">G级越野车</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥158.80万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥7,475起</p>
                    </a>
                </div>
                    </li>
				<li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/gls-nav-pc1.png" alt="GLS SUV">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">GLS</div>
                        <span class="menuCartype__li__onetype__mobileTypeText"></span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">GLS SUV</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥93.48万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥2,718起</p>
                    </a>
                </div>
                </li>
				<li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/glecoupe-nav-pc.png" alt="GLE轿跑SUV">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">GLE</div>
                        <span class="menuCartype__li__onetype__mobileTypeText"></span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">全新GLE SUV</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥72.78万起</p>
                    </a>
                </div>
                    </li>
					<li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src=" images/glccoupe-nav-pc.png" alt="GLC轿跑SUV">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">GLC</div>
                        <span class="menuCartype__li__onetype__mobileTypeText"></span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">新一代长轴距GLC SUV</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥39.28万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥1,178起</p>
                    </a>
                </div>
                    </li>
            </ul>
        </li>
    </div>
<!--l3-->
    <div class="menuCartype__container" id="menuCartype_l3">
        <li class="menuCartype__li appear">
            <div class="menuCartype__li__single-name">
                轿跑车 &amp; 敞篷跑车
            </div>
            <ul class="menuCartype__li__onetype">
                <li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/clscoupe-nav-pc.png" alt="CLS四门轿跑车">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">CLS</div>
                        <span class="menuCartype__li__onetype__mobileTypeText"></span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">CLS四门轿跑车</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥63.38万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥1,308起</p>
                    </a>
                </div>
                </li>
				<li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/ecoupe-nav-pc.png" alt="E级轿跑车">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">E</div>
                        <span class="menuCartype__li__onetype__mobileTypeText">级</span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">E级轿跑车</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥51.68万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥1,206起</p>
                    </a>
                </div>
                </li>
				<li class="menuCartype__li__onetype__li">
                     <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/45-c260coupe-nav-pc_400x162.png" alt="C级轿跑车">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">C</div>
                        <span class="menuCartype__li__onetype__mobileTypeText">级</span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">C级轿跑车</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥36.08万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥986起</p>
                    </a>
                </div>
                    </li>
					<li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/slc-nav-pc.png" alt="梅赛德斯-AMG GT / 梅赛德斯-AMG GT S / 梅赛德斯-AMG GT C">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">GT</div>
                        <span class="menuCartype__li__onetype__mobileTypeText"></span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">梅赛德斯-AMG GT四门跑车</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥97.38万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥14,373起</p>
                    </a>
                </div>
                    </li>
            </ul>
        </li>
    </div>
<!--l4-->
    <div class="menuCartype__container" id="menuCartype_l4">
        <li class="menuCartype__li appear">
            <div class="menuCartype__li__single-name">
                MPV
            </div>
            <ul class="menuCartype__li__onetype">
                <li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/V-Class-PC.png" alt="梅赛德斯-奔驰V级MPV">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">V</div>
                        <span class="menuCartype__li__onetype__mobileTypeText">级</span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">梅赛德斯-奔驰V级MPV</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥47.18万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥6,964起</p>
                    </a>
                </div>
                </li>
				<li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/Vito-PC.png" alt="梅赛德斯-奔驰威霆MPV">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">Vito</div>
                        <span class="menuCartype__li__onetype__mobileTypeText"></span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">梅赛德斯-奔驰威霆MPV</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥28.98万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥4,342起</p>
                    </a>
                </div>
                </li>
            </ul>
        </li>
    </div>
<!--l5-->
      <div class="menuCartype__container" id="menuCartype_l5">
        <li class="menuCartype__li appear">
            <div class="menuCartype__li__single-name">
                新能源车
            </div>
            <ul class="menuCartype__li__onetype">
                <li class="menuCartype__li__onetype__li">
                        <div class="menuCartype__li__onetype__li__img">
                            <img class="vehicle-data__info-image lazy-loader__asset lazy-loader__asset--loaded" src="images/r-nav-pc.png" alt="全新梅赛德斯-奔驰EQC纯电SUV">
                        </div>
                        <div class="menuCartype__li__onetype__mobileTypeName">EQC</div>
                        <span class="menuCartype__li__onetype__mobileTypeText"></span>
                        <div class="menuCartype__li__onetype__li__text">
                    <a href="javascript:void(0);" class="menuCartype__li__onetype__li__text__link" onclick="sendCarName(this)">
                        <p class="menuCartype__li__onetype__li__text__carname">全新梅赛德斯-奔驰EQC纯电SUV</p>
                        <p class="menuCartype__li__onetype__li__text__price">¥57.98万起<span class="hidden-xs"> / </span><br class="hidden-sm">月供 ¥1,618起</p>
                    </a>
                </div>
                </li>
            </ul>
        </li>
    </div>
</ul>
</div>
</div>
	<script>
		function li_Click(e,index){
			var x = document.getElementsByClassName("menu-car-list-mobile__li menu-car-list-mobile__li--active");
			x[0].setAttribute("class","menu-car-list-mobile__li");
			e.setAttribute("class","menu-car-list-mobile__li menu-car-list-mobile__li--active");
			var x1=document.getElementsByClassName("menuCartype__container appear");
			x1[0].setAttribute("class","menuCartype__container");
			if(index=='1'){
				var x3=document.getElementById("menuCartype_l1");
				x3.setAttribute("class","menuCartype__container appear");
			}else if(index=='2'){
				var x3=document.getElementById("menuCartype_l2");
				x3.setAttribute("class","menuCartype__container appear");
			}else if(index=='3'){
				var x3=document.getElementById("menuCartype_l3");
				x3.setAttribute("class","menuCartype__container appear");
			}else if(index=='4'){
				var x3=document.getElementById("menuCartype_l4");
				x3.setAttribute("class","menuCartype__container appear");
			}else if(index=='5'){
				var x3=document.getElementById("menuCartype_l5");
				x3.setAttribute("class","menuCartype__container appear");
			}
		}
	</script>

	<script type="text/javascript">
		function sendCarName(car) {
			var carName = car.children[0].firstChild.nodeValue;
			carTypeForm.carName.value = carName;
			carTypeForm.action = "Display";
			carTypeForm.submit();
		}
	</script>
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
							<li><a href="carType.html">车型</a></li>
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