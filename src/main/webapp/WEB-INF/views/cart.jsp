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
	<title>Cart</title>
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
						<p>Fresh and Organic</p>
						<h1>Cart</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- cart -->
	<div class="cart-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-12">
					<div class="cart-table-wrap">
						<table class="cart-table">
							<thead class="cart-table-head">
								<tr class="table-head-row">
									<th></th>
									<th>Product Image</th>
									<th>Name</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="totalTest" value="0"/>
								<c:forEach items ="${getCartList}" var ="cart">
								<tr class="table-body-row">
	 								<!--when product-quantity is changed, main.js is called with on change func -->
										<td class="product-remove"><a href="removeCart.do?cno=${sessionScope.loginCno}&pno=${cart.PNO}"><i class="far fa-window-close"></i></a></td>
										<td class="product-image"><img src="<%=pjName%>resources/assets/img/products/${cart.IMG}"></td>
										<td class="product-name">${cart.PNAME}</td>
										<td class="product-price">${cart.PRICE}</td>
										<td class="product-quantity" pno="${cart.PNO}"><input type="number" id="ocnt" value="${cart.OCNT}" min="0" ></td>
										<td class="product-total">${cart.OCNT * cart.PRICE}</td>
										<c:set var="totalTest" value="${ totalTest + (cart.OCNT * cart.PRICE)}"/>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

				<div class="col-lg-4">
					<div class="total-section">
						<table class="total-table">
							<thead class="total-table-head">
								<tr class="table-total-row">
									<th>Total</th>
									<th>Price</th>
								</tr>
							</thead>
							<tbody>
								<tr class="total-data">
                         			<td><strong>Subtotal($): </strong></td>
                           			<td class="totalTest">${totalTest}</td>
                        		</tr>
                        		<tr class="total-data">
                           			<td><strong>Shipping($): </strong></td>
                           			<td class="shipping">45</td>
                        		</tr>
                        		<tr class="total-data">
                           			<td><strong>Total($): </strong></td>
                           			<td class="total">${totalTest+45}</td>
                        		</tr>
							</tbody>
						</table>
						<div class="cart-buttons">
							<a href="shop.do" class="boxed-btn">Return to Shopping</a>
							<c:if test="${sessionScope.loginId!=null}">
								<a href="checkout.do?cno=${sessionScope.loginCno}" class="boxed-btn black">Check Out</a>
							</c:if>
							<c:if test="${sessionScope.loginId==null}">
								<a href="login.do" class="boxed-btn black">Login to Check Out</a>
							</c:if>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- end cart -->

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
	<script type="text/javascript">
	$('.product-quantity').each(function(){
	       $(this).change(function() {
	    	   	// TotalValue를 inputValue가 바뀌는것에 따라 바꿈
	       		let ocnt = $(this).find('input').val(); // 바뀐 inputValue를 가져온다
	       		let sum = $(this).parent().find('.product-price').text() * ocnt; 
	       		// sum을 product-total에 삽입
	            $(this).parent().find(".product-total").text(sum);
	            
	            var total = 0;
	            //total금액을 구한다
	            for(let i=0; i<$(".product-total").length; i++){
	                total += Number($('.product-total').eq(i).text());
	            }
	            //total value를 totlatext에 지정한다.
	            $('.totalTest').text(total);
	            $('.total').text(total+45);
	            
	          	//장바구니 update 
	            $.ajax({  
	                url : "updateCart.do",  
	                type : 'POST',
	                data:{"ocnt": ocnt,
	                	  "cno" :"${sessionScope.loginCno}",//sessionScope를 가져온다
	                	  "pno" :$(this).attr("pno") }//ProductQuantity에 있는 pno attr를 가져온다.
	            })
	            

	         } );
	})
	
	</script>

</body>
</html>