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
<link rel="stylesheet" href="./_nuxt/css/d3988c3.css">
<link rel="stylesheet" href="./_nuxt/css/734fa9a.css">
<link rel="stylesheet" href="./_nuxt/css/ee18271.css">
<link rel="stylesheet" href="./_nuxt/css/09348cd.css">
<link rel="stylesheet" href="./_nuxt/css/dd20fa4.css">
<link rel="stylesheet" href="./_nuxt/css/74432ba.css">
<link rel="stylesheet" href="./_nuxt/css/db982ae.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="js/guest_html_content.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="js/top_content.js"></script>

<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
      .modal {
        position: absolute;
        top: 0;
        left: 0;

        width: 100%;
        height: 100%;

        display: none;

        background-color: rgba(0, 0, 0, 0.4);
      }

      .modal.show {
        display: block;
      }

      .modal_body {
        position: absolute;
        top: 50%;
        left: 50%;

        width: 600px;
        height: 800px;

        padding: 20px;

        text-align: center;

        background-color: rgb(255, 255, 255);
        border-radius: 10px;
        box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

        transform: translateX(-50%) translateY(-50%);
      }
      
    .contact__form input{
	margin-bottom: 5px;
	width : 90%;
	height: 50px;
    border: 0;
    border-bottom: 1px solid #ebebeb;
    display: inline-block;
    }
    
    .contact__form span {
    width:20%;
    display:block;
    margin-bottom: 0px;
    margin-top: 10px;
    margin-right: auto;
    }
    </style>


<script type="text/javascript">

function showDelivery() {
	new daum.Postcode(
			{
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample4_postcode').value = data.zonecode;
					document.getElementById("sample4_roadAddress").value = roadAddr;
					document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

					// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
					if (roadAddr !== '') {
						document.getElementById("sample4_extraAddress").value = extraRoadAddr;
					} else {
						document.getElementById("sample4_extraAddress").value = '';
					}
					var guideTextBox = document.getElementById("guide");
					// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
					if (data.autoRoadAddress) {
						var expRoadAddr = data.autoRoadAddress
								+ extraRoadAddr;
						guideTextBox.innerHTML = '(예상 도로명 주소 : '
								+ expRoadAddr + ')';
						guideTextBox.style.display = 'block';

					} else if (data.autoJibunAddress) {
						var expJibunAddr = data.autoJibunAddress;
						guideTextBox.innerHTML = '(예상 지번 주소 : '
								+ expJibunAddr + ')';
						guideTextBox.style.display = 'block';
					} else {
						guideTextBox.innerHTML = '';
						guideTextBox.style.display = 'none';
					}
				}
			}).open();

};

 $(function(){
		
		$.ajax({
			url:'session_check',
			method:'POST',
			dataType:'json',
			success:function(jsonResult){
			    if(jsonResult.code==1){
			    	var member = jsonResult.data;
				 	$('#top_content').html(login_top(member));
			    }else if(jsonResult.code==2){
				 	$('#top_content').html(logout_top());
			    }
			   
			}
		});
		
	$(document).on('click', '#address_btn', function(){
	console.log($('#address_form').serialize());
	 $.ajax({
			url:'address_btn',
			method:'POST',
			data: $('#address_form').serialize(),
			dataType:'json',
			success:function(jsonResult){
				$('#content').html(address_form_content(jsonResult));
			}
	 });
	});
	
	
});

	 


</script>
</head>
<body>
<div class="modal">
      <div class="modal_body"><section class="">
		
	<!-- Breadcrumb Section End -->

	<!-- Checkout Section Begin -->
	
		
						<div class="contact__form">
							<form id="address_form">
							<h6 class="checkout__title">주소추가하기</h6>
								
							<span>이름*</span><input type="text" class="asd" name="m_id" id="m_id" palceholder="수령">
							<span>휴대전화*</span><input type="text" class="asd" name="m_phone" id="m_phone">

							<div class="checkout__input">
								<p>
									<span>우편번호*</span>
								</p>
								<input type="button" class="asd" onclick="showDelivery()" value="우편번호 찾기"
									class="input_txt"> <input type="text" class="asd"
									id="sample4_postcode">
							</div>
									<span>주소*</span>
								<input type="text" class="asd" placeholder="도로명주소"
									class="checkout__input__add" name="sample4_roadAddress" id="sample4_roadAddress">
								<input type="text" class="asd" placeholder="지번주소" id="sample4_jibunAddress">

							<div class="checkout__input">
								<p>
									<span>배송메모*</span>
								</p>
								<input type="text" class="asd" placeholder="배송메모">
							</div>
							<div class="checkout__input__checkbox">
								<label for="acc"> <span style="width: 30%">기본 배송지로설정</span> <input type="checkbox"
									id="acc"> <span class="checkmark"></span>
								</label><button type="button" class="site-btn" style="margin-top: 50px;" id="address_btn">저장</button>

							</div>
							</form>
						</div>
	</section>
	</div>
    </div>
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
					<a href="./index.jsp"><img src="img/IMG_0608 (1).jpg" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<nav class="header__menu mobile-menu">
					<ul>
						<li><a href="./index.jsp">Home</a></li>
						<li class="active"><a href="./shop">Shop</a></li>
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
							<a href="./index.jsp">Home</a> <a href="./shop">Shop</a> <span>배송/결제</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
	<div id="__nuxt">
		<!---->
		
				<!---->
				<div data-v-7598e8e5="" data-v-34b11929=""
					class="container buy lg step-2">
					<!---->
					<div data-v-7598e8e5="" class="content">
						<!---->
						<div data-v-0259aa53="" data-v-7598e8e5="" class="buy_immediate">
							<div data-v-2b95d831="" data-v-0259aa53=""
								class="product_info_area">
								<div data-v-2b95d831="" class="product_info">
									<div data-v-edf7886c="" data-v-2b95d831="" class="product"
										style="background-color: rgb(242, 242, 242);">
										<picture data-v-6c8b3524="" data-v-edf7886c=""
											class="picture product_img">
										<source data-v-6c8b3524="" type="image/webp"
											srcset="img/product/${product.p_image}">
										<source data-v-6c8b3524=""
											srcset="https://kream-phinf.pstatic.net/MjAyMjA5MjdfOCAg/MDAxNjY0MjU5NTg2MDIy.wQktWmJWTwo83JVbleQzdaQ2OOfKTJp9RejdJvoeK-cg.Svg3Q-zegOeOgmjB6WpvyFAwXv51kpmljf-cvrybr08g.JPEG/a_9fe393b4a2c44008b1fecbc65adb407d.jpg?type=l">
										<img data-v-6c8b3524="" alt="상품 이미지"
											src="https://kream-phinf.pstatic.net/MjAyMjA5MjdfOCAg/MDAxNjY0MjU5NTg2MDIy.wQktWmJWTwo83JVbleQzdaQ2OOfKTJp9RejdJvoeK-cg.Svg3Q-zegOeOgmjB6WpvyFAwXv51kpmljf-cvrybr08g.JPEG/a_9fe393b4a2c44008b1fecbc65adb407d.jpg?type=l"
											class="image"></picture>
										<!---->
										<!---->
										<!---->
									</div>
									<div data-v-2b95d831="" class="product_detail">
										<strong data-v-2b95d831="" class="model_number"><span
											data-v-2b95d831="" class="mark_95">95점</span>${productDetail.pd_no}</strong>
										<p data-v-2b95d831="" class="model_title">${product.p_name}</p>
										<p data-v-2b95d831="" class="model_ko">${product.p_name}</p>
										<div data-v-2b95d831="" class="model_desc">
											<p data-v-2b95d831="" class="size_txt">${productSize.s_size}</p>
											
									</div>
								</div>
							</div>
							<section data-v-6a5da210="" data-v-0259aa53="">
								<div data-v-6a5da210="" class="section_unit">
									<div data-v-6a5da210="" class="section_title">
										<h3 data-v-6a5da210="" class="title_txt">발송 주소</h3>
										<a data-v-6a5da210="" href='#' class="btn-open-popup" id="add_more_btn">+ 새 주소
											추가</a>
									</div>
									<div id="content" data-v-6a5da210="" class="section_content">
										<a data-v-6a5da210="" href="#" class="empty_delivery_info"><span
											data-v-6a5da210="" class="guide_txt">주소를 추가해주세요.</span>
										<svg data-v-6a5da210="" xmlns="http://www.w3.org/2000/svg"
												class="ico-arr-right-gray-s icon sprite-icons">
												<use data-v-6a5da210=""
													href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-ico-arr-right-gray-s"
													xlink:href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-ico-arr-right-gray-s"></use></svg></a>
									</div>
								</div>
										<div id="content">
										</div>
								
												<!---->
									
								<!---->
								<!---->
							</section>
							
							<section data-v-0259aa53="">
								<div data-v-0259aa53="" class="section_title">
									<h3 data-v-0259aa53="" class="title_txt">최종 주문 정보</h3>
								</div>
								<div data-v-0259aa53="" class="section_content">
									<div data-v-887ad490="" data-v-0259aa53=""
										class="instant_group">
										<div data-v-679d7250="" data-v-887ad490=""
											class="price_total order_info">
											<dl data-v-679d7250="" class="price_box">
												<dt data-v-679d7250="" class="price_title">정산금액</dt>
												<dd data-v-679d7250="" class="price empty_price">
													<span data-v-679d7250="" class="amount">-</span><span
														data-v-679d7250="" class="unit"></span>
												</dd>
											</dl>
											<span data-v-679d7250="" class="price_warning"
												style="display: none;"><em data-v-679d7250="">주의!
											</em></span>
										</div>
										<div data-v-887ad490="" class="price_bind">
											
											<dl data-v-3a2a7b6b="" data-v-887ad490=""
												class="price_addition">
												<dt data-v-3a2a7b6b="" class="price_title">
													<span data-v-3a2a7b6b="">검수비</span>
													<!---->
												</dt>
												<dd data-v-3a2a7b6b="" class="price_text">-</dd>
											</dl>
											<dl data-v-3a2a7b6b="" data-v-887ad490=""
												class="price_addition">
												<dt data-v-3a2a7b6b="" class="price_title">
													<span data-v-3a2a7b6b="">수수료</span>
												
														<svg data-v-3a2a7b6b="" xmlns="http://www.w3.org/2000/svg"
															class="icon sprite-icons info-circle-white">
															<use data-v-3a2a7b6b=""
																href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-info-circle-white"
																xlink:href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-info-circle-white"></use></svg>
													</button>
												</dt>
												<dd data-v-3a2a7b6b="" class="price_text">-</dd>
											</dl>
											<dl data-v-3a2a7b6b="" data-v-887ad490=""
												class="price_addition">
												<dt data-v-3a2a7b6b="" class="price_title">
													<span data-v-3a2a7b6b="">배송비</span>
													<!---->
												</dt>
												<dd data-v-3a2a7b6b="" class="price_text">-</dd>
											</dl>
										</div>
										<!---->
									</div>
								</div>
							</section>
							<section data-v-8215c5a4="" data-v-0259aa53="">
								<div data-v-8215c5a4="" class="section_title">
									<h3 data-v-8215c5a4="" class="title_txt">패널티 결제 방법</h3>
								</div>
								<div data-v-8215c5a4="" class="section_content">
									<div data-v-8215c5a4="" class="simple_payment">
										<h4 data-v-8215c5a4="" class="method_title">
											<div data-v-8215c5a4="" class="main_title">
												간편 결제 <span data-v-8215c5a4="" class="sub_title">일시불</span>
											</div>
											<!---->
										</h4>
										<div data-v-29138675="" data-v-8215c5a4="" class="card_list">
											<div data-v-29138675="" class="main_card selected disabled">
												<a data-v-29138675="" href="#" class="regist_link"> 카드를
													등록해주세요 <svg data-v-29138675=""
														xmlns="http://www.w3.org/2000/svg"
														class="ico-arr-right-gray-thick icon sprite-icons">
														<use data-v-29138675=""
															href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-ico-arr-right-gray-thick"
															xlink:href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-ico-arr-right-gray-thick"></use></svg>
												</a>
											</div>
											<div data-v-14995178="" data-v-0259aa53=""
												class="buy_total_confirm" is-instant="true">
												<div data-v-679d7250="" data-v-14995178="" class="price_total">
													<dl data-v-679d7250="" class="price_box">
														<dt data-v-679d7250="" class="price_title">정산금액</dt>
														<dd data-v-679d7250="" class="price empty_price">
															<span data-v-679d7250="" class="amount">-</span><span
																data-v-679d7250="" class="unit"></span>
														</dd>
													</dl>
													<span data-v-679d7250="" class="price_warning"
														style="display: none;"><em data-v-679d7250="">주의!
													</em></span>
												</div>
												<div data-v-14995178="" class="btn_confirm">
													<a data-v-3d1bcc82="" data-v-14995178="" disabled="disabled"
														href="#" class="btn full solid false disabled"> 바로판매 하기 </a>
												</div>
											</div>
											<div data-v-29138675="" class="other_card"
												style="display: none;">
												<ul data-v-29138675="" class="other_card_list"></ul>
											</div>
										</div>
									</div>
									
										</div>
										
									<!---->
								</div>
								<!---->
								<!---->
							
									<!---->
									<!---->
								</div>
								
						
							<!---->
							
							</div>
							</section>
							<!---->
							<!---->
							<!---->
						</div>
						<!---->
					</div>
					<!---->
					<!---->
				</div>
				
						<!---->
						<!---->
						<!---->
						<!---->
					</div>
				</div>
				<!---->
				<div data-v-34b11929="">
					<!---->
					<div data-v-66ae1b7c="" id="toast" class="toast lg">
						<div data-v-66ae1b7c="" class="wrap">
							<svg data-v-66ae1b7c="" xmlns="http://www.w3.org/2000/svg"
								class="icon sprite-icons toast-icon toast-success">
								<use data-v-66ae1b7c=""
									href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-toast-success"
									xlink:href="/_nuxt/777fad20721a1250a960608094a991d9.svg#i-toast-success"></use></svg>
							<div data-v-66ae1b7c="" class="toast-content">
								<p data-v-66ae1b7c="">내용</p>
							</div>
						</div>
					</div>
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
	<script src="js/address.js"></script>
	
</body>

</html>