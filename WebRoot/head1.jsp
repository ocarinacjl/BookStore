<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>岛上书店</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Yemekhane Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.1.min.js"></script>
<!----requred-js-files---->
<!----//requred-js-files---->
<link href='http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!----Calender -------->
  <link rel="stylesheet" href="css/clndr.css" type="text/css" />
  <script src="js/underscore-min.js"></script>
  <script src= "js/moment-2.2.1.js"></script>
  <script src="js/clndr.js"></script>
  <script src="js/site.js"></script>
<!----End Calender -------->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
</head>
<body>
<!-- 上面是要放head -->
<div class="header" id="home">
	<div class="container"> 
		<div class="logo">
           <img src="images/logo.png" alt=""/> 
		</div>
	</div>
</div>
<div class="header-home">
	<div class="container">
	  <div class="fixed-header">
	     <div class="h_menu4"><!-- start h_menu4 -->
				<a class="toggleMenu" href="#">Menu</a>
				<s:if test="%{#session.loginUser == null}">
				<ul class="nav">
					<li><a href="index1.jsp">首页</a></li>
				    <li><a href="#announce" class="scroll">销量排行榜</a></li>
					<li><a href="#latestbook" class="scroll">最新上架</a></li>
					<li><a href="#wellsale" class="scroll">畅销图书</a></li>
					<li><a href="#recommond" class="scroll">精品推荐</a></li>
					<li><a href="login.jsp">登录</a></li>
					<li><a href="enroll.jsp">注册</a></li>				
					<s:if test="%{#session.managerLoginName == null}">
						<li><a href="managerLogin.jsp">管理员登录</a></li>
					</s:if>
				</ul>
				</s:if>
				<s:else>
				<ul class="nav">
					<li class="active">
						<font style="color:white;font-weight: bold">
						 <s:property value="#session.loginUser.userName"/>您好！
					</font></li>
					<li><a href="personalInformation.jsp">个人信息</a></li>
					<li><a href="shoppingCart.jsp">我的购物车</a></li>
					<li><a href="index1.jsp">首页</a></li>
				    <li><a href="#announce" class="scroll">销量排行榜</a></li>
					<li><a href="#latestbook" class="scroll">最新上架</a></li>
					<li><a href="#wellsale" class="scroll">畅销图书</a></li>
					<li><a href="#recommond" class="scroll">精品推荐</a></li>
					<li><a href="allOrders.jsp">我的订单</a></li>
					<li><a href="com.huizhi.action/userExitAction.action?userType=ordinaryUser">安全退出</a></li>
				</ul>
				</s:else>

				<script type="text/javascript" src="js/nav.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
					</script>		
				 <!--script-->
		<script>
			$(document).ready(function(){
				$(".nav li a").click(function(){
					$(this).parent().addClass("active");
					$(this).parent().siblings().removeClass("active");
				});
			});
		</script>
			<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-home").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-home").addClass("fixed");
				}else{
					$(".header-home").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->
        </div><!-- end h_menu4 -->
       </div>
       </div>
     </div>