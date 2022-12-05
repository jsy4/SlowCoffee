<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  //web browser can cache the list so new list may not show immediately
   response.setHeader("Pragma","No-cache");      // HTTP 1.0 version
   response.setHeader("Cache-Control","no-cache");   // HTTP 1.1 version
   response.setHeader("Cache-Control","no-store"); // related to some firefox settings
   response.setDateHeader("Expires", 1L);         // set finished date before present to avoid being response cache.
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>Shop Beans</title>
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
								<li class="current-list-item"><a href="#">COFFEE BEANS</a></li>
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
						<h1>Shop Beans</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- products -->
	<div class="product-section mt-150 mb-150">
		<div class="container">
			<div class="row">
                <div class="col-md-12">
                    <div class="product-filters">
                        <ul>
                            <a href = "shop.do"><li data-filter="*">All</li></a>
                            <a href = "shop_capsule.do"><li data-filter=".capsule">Capsule</li></a>
                            <a href = "shop_dripbag.do"><li class="active" data-filter=".dripbag">Dripbag</li></a>
                            <a href = "shop_beans.do"><li data-filter=".beans">Beans</li></a>
                        </ul>
                    </div>
                </div>
            </div>
			<div class="row product-lists">
				<c:forEach items="${productList}" var="product"> 
					<div class="col-lg-4 col-md-6 text-center ${product.type}">
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
			
			
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="pagination-wrap">		
 
			 <ul>
			    

			    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
			    	<li><a href="shop_dripbag.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
			    </c:forEach>

			    
		  </ul>


  				</div>
  			</div>
		</div>

		<br/><br/><br/><br/>
			
			
			
		</div>
	</div>
	<!-- end products -->

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
	<!-- main js2 -->
	<script src="<%=pjName%>resources/assets/js/mainAdded.js"></script>

</body>
</html>