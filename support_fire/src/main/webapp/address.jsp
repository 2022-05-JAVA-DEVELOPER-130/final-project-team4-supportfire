<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Male-Fashion | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
  <link href="../https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/login.css">
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/test.css" type="text/css">
<link href="./_nuxt/css/74432ba.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/db982ae.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/dd20fa4.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/ee18271.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/09348cd.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/734fa9a.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/c3bbf15.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/d62dccd.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/4e9a7cc.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/63fac4d.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/61299ed.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/efe128e.css" rel="stylesheet" type="text/css">
<link href="./_nuxt/css/cdddabb.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="js/guest_html_content.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>


function showDelivery() {
	 new daum.Postcode({
		 oncomplete: function(data) {
             // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

             // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
             // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
             var roadAddr = data.roadAddress; // 도로명 주소 변수
             var extraRoadAddr = ''; // 참고 항목 변수

             // 법정동명이 있을 경우 추가한다. (법정리는 제외)
             // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
             if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                 extraRoadAddr += data.bname;
             }
             // 건물명이 있고, 공동주택일 경우 추가한다.
             if(data.buildingName !== '' && data.apartment === 'Y'){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
             }
             // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
             if(extraRoadAddr !== ''){
                 extraRoadAddr = ' (' + extraRoadAddr + ')';
             }

             // 우편번호와 주소 정보를 해당 필드에 넣는다.
             document.getElementById('sample4_postcode').value = data.zonecode;
             document.getElementById("sample4_roadAddress").value = roadAddr;
             document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
             
             // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
             if(roadAddr !== ''){
                 document.getElementById("sample4_extraAddress").value = extraRoadAddr;
             } else {
                 document.getElementById("sample4_extraAddress").value = '';
             }

             var guideTextBox = document.getElementById("guide");
             // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
             if(data.autoRoadAddress) {
                 var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                 guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                 guideTextBox.style.display = 'block';

             } else if(data.autoJibunAddress) {
                 var expJibunAddr = data.autoJibunAddress;
                 guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                 guideTextBox.style.display = 'block';
             } else {
                 guideTextBox.innerHTML = '';
                 guideTextBox.style.display = 'none';
             }
         }
	    }).open();
 
}
</script>

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Begin -->

	<jsp:include page="/top.jsp" />

	<!-- Offcanvas Menu End -->
	

	<!-- Header Section Begin -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3">
				<div class="header__logo">
					<a href="./index.jsp"><img src="img/logo.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<nav class="header__menu mobile-menu">
					<ul>
						<li><a href="./index.jsp">Home</a></li>
						<li class="active"><a href="./shop.jsp">Shop</a></li>
						<li><a href="#">Pages</a>
							<ul class="dropdown">
								<li><a href="./about.jsp">About Us</a></li>
								<li><a href="./shop-details.jsp">Shop Details</a></li>
								<li><a href="./shopping-cart.jsp">Shopping Cart</a></li>
								<li><a href="./checkout.jsp">Check Out</a></li>
								<li><a href="./blog-details.jsp">Blog Details</a></li>
							</ul></li>
						<li><a href="./blog.jsp">Blog</a></li>
						<li><a href="./contact.jsp">Contacts</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-3 col-md-3">
				<div class="header__nav__option">
					<a href="#" class="search-switch"><img
						src="img/icon/search.png" alt=""></a> <a href="#"><img
						src="img/icon/heart.png" alt=""></a> <a href="#"><img
						src="img/icon/cart.png" alt=""> <span>0</span></a>
					<div class="price">$0.00</div>
				</div>
			</div>
		</div>
		<div class="canvas__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
	</header>
	<!-- Header Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>배송/결제</h4>
						<div class="breadcrumb__links">
							<a href="./index.jsp">Home</a> <a href="./shop.jsp">Shop</a> <span>배송/결제</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
		<!---->
	
 <div>
		<div data-v-1f7c6d3f="" data-v-795b6767="" data-v-6a5da210=""
	class="layer_delivery layer mo">
	<div data-v-1f7c6d3f="" class="layer_container">
		<div data-v-1f7c6d3f="" class="layer_header">
		
		</div>
		<div data-v-1f7c6d3f="" class="layer_content">
			<div data-v-795b6767="" data-v-1f7c6d3f="" class="delivery_bind">
				<div data-v-795b6767="" data-v-1f7c6d3f="" class="delivery_input">
				
						<h4 data-v-795b6767="" data-v-6c561060="" class="input_title">이름</h4>
						<div data-v-6c561060="" class="input_item">
							<input  type="text" placeholder="수령인의 이름" autocomplete="off" class="input_txt text_fill">
						</div>
						
					
					</div>
					<div data-v-6c561060="" data-v-795b6767="" class="input_box"
						data-v-1f7c6d3f="">
						<h4 data-v-795b6767="" data-v-6c561060="" class="input_title">휴대폰
							번호</h4>
						<div data-v-6c561060="" class="input_item">
							<input  type="text" placeholder="- 없이 입력"
								autocomplete="off" class="input_txt">
						</div>
						<p data-v-795b6767="" data-v-6c561060="" class="input_error">정확한
							휴대폰 번호를 입력해주세요.</p>
					</div>
					<div data-v-6c561060="" data-v-795b6767="" class="input_box"
						data-v-1f7c6d3f="">
					<input data-v-6c561060="" type="text" id="sample4_postcode" placeholder="우편번호">
					<input type="button" onclick="showDelivery()" value="우편번호 찾기"><br>
					</div>
					<div data-v-6c561060="" data-v-795b6767="" class="input_box"
						data-v-1f7c6d3f="">
					<input data-v-6c561060="" type="text" id="sample4_roadAddress" placeholder="도로명주소">
					<input  data-v-6c561060="" type="text" id="sample4_jibunAddress" placeholder="지번주소">
					</div>
					<span id="guide" style="color:#999;display:none"></span>
					<input data-v-6c561060="" type="text" id="sample4_detailAddress" placeholder="상세주소">
					<input data-v-6c561060="" type="text" id="sample4_extraAddress" placeholder="참고항목">
					<div data-v-795b6767="" data-v-1f7c6d3f="" class="delivery_check">
					
						<input  id="check1" type="checkbox" name=""
							class="blind"><label data-v-4c714e9f="" for="check1"
							class="check_label"><svg data-v-4c714e9f=""
								xmlns="http://www.w3.org/2000/svg"
								class="icon sprite-icons ico-check-inactive">
								<use data-v-4c714e9f=""
									href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-ico-check-inactive"
									xlink:href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-ico-check-inactive"></use></svg><span
							data-v-4c714e9f="" class="label_txt">기본 배송지로 설정</span>
						<!----></label>
					</div>
				</div>
			</div>
			<center>
			<div data-v-795b6767="" data-v-1f7c6d3f="" class="layer_btn">
				<a data-v-3d1bcc82="" data-v-795b6767="" href=""
					class="btn btn_delete outlinegrey medium" data-v-1f7c6d3f="">
					취소 </a><a data-v-3d1bcc82="" data-v-795b6767="" disabled="disabled"
					href="#" class="btn btn_save solid medium disabled"
					data-v-1f7c6d3f="" margin: 0 auto;> 저장하기 </a>
			</div>
			</center>
		</div>
		<a data-v-795b6767="" data-v-1f7c6d3f="" href="#"
			class="btn_layer_close">
			<!---->
			<div data-v-795b6767="">
				<svg data-v-795b6767="" xmlns="http://www.w3.org/2000/svg"
					class="ico-arr-way-left icon sprite-icons">
					<use data-v-795b6767=""
						href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-ico-arr-way-left"
						xlink:href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-ico-arr-way-left"></use></svg>
			</div>
		</a>
	</div>
</div>




	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__logo">
							<a href="#"><img src="img/footer-logo.png" alt=""></a>
						</div>
						<p>The customer is at the heart of our unique business model,
							which includes design.</p>
						<a href="#"><img src="img/payment.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
					<div class="footer__widget">
						<h6>Shopping</h6>
						<ul>
							<li><a href="#">Clothing Store</a></li>
							<li><a href="#">Trending Shoes</a></li>
							<li><a href="#">Accessories</a></li>
							<li><a href="#">Sale</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer__widget">
						<h6>Shopping</h6>
						<ul>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Payment Methods</a></li>
							<li><a href="#">Delivary</a></li>
							<li><a href="#">Return & Exchanges</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
					<div class="footer__widget">
						<h6>NewLetter</h6>
						<div class="footer__newslatter">
							<p>Be the first to know about new arrivals, look books, sales
								& promos!</p>
							<form action="#">
								<input type="text" placeholder="Your email">
								<button type="submit">
									<span class="icon_mail_alt"></span>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="footer__copyright__text">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<p>
							Copyright ©
							<script>
								document.write(new Date().getFullYear());
							</script>
							2020 All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						</p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>