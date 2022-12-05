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
								<li><a href="index_m.do">ORDERS</a></li>
								<li><a href="shop_m.do">COFFEE BEANS</a></li>
								<li><a href="shop2_m.do">GOODS</a></li>
								<li class="current-list-item"><a href="#">SUPPORT</a>
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
						<h1>Contact :<br/> Respond to Questions</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<c:if test="${sessionScope.loginMno!=null}">	
		<!-- contact form -->
		<div class="contact-from-section mt-150 mb-150">
			<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12" >
							<h3>Contact</h3>	
							<div class="cart-table-wrap" >
									<table class="cart-table" >
										<thead class="cart-table-head">
											<tr class="table-head-row">
												<th class="product-remove">Qno.</th>
												<th class="product-name">Cno.</th>
												<th class="product-name">Message</th>
												<th class="product-price">Response</th>
												<th class="product-quantity"></th>
											</tr>
										</thead>
										<tbody>
											
											<c:forEach items="${questionList}" var="question"> 
											<tr class="table-body-row">
												<form action="insertAnswer.do">
													<td class="product-remove">${question.qno}</td>
													<td>${question.cno}</td>
													<td><text-field>${question.qname}<br/>${question.qmessage}</text-field></td>
													<td class="product-price"><textarea name="amessage" id="amessage" class="col-lg-12 col-md-12" placeholder="please type your response to question"></textarea></td>
														<input type="hidden" name="qno" id="qno" value="${question.qno}">
														<input type="hidden" name="mno" id="mno" value="${sessionScope.loginMno}">
														<input type="hidden" name="cno" id="cno" value="${question.cno}">
													<td class="product-quantity"><input type="submit" value="submit"></td>
											   </form>
										    </tr> 
									   		</c:forEach>
									   		
									   </tbody>
									</table>
								
							</div>
						</div> 
					</div>
			</div>
		</div>
		<!-- end contact form -->
	</c:if>
	<c:if test="${sessionScope.loginMno==null}">	
		<div class="contact-from-section mt-150 mb-150">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12" >
						<br/>
						<h3>Please Login to View and Edit Questions</h3><a href="login_m.do" class="boxed-btn">login</a>
						<br/>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	
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
							<li><a href="index_m.do">ABOUT</a></li>
							<li><a href="shop_m.do">COFFEE BEANS</a></li>
							<li><a href="shop2_m.do">GOODS</a></li>
							<li><a href="#">SUPPORT</a></li>
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
	<!-- owl carousel -->
	<script src="<%=pjName%>resources/assets/js/owl.carousel.min.js"></script>
	<!-- mean menu -->
	<script src="<%=pjName%>resources/assets/js/jquery.meanmenu.min.js"></script>
	<!-- form validation js -->
	<script src="<%=pjName%>resources/assets/js/form-validate.js"></script>
	<!-- main js -->
	<script src="<%=pjName%>resources/assets/js/main.js"></script>
	
</body>
</html>