<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>Respond to Contact</title>
	<%String pjName="/sj/";%>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="<%=pjName%>resources/assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/owl.carousel.css">
	<!-- animate css -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/responsive.css">

</head>
<body>
	
	<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->
	
	<!-- header -->
	<div class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo">
							<a href="index_m.do">
								<img src="<%=pjName%>resources/assets/img/logo.png">
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li class="current-list-item"><a href="#">ORDERS</a></li>
								<li><a href="shop_m.do">COFFEE BEANS</a></li>
								<li><a href="shop2_m.do">GOODS</a></li>
								<li><a href="contact_m.do">SUPPORT</a>
								<li>
									<div class="header-icons">
										<span style="color:white">${sessionScope.loginName}</span>
										<a class="mobile-hide search-bar-icon" href="#"><i class="fas fa-search"></i></a>
										<ul class="sub-menu">
											<c:if test="${sessionScope.loginId==null}">	
												<li><a href="login_m.do">Login Page</a></li>
											</c:if>
											<c:if test="${sessionScope.loginId!=null}">	
												<li><a href="logout_m.do">Logout</a></li>
											</c:if>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
						<a class="mobile-show search-bar-icon" href="#"><i class="fas fa-search"></i></a>
						
						<div class="mobile-menu"></div>
						
						<!-- menu end -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end header -->

	<!-- search area -->
	<div class="search-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<span class="close-btn"><i class="fas fa-window-close"></i></span>
					<div class="search-bar">
						<div class="search-bar-tablecell">
							<form action="shop_search_m.do">
								<h3>Search For:</h3>
								<input type="text" placeholder="Keywords" name='searchKeyword'>
								<button type="submit">Search <i class="fas fa-search"></i></button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end search arewa -->
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>24/7 Support</p>
						<h1>List of Orders</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- contact form -->
	<div class="contact-from-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<c:if test="${sessionScope.loginMno!=null}">	
					<div class="col-lg-12 col-md-12" >
						<h3>Chart</h3>
						<div id ="chart"> 
							<canvas id="ctx"></canvas> 
						</div> 
						<br/>
						<br/>
					</div>
					<div class="col-lg-12 col-md-12" >
						<h3>Finished Orders</h3>	
						<div class="cart-table-wrap" >
							<table class="cart-table" >
								<thead class="cart-table-head">
									<tr class="table-head-row">
										<th class="product-remove"></th>
										<th class="product-remove">Order No.</th>
										<th class="product-name">Customer</th>
										<th class="product-price">Orders</th> 
									</tr>
								</thead>
								<tbody>
									<c:set var="lono" value="-1"/>
									<c:forEach items ="${getCustomersOrders}" var ="ordersList">
										<c:if test="${lono ne ordersList.LONO}">
											<tr class="table-body-row">
												<td class="product-remove"><a href="deleteOrder.do?lono=${ordersList.LONO}"><i class="far fa-window-close"></i></a></td>
												<td class="product-remove">${ordersList.LONO}</td>
												<td>${ordersList.CNO}</td>
												<td class="product-price">
												<c:forEach items="${getCustomersOrders}" var="ordersList2">
													<c:if test="${ordersList.LONO eq ordersList2.LONO}">
														${ordersList2.PNAME} (${ordersList2.OCNT});
													</c:if>
												</c:forEach>
												</td>
											</tr>
										</c:if>
										<c:set var="lono" value="${ordersList.LONO}"/>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div> 
				</c:if>
				<c:if test="${sessionScope.loginMno==null}">	
					<div class="col-lg-12 col-md-12" >
							<br/>
							<h3>Please Login to View Chart and Orders</h3><a href="login_m.do" class="boxed-btn">login</a>
							<br/>
					</div>
				</c:if>
			</div>	
		</div>
	</div>
	<!-- end contact form -->

	<!-- footer -->
	<div class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="footer-box about-widget">
						<h2 class="widget-title">About us</h2>
						<p>We are proudly serving coffee beans and coffee related products to our customer. 
							Our duty is to please the customer with the best tasting bean and perfectly match the preferences of coffee.</p>
					</div>
				</div>
				<div class="col-lg-5 col-md-6">
					<div class="footer-box get-in-touch">
						<h2 class="widget-title">Get in Touch</h2>
						<ul>
							<li>Seoul, Geumcheon-gu, Gasan digital 2-ro, 123 building2) 4th-floor (suite.413) World Meridian</li>
							<li>support@kosmo.com</li>
							<li> +02 2025 8523 </li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box pages">
						<h2 class="widget-title">Pages</h2>
						<ul>
							<li><a href="#">ABOUT</a></li>
							<li><a href="shop_m.do">COFFEE BEANS</a></li>
							<li><a href="shop2_m.do">GOODS</a></li>
							<li><a href="contact_m.do">SUPPORT</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end footer -->
	
	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<p>Copyrights &copy; 2019 - <a href="index.do">gitae joe</a>,  All Rights Reserved.</p>
				</div>
				<div class="col-lg-6 text-right col-md-12">
					<div class="social-icons">
						<ul>
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end copyright -->
	
	<!-- jquery -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- chart -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js"></script> 
	<!-- bootstrap -->
	<script src="<%=pjName%>resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="<%=pjName%>resources/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="<%=pjName%>resources/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="<%=pjName%>resources/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="<%=pjName%>resources/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="<%=pjName%>resources/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="<%=pjName%>resources/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="<%=pjName%>resources/assets/js/sticker.js"></script>
	<!-- form validation js -->
	<script src="<%=pjName%>resources/assets/js/form-validate.js"></script>
	<!-- main js -->
	<script src="<%=pjName%>resources/assets/js/main.js"></script>
	<script type="text/javascript">
	
	$(function(){ 

	var salesDatas = null;
	var salesBgColor = null;
	var salesBorderColor = null;

	// function doNext()는 차트를 레이블값들을 가져온것으로 만든다
	function doNext() {
		$.getJSON("countsales/"+new Date().getFullYear()).done( //현재연도로 데이터값을 가져온다.
		function(data){
			//차트를 만든다.
			var ctx=$("#ctx").get(0).getContext('2d'); 
			//레이블 데이터 background 색깔 지정
			var labels=data.map(obj=>obj.MONTH); 
			var datas=data.map(obj=>obj.SALESCOUNT); 
			var bgColor=['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)' ]; 
			var borderColor=[ 'rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)' ]; 
			// 위에 지정값과 레이블값들을 금액레이블(${sales})가져온것으로 지정
			var myChart = new Chart(ctx, { 
				type: 'line', 
				data: { labels: labels , datasets: [{ label: 'Sales Count', data: datas, backgroundColor:bgColor, borderColor:borderColor, borderWidth: 1 }
				,{ label: 'Sales($)', data: salesDatas, backgroundColor:salesBgColor, borderColor:salesBorderColor, borderWidth: 1 }]
				}
			}); 
		}//data
		)//countSales
	}//donext
	// 총 판매액수를 그래프에 그리려고 데이터 가져옴	
	$.getJSON("sales/"+new Date().getFullYear()).done(
		function(data){  
			salesDatas = data.map(obj=>obj.SALES); 
			salesBgColor = ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)' ]; 
			salesBorderColor = [ 'rgba(155,99,232,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)' ]; 
			//sales 데이터를 지정하고 차트를 부른다
			doNext();
		}//function	
	)//sales
	})//function
	</script>
	
</body>
</html>