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
	<title>MyPage</title>
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
								<li><a href="index.do">ABOUT</a></li>
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
						<p>Welcome to</p>
						<h1>MyPage</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- order status -->
	<div class="cart-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12" >
					 <div class="contact-form">
                     <p><input type="submit" value="Modify Member Information" onclick = 'location.href="modify.do"'></p>
                     <P>
             		 </div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12" >
					<h3>Order Status</h3> Recent orders are on the top.
				</div>
			</div>
			<div class="checkout-accordion-wrap">
				<c:set var="lono" value="-1"/>
				<c:forEach items="${OrdersList}" var="ordersList" varStatus="status">
					<div class="accordion" id="accordionExample">	  
						<div class="card single-accordion">
							<div class="card-header" id="headingOne">
								<h5 class="mb-0">
								<c:if test="${lono ne ordersList.LONO}">
									<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne${status.index}" >
										 Order No ${ordersList.LONO} 
									</button>
								</c:if>
								</h5>
								<div id="collapseOne${status.index}" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
									<div class="card-body">
										<div class="cart-table-wrap" >					
											<table class="cart-table" >
												<thead class="cart-table-head">
													<tr class="table-head-row">
														<th class="product-image">Product Image</th>
														<th class="product-name">Name</th>
														<th class="product-price">Price</th>
														<th class="product-quantity">Quantity</th>
														<th class="product-total">Total</th>
													</tr>
												</thead>
												<c:forEach items="${OrdersList}" var="ordersList2" varStatus="status">
													<tbody>
														<c:if test="${ordersList.LONO eq ordersList2.LONO}">
															<tr class="table-body-row">
																<td class="product-image"><img src="<%=pjName%>resources/assets/img/products/${ordersList2.IMG}"></td>
																<td class="product-name">${ordersList2.PNAME}</td>
																<td class="product-price">${ordersList2.PRICE}</td>
																<td class="product-quantity">${ordersList2.OCNT}</td>
																<td class="product-total">${ordersList2.PRICE*ordersList2.OCNT}</td>
															</tr>
														</c:if>
													</tbody>
												</c:forEach>
												<c:set var="lono" value="${ordersList.LONO}"/>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
				
			<div>
				<br/>
				<h3>Q &amp; A</h3>
					<div class="checkout-accordion-wrap">
						<c:forEach items="${questionAnswerList}" var="qa" varStatus="status">
							<div class="accordion" id="accordionExample">	  
								<div class="card single-accordion">
									<div class="card-header" id="headingOne">
										<h5 class="mb-0">
										<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne${status.index}" >
										 Question No ${qa.QNO} 
										</button>
										</h5>
										<div id="collapseOne${status.index}" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
											<div class="card-body">
												<textarea class="col-lg-12" rows="8" style="border: none;">
Question Title: ${qa.QNAME}
Question Message: ${qa.QMESSAGE}

Answer: ${qa.AMESSAGE}
												</textarea>
												<a href ="questionDelete.do?cno=${sessionScope.loginCno}&qno=${qa.QNO }" class ="boxed-btn">delete</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
			</div>
		</div>
	</div>
	<!-- order status -->

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

</body>
</html>