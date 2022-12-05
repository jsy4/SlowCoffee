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
	<title>Check Out</title>
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
	<!-- magnific popup -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/magnific-popup.css">
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
							<a href="index.do">
								<img src="<%=pjName%>resources/assets/img/logo.png">
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li><a href="#">ABOUT</a></li>
								<li><a href="shop.do">COFFEE BEANS</a></li>
								<li><a href="shop2.do">GOODS</a></li>
								<li><a href="contact.do">SUPPORT</a>
								<li>
									<div class="header-icons">
										<span style="color:white">${sessionScope.loginName}</span>
										<a class="mobile-hide search-bar-icon" href="#"><i class="fas fa-search"></i></a>
											<c:if test="${sessionScope.loginId==null}">	
												<a class="shopping-cart" href="login.do"><i class="fas fa-shopping-cart"></i></a>
											</c:if>
											<c:if test="${sessionScope.loginId!=null}">	
												<a class="shopping-cart" href="cart.do?cno=${sessionScope.loginCno}"><i class="fas fa-shopping-cart"></i></a>
											</c:if>	
										<ul class="sub-menu">
											<c:if test="${sessionScope.loginId==null}">	
												<li><a href="login.do">Login Page</a></li>
											</c:if>
											<c:if test="${sessionScope.loginId!=null}">	
												<li><a href="mypage.do">My Page</a></li>
												<li><a href="cart.do?cno=${sessionScope.loginCno}">Cart</a></li>
												<li><a href="logout.do">Logout</a></li>
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
						<form action="shop_search.do">
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
						<p>Fresh and Organic</p>
						<h1>Check Out Product</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- check out section -->
	<div class="checkout-section mt-150 mb-150">
		<div class="container">
			<form action="pay_mid_complete.do">
				<div class="row">
					<div class="col-lg-8">
						<div class="checkout-accordion-wrap">
							<div class="accordion" id="accordionExample">
							  <div class="card single-accordion">
							    <div class="card-header" id="headingOne">
							      <h5 class="mb-0">
							        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							          Billing Address
							        </button>
							      </h5>
							    </div>
	
							    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
							      <div class="card-body">
							        <div class="billing-address-form">
							        	<p>Name <input type="text" placeholder="Name" value="${sessionScope.loginName}" style="height:30;"></p>
							        	<p>Email <input type="email" placeholder="Email" value="${sessionScope.loginEmail}"></p>
							       		<p>Address <input type="text" placeholder="Address" value="${sessionScope.loginAddr}"></p>
							       		<p>Phone <input type="tel" placeholder="Phone" value="${sessionScope.loginTel}"></p>
							        </div>
							      </div>
							    </div>
							  </div>
							  <div class="card single-accordion">
							    <div class="card-header" id="headingTwo">
							      <h5 class="mb-0">
							        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							          Shipping Address
							        </button>
							      </h5>
							    </div>
							    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
							      <div class="card-body">
							        <div class="billing-address-form">
								       	<p>Name <input type="text" placeholder="Name" value="${sessionScope.loginName}" required></p>
							       		<p>Email <input type="email" placeholder="Email" value="${sessionScope.loginEmail}"></p>
							       		<p>Address <input type="text" id="addr" name="addr" placeholder="Address" value="${sessionScope.loginAddr}" required></p>
							       		<p>Phone <input type="tel" placeholder="Phone" value="${sessionScope.loginTel}"></p>
							       		<input type="hidden" id="cno" name="cno" value="${sessionScope.loginCno}">
							        </div>
							      </div>
							    </div>
							  </div>
							  <div class="card single-accordion">
							    <div class="card-header" id="headingThree">
							      <h5 class="mb-0">
							        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							          Card Details
							        </button>
							      </h5>
							    </div>
							    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
							      <div class="card-body">
							        <div class="card-details">
								       	<p>Card Number <input type="text" placeholder="0000-0000-0000-0000" required></p>
								       	<p>Card Expiration Date <input type="text" placeholder="00/00" required></p>
										<p>Card CVC <input type="text" placeholder="000" required></p>
							        </div>
							      </div>
							    </div>
							  </div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="order-details-wrap">
							<table class="order-details">
								<thead>
									<tr>
										<th>Your order Details</th>
										<th>Price</th>
									</tr>
								</thead>
								<tbody class="order-details-body">
									<c:set var="totalTest" value="0"/>
									<c:set var='cnt' value='0'/>
									<c:forEach items ="${getCartList}" var ="cart">
									<tr>
										<td>${cart.PNAME}</td>
										<td>$${cart.OCNT * cart.PRICE}</td>
										<c:set var='totalTest' value='${ totalTest + (cart.OCNT * cart.PRICE)}'/>
										<c:set var='totalProductName' value='${cart.PNAME}'/>
										<c:set var='cnt' value='${ cnt= cnt+1 }'/>
									</tr>
									</c:forEach>
								
								</tbody>
								<tbody class="checkout-details">
									<tr>
										<td>Subtotal</td>
										<td>$${totalTest}</td>
									</tr>
									<tr>
										<td>Shipping</td>
										<td>$45</td>
									</tr>
									<tr>
										<td>Total</td>
										<td>$${totalTest+45}</td>
									</tr>
								</tbody>
							</table>
							<br/>
							<input type ="image" onclick="requestPaykakao()" src="<%=pjName%>resources/assets/img/kakao2.png" >
							<input type ="image" onclick="requestPaytoss()" src="<%=pjName%>resources/assets/img/toss2.png"><br/>
							<input type="submit" class="boxed-btn" value="Place Order">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- end check out section -->

	<!-- logo carousel -->
	<div class="logo-carousel-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="logo-carousel-inner">
						<div class="single-logo-item">
							<img src="<%=pjName%>resources/assets/img/company-logos/1.png">
						</div>
						<div class="single-logo-item">
							<img src="<%=pjName%>resources/assets/img/company-logos/2.png">
						</div>
						<div class="single-logo-item">
							<img src="<%=pjName%>resources/assets/img/company-logos/3.png">
						</div>
						<div class="single-logo-item">
							<img src="<%=pjName%>resources/assets/img/company-logos/4.png">
						</div>
						<div class="single-logo-item">
							<img src="<%=pjName%>resources/assets/img/company-logos/5.png">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end logo carousel -->

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
							<li>+00 111 222 3333</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box pages">
						<h2 class="widget-title">Pages</h2>
						<ul>
							<li><a href="index.do">ABOUT</a></li>
							<li><a href="shop.do">COFFEE BEANS</a></li>
							<li><a href="shop2.do">GOODS</a></li>
							<li><a href="contact.do">SUPPORT</a></li>
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
					<p>Copyrights &copy; 2019 - gitae joe,  All Rights Reserved.</p>
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
	<script src="<%=pjName%>resources/assets/js/jquery-1.11.3.min.js"></script>
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
	<!-- main js -->
	<script src="<%=pjName%>resources/assets/js/main.js"></script>
	
	<!-- iamport.payment.js -->
  	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script type="text/javascript">

	// 결제시스템 스크립트 시작
	IMP.init("imp05370542"); // 예: imp00000000
	function requestPaykakao() {
	   let addr = document.getElementById("addr").value;
	   let cno = document.getElementById("cno").value;
		IMP.request_pay({
	       pg : 'kakaopay',
	       pay_method : 'card', //생략 가능
	       merchant_uid: "order_no_"+ new Date().getTime(), // 상점에서 관리하는 주문 번호 
	       name : '${totalProductName} 및 ${cnt}개', // 상품이름 및 갯수
	       amount :  ${totalTest+45}, //결제 금액 
	       buyer_email : 'support@kosmo.com', 
	       buyer_name : '최기태', 
	       buyer_tel : '+00 111 222 3333',
	       buyer_addr : 'Seoul, Geumcheon-gu, Gasan digital 2-ro, 123 building2) 4th-floor (suite.413) World Meridian',
	       buyer_postcode : '123-456'
	   }, function(rsp) { 
	      if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        location.href = "pay_mid_complete.do?addr="+addr+"&cno="+cno;
 	       } 
	    });
	}
	function requestPaytoss() {
		let addr = document.getElementById("addr").value;
		let cno = document.getElementById("cno").value;
	   IMP.request_pay({
	       pg : 'tosspay',
	       pay_method : 'card', //생략 가능
	       merchant_uid: "order_no_0003"+ new Date().getTime(), 
	       name : '${totalProductName} 및 ${cnt}개',
	       amount : ${totalTest+45},
	       buyer_email : 'support@kosmo.com',
	       buyer_name : '최기태',
	       buyer_tel : '+00 111 222 3333',
	       buyer_addr : 'Seoul, Geumcheon-gu, Gasan digital 2-ro, 123 building2) 4th-floor (suite.413) World Meridian',
	       buyer_postcode : '123-456'
	   }, function(rsp) {
	      if ( rsp.success ) {
	           var msg = '결제가 완료되었습니다.';
	           msg += '고유ID : ' + rsp.imp_uid;
	           msg += '상점 거래ID : ' + rsp.merchant_uid;
	           msg += '결제 금액 : ' + rsp.paid_amount;
	           msg += '카드 승인번호 : ' + rsp.apply_num;
	           location.href = "pay_mid_complete.do?addr="+addr+"&cno="+cno;
 	       } 
	   });
	}
	//결제시스템 스크립트 끝
	</script>
	

</body>
</html>