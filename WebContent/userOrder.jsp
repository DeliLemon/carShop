<%@ page language="java" import="user.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台用户订单管理</title>
<html lang="zxx">
   <head>
      <title>用户订单</title>
      <!-- Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script src="js/userOrder.js"></script>
	<!-- // Meta Tags -->
   <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <link href="css/userOrder.css" type="text/css" rel="stylesheet">
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
							<li class="nav-item dropdown">
								<div id="userstatus">
									您好，管理员 &nbsp;&nbsp;&nbsp;
								</div>
							<li><div><a href="Leave">退出</a></div></li>
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
			   <div ><a href="userOrder.jsp"><img alt="" src="images/logo.png" width=250px height=60px></a>
			   
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
 <div><h5 class="bars">用户订单</h2></div>
 <div class="shopCart_container">
 	<p>我们提供最优质服务——<code>贴心、细致入微</code> 对待每一份订单 <code></p>
		<form action="#" method="get" name="allOrderDataForm">
			<div>
				<select id="selected" onchange="uo_show_hidden(this);">
					 <option selected>待发货</option>
					 <option>已发货</option>
					 <option>已签收</option>
				</select>
			</div>
			<div class="bs-docs-example Cart_table">
				<div class="bs-docs-example">
					<div  id="toBeshipped" style="display:block; ">
						<table class="table table-hover">
							<thead>
								<tr>
						  			<th>订单编号</th>
									<th>商品</th>
									<th>总量</th>
									<th>总价($)</th>
									<th>状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="toBeshipped_tbody">
							</tbody>
						</table>
					</div>
					<div  id="shipped" style="display:none; ">
						<table class="table table-hover">
							<thead>
								<tr>
						  			<th>订单编号</th>
									<th>商品</th>
									<th>总量</th>
									<th>总价($)</th>
									<th>状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="shipped_tbody">
							</tbody>
						</table>
					</div>
					<div id="finished" style="display:none;">
						<table class="table table-hover" >
							<thead>
								<tr>
						  			<th>订单编号</th>
									<th>商品</th>
									<th>总量</th>
									<th>总价($)</th>
									<th>状态</th>
								</tr>
							</thead>
							<tbody id="finished_tobody">
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</form>
		<form action="ChangeShopStatus" method="get" name="allOrderForm">
			<input type="hidden" name="choosed" value=""></input>
			<input type="hidden" name="operator" value=""></input>
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
      <script type="text/javascript">
      	function uo_show_hidden(s){
      		var obj1=document.getElementById("toBeshipped");
  			var obj2=document.getElementById("shipped");
  			var obj3=document.getElementById("finished");
      		if(s.value == "待发货"){
      			obj1.style.display="block";
      			obj2.style.display="none";
      			obj3.style.display="none";
      		}else if(s.value =="已发货"){
      			obj2.style.display="block";
      			obj1.style.display="none";
      			obj3.style.display="none";
      			
      		}else if(s.value =="已签收"){
      			obj3.style.display="block";
      			obj2.style.display="none";
      			obj1.style.display="none";
      		}
      	}
      </script>
      
      <script type="text/javascript">
      	function shipping(s){
      		var obj=s.parentNode;
      		var children=obj.lastChild;
      		allOrderForm.choosed.value=children.value;
      		allOrderForm.operator.value="已发货";
      		allOrderForm.submit();
      	}
      	function tuihuo(s){
      		var obj=s.parentNode;
      		var children=obj.lastChild;
      		allOrderForm.choosed.value=children.value;
      		allOrderForm.operator.value="已退货";
      		allOrderForm.submit();
      	}
      </script>
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
	});
</script> 
<script type="text/javascript">
   		var toBeShipped='${toBeShipped}';
   		var shipped='${shipped}';
   		var finished='${finished}';
		var totable=toBeShipped.split("##");
		var shtable=shipped.split("##");
		var fitable=finished.split("##");
		var obj1=document.getElementById("toBeshipped_tbody");
		var obj2=document.getElementById("shipped_tbody");
		var obj3=document.getElementById("finished_tobody");
		if(totable.length==1 && shtable.length == 1){
			alert("订单为空");
		}else{
			//未发货
			if(toBeShipped!=""){
				var index = 0;
				while(index < totable.length){
					var tr = document.createElement("tr");
					var td5=document.createElement("td");
					var titem=totable[index].split("#");
					for(var i=0;i<titem.length;i++){
						var td = document.createElement("td");
						var txt = document.createTextNode(titem[i]);
						td.appendChild(txt);
						tr.appendChild(td);
					}
					var btn=document.createElement("input");
					btn.setAttribute("value",titem[0]);
					btn.setAttribute("type","hidden");
					btn.setAttribute("name","orderID");
					td5.innerHTML="<p class='uo_tuihuo' onclick='shipping(this);'>发货</p> <p class='uo_tuihuo' onclick='tuihuo(this);'>退货</p>";
					td5.appendChild(btn);
					tr.appendChild(td5);
					index ++;
					obj1.appendChild(tr);
				}
			}
			//已发货
			index=0;
			if(shipped!=""){
				var index = 0;
				while(index < shtable.length){
					var tr = document.createElement("tr");
					var td5=document.createElement("td");
					var sitem=shtable[index].split("#");
					for(var i=0;i<sitem.length;i++){
						var td = document.createElement("td");
						var txt = document.createTextNode(sitem[i]);
						td.appendChild(txt);
						tr.appendChild(td);
					}
					var btn=document.createElement("input");
					btn.setAttribute("value",sitem[0]);
					btn.setAttribute("type","hidden");
					btn.setAttribute("name","orderID");
					td5.innerHTML="<p class='uo_tuihuo' onclick='tuihuo(this);'>退货</p>";
					td5.appendChild(btn);
					tr.appendChild(td5);
					index ++;
					obj2.appendChild(tr);
				}
			}
			
			//已收货
			index=0;
			if(finished!=""){
				while(index < fitable.length){
					var tr = document.createElement("tr");
					var fitem=fitable[index].split("#");
					for(var i=0;i<fitem.length;i++){
						var td = document.createElement("td");
						var txt = document.createTextNode(fitem[i]);
						td.appendChild(txt);
						tr.appendChild(td);
					}
					index ++;
					obj3.appendChild(tr);
				}
			}
		}
   </script>
<!--bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
 <!-- //bootstrap working-->
   </body>
</html>