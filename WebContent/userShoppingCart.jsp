<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
<html lang="zxx">
   <head>
      <title>购物车</title>
      <!-- Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script src="js/shoppingCart.js"></script>
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
      <!-- display.css -->
      <link href="css/shoppingCart.css" rel="stylesheet">
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.css" rel="stylesheet">
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
                        <a class="nav-link active" href="carType.jsp">车型 <span class="sr-only">(current)</span></a>
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
                     <li class="nav-item active nav-link" onclick="searchClicked()">
                        	搜索
                     </li>
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
 </header>
 <!-- container -->
 
 <section class="cart_session">
 <div><h5 class="bars">我的购物车</h2></div>
	<div class="shopCart_container">
		<form action="" method="get" name="buyForm">
			<div class="bs-docs-example Cart_table">
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>商品</th>
							<th>数量</th>
							<th>价格(万元)</th>
							<th>选择</th>
						</tr>
					</thead>
					<tbody id="tbody">
					</tbody>
				</table>
			</div>
			<div class="shop_upload">
				<input type="checkbox" id="selectedAll"  style="margin-left: 40px;">全选</input> 
				<input type="button" class="btn btn-secondary" style="margin-left: 1000px; width: 100px;" onclick="onload_delete();" value="删除" /> 
				<input type="button" class="btn btn-secondary" value="立即购买" onclick="onload_buy();"></input>
			</div>
		</form>
	</div>
	</section>
 
 <!-- container -->
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
					<h3>我们的服务 </h3>
					  <ul class="links">
							<li><a href="index.html">本地</a></li>
							<li><a href="carType.html">车型</a></li>
							<li><a href="gallery.html">购车指南</a></li>
							<li><a href="contact.html">客户服务</a></li>
						</ul>
				</div>
				<div class="col-md-4 w3layouts_footer_grid">
					<h2>联系我们</h2>
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
		$(".shopCart-checkedbox").click(function(){
			var v=$(".shopCart-checkedbox");
			var count=0;
			for(var i=0;i<v.length;i++){
				if(v[i].checked){
					count++;
				}
			}
			var o=$("#selectedAll");
			if(count == v.length){
				o[0].checked=true;
			}else{
				o[0].checked=false;
			}
		});
		$("#selectedAll").click(function(){
			var obj=$(".shopCart-checkedbox");
			for(var index=0;index < obj.length ;index++){
				obj[index].checked=this.checked;
			}
		});
	});
</script> 
<!--bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
 <!-- //bootstrap working-->
   </body>
   <script type="text/javascript">
   		var cart='${shoppingCart}';
		var shoplist=cart.split("##");
		var index = 0;
		var obj=document.getElementById("tbody");
		if(cart==""){
			alert("购物车为空");
		}else{
			while(index < shoplist.length){
				var tr = document.createElement("tr");
				var td5=document.createElement("td");
				var shop=shoplist[index].split("#");
				for(var i=0;i<shop.length;i++){
					var td = document.createElement("td");
					var txt = document.createTextNode(shop[i]);
					td.appendChild(txt);
					tr.appendChild(td);
				}
				var btn=document.createElement("input");
				btn.setAttribute("value",shop[0]);
				btn.setAttribute("type","checkbox");
				btn.setAttribute("name","checkedbox");
				btn.setAttribute("class","shopCart-checkedbox");
				td5.appendChild(btn);
				tr.appendChild(td5);
				index ++;
				obj.appendChild(tr);
			}
		}
   </script>
   <script type="text/javascript">
   		function selectedAll(c){
   			alert("what happen");
   			var obj = document.getElementsByName("checkedbox");
   			if(c.checked == true){
   				for(var index=0; index < obj.length;index++){
   	   				obj[index].checked=true;
   	   			}
   			}
   			else{
   				for(var index=0; index < obj.length;index++){
   	   				obj[index].checked=false;
   	   			}
   			}
   		}
   </script>
</html>