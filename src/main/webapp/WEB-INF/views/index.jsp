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
	<title>Slow Coffee Home</title>
	<%String pjName="/sj/";%>
	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="<%=pjName%>resources/assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css"/>
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet" type="text/css"/>
	<!-- fontawesome -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/all.min.css"/>
	<!-- bootstrap -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/bootstrap/css/bootstrap.min.css"/>
	<!-- owl carousel -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/owl.carousel.css"/>
	<!-- magnific popup -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/magnific-popup.css"/>
	<!-- animate css -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/animate.css"/>
	<!-- mean menu css -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/meanmenu.min.css"/>
	<!-- main style -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/main.css"/>
	<!-- responsive -->
	<link rel="stylesheet" href="<%=pjName%>resources/assets/css/responsive.css"/>

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
								<li class="current-list-item"><a href="#">ABOUT</a></li>
								<li><a href="shop.do">COFFEE BEANS</a></li>
								<li><a href="shop2.do">GOODS</a></li>
								<li><a href="contact.do">SUPPORT</a> 
								</li>
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
	<!-- end search area -->

	<!-- home page slider -->
	<div class="homepage-slider">
		<!-- single home slider -->
		<div class="single-homepage-slider homepage-bg-1">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-7 offset-lg-1 offset-xl-0">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">Fresh &amp; Organic</p>
								<h1>Gourmet Coffee Roasted To Perfection</h1>
								<div class="hero-btns">
									<a href="shop.do" class="boxed-btn">Visit Shop</a>
									<a href="index.do#team" class="bordered-btn">Barista</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- single home slider -->
		<div class="single-homepage-slider homepage-bg-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-1 text-center">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">Coffee and Daily Life</p>
								<h1>Coffee Bean Story by Country</h1>
								<div class="hero-btns">
									<a href="shop.do" class="boxed-btn">Visit Shop</a>
									<c:if test="${sessionScope.loginId==null}">	
									<a href="login.do" class="bordered-btn">Login</a>
									</c:if>
									<c:if test="${sessionScope.loginId!=null}">
									<a href="mypage.do" class="bordered-btn">mypage</a>
									</c:if>	
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- single home slider -->
		<div class="single-homepage-slider homepage-bg-3">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-1 text-right">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">Make coffee with special tools</p>
								<h1>Become a Expert</h1>
								<div class="hero-btns">
									<a href="shop2.do" class="boxed-btn">Visit Shop</a>
									<c:if test="${sessionScope.loginId==null}">	
									<a href="login.do" class="bordered-btn">Login</a>
									</c:if>
									<c:if test="${sessionScope.loginId!=null}">
									<a href="mypage.do" class="bordered-btn">mypage</a>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end home page slider -->

	<!-- product section -->
	<div class="product-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="section-title">	
						<h3><span class="orange-text">Newest</span> Arrival</h3>
						<p>Featuring the freshest signature coffees sourced throughout the year.</p> 
					</div>
				</div>
			</div>

			<div class="row product-lists">
					<c:forEach items="${productList}" var ="product" step="${productList.size()/3}">
				<div class="col-lg-4 col-md-6 text-center">
						<form action="single_product.do" >
							<div class="single-product-item"> 
								<c:if test="${product.img != null}">
									<div class="product-image"><img src="<%=pjName%>resources/assets/img/products/${product.img}"></div>
								</c:if>
								<c:if test="${product.img == null}">
									<div class="product-image"><img src="<%=pjName%>resources/assets/img/products/noImage.jpg"></div>
								</c:if> 
								<h3>${product.pname}</h3>
								<p class="product-price"><span>Per Kg</span> ${product.price}$ </p> 
								<c:if test="${sessionScope.loginId==null}">
	                     			<a href="login.do" class="cart-btn">Login to Buy </a>
		                     	</c:if>
			                    <c:if test="${sessionScope.loginId!=null}">
			                     	<input type="submit" value="Buy">
			                    </c:if>
							</div>
							<input type="hidden" id="img" name="img" value="${product.img}">
							<input type="hidden" id="pname" name="pname" value="${product.pname}">
							<input type="hidden" id="price" name="price" value="${product.price}">
							<input type="hidden" id="pno" name="pno" value="${product.pno}">
							<input type="hidden" id="description" name="description" value="${product.description}">
							<input type="hidden" id="stock" name="stock" value="${product.stock}">
						</form>
				</div>
					</c:forEach>
			</div>
		</div>
	</div>
	<!-- end product section -->

	<!-- testimonail-section -->
	<div class="testimonail-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1 text-center">
					<div class="testimonial-sliders">
						<div class="single-testimonial-slider">
							<div class="client-avater">
								<img src="<%=pjName%>resources/assets/img/avaters/avatar1.png">
							</div>
							<div class="client-meta">
								<h3>Byeonguk Jeon<span>Slow's Barista</span></h3>
								<p class="testimonial-body">
									" We worked hard to build a holiday blend that captures the beauty and flavor of balanced in-season coffees. "
								</p>
								<div class="last-icon">
									<i class="fas fa-quote-right"></i>
								</div>
							</div>
						</div>
						<div class="single-testimonial-slider">
							<div class="client-avater">
								<img src="<%=pjName%>resources/assets/img/avaters/avatar2.png">
							</div>
							<div class="client-meta">
								<h3>Kyungho Oh<span>Offline Slow shop owner</span></h3>
								<p class="testimonial-body">
									" A refreshing blend of coffee and sea salt are legendary for their therapeutic and clarifying properties. "
								</p>
								<div class="last-icon">
									<i class="fas fa-quote-right"></i>
								</div>
							</div>
						</div>
						<div class="single-testimonial-slider">
							<div class="client-avater">
								<img src="<%=pjName%>resources/assets/img/avaters/avatar3.png">
							</div>
							<div class="client-meta">
								<h3>Chanju Baek<span>CEO</span></h3>
								<p class="testimonial-body">
									" Roasted to perfection by our very own Roast Master in small batches for a more gourmet roast. Every coffee is prepared for you. "
								</p>
								<div class="last-icon">
									<i class="fas fa-quote-right"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end testimonail-section -->
	
	<!-- advertisement section -->
	<div class="abt-section mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<div class="abt-bg">
						<a href="https://www.youtube.com/watch?v=7QNidjvFcDA" class="video-play-btn popup-youtube"><i class="fas fa-play"></i></a>
					</div>
				</div>
				<div class="col-lg-6 col-md-12">
					<div class="abt-text">
						<p class="top-sub">World</p>
						<h2>Barista<span class="orange-text"> Championship</span></h2>
						<p>At the same time as opening the Yeongdo Coffee Bar, Momos Coffee embraced Choo Kyung-ha, who became the first World Cup Tasters champion in two years in Milan, Italy, in 2021.</p>
						<p>Chubarista, a native of Busan, played as an Australian representative for Canberra Ona Coffee in Australia in October and lifted the trophy. Instead of returning to Australia, I decided to start my second coffee life at Momos Coffee.</p>
						<a href="registration.do" class="boxed-btn mt-4">Please be our member</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end advertisement section -->
	
	<!-- featured section -->
	<div class="feature-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<div class="featured-text">
						<h2 class="pb-3">Why <span class="orange-text">Slow Coffee?</span></h2>
						<div class="row">
							<div class="col-lg-6 col-md-6 mb-4 mb-md-5">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-shipping-fast"></i>
									</div>
									<div class="content">
										<h3>Home Delivery</h3>
										<p>Fast delivery within a week. While waiting, look for various roasting methods on the homepage.</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 mb-5 mb-md-5">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-money-bill-alt"></i>
									</div>
									<div class="content">
										<h3>Best Price</h3>
										<p>Get good quality coffee beans at a reasonable price. We love to feature the freshest organic coffee.</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 mb-5 mb-md-5">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-briefcase"></i>
									</div>
									<div class="content">
										<h3>Variety of Coffee Beans</h3>
										<p>Sweet brew invokes all the feelings of comfort and joy. Complete your day with the taste you want.</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-sync-alt"></i>
									</div>
									<div class="content">
										<h3>Quick Refund</h3>
										<p>If you don't like it, you can get a quick refund or exchange. Don't hesitate to contact the support bulletin board.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end featured section -->
	<div id="team"><br/></div>
	<!-- team section -->
	<div class="mt-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="section-title">
						<h3>Our <span class="orange-text">Team</span></h3>
						<p>Your festive morning companion.</p>
						<p>We always strive to provide the best coffee beans.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 ">
					<div class="single-team-item">
						<div class="team-bg team-bg-1"></div>
						<h4>Seunghwan Noh <span>Barista</span></h4>
						<ul class="social-link-team">
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-team-item">
						<div class="team-bg team-bg-2"></div>
						<h4>Jisun Yoo <span>Barista</span></h4>
						<ul class="social-link-team">
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 ">
					<div class="single-team-item">
						<div class="team-bg team-bg-3"></div>
						<h4>Mingyeong Ju <span>Barista</span></h4>
						<ul class="social-link-team">
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 ">
					<div class="single-team-item">
						<div class="team-bg team-bg-4"></div>
						<h4>Youin Choi <span>Barista</span></h4>
						<ul class="social-link-team">
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				</div>
				
				
			</div>
		</div>
	</div>
	<!-- end team section -->
	
	<br/><br/><br/><br/>

	<!-- logo carousel -->
	<div class="logo-carousel-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="logo-carousel-inner">
						<div class="single-logo-item">
							<a href="https://www.starbucks.com/" target="_blank"><img src="<%=pjName%>resources/assets/img/company-logos/1.png"></a>
						</div>
						<div class="single-logo-item">
							<a href="https://www.caffe-pascucci.co.kr/" target="_blank"><img src="<%=pjName%>resources/assets/img/company-logos/2.png"></a>
						</div>
						<div class="single-logo-item">
							<a href="https://composecoffee.com/" target="_blank"><img src="<%=pjName%>resources/assets/img/company-logos/3.png"></a>
						</div>
						<div class="single-logo-item">
							<a href="https://www.twosome.co.kr/" target="_blank"><img src="<%=pjName%>resources/assets/img/company-logos/4.png"></a>
						</div>
						<div class="single-logo-item">
							<a href="https://www.lotteeatz.com/" target="_blank"><img src="<%=pjName%>resources/assets/img/company-logos/5.png"></a>
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
							<li> +02 2025 8523 </li>
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
					<p>Copyrights &copy; 2019 - <a href="index_m.do">gitae joe</a>,  All Rights Reserved.</p>
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