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
<link
	href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/test.css" type="text/css">
<link rel="stylesheet" href="css/product-size.css" type="text/css">
<link href="_nuxt/css/74432ba.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/db982ae.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/dd20fa4.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/ee18271.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/09348cd.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/734fa9a.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/c3bbf15.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/d62dccd.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/4e9a7cc.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/63fac4d.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/61299ed.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/efe128e.css" rel="stylesheet" type="text/css">
<link href="_nuxt/css/cdddabb.css" rel="stylesheet" type="text/css">


<style type="text/css">
.container.buy[data-v-ed431aec] {
	background-color: #fff;
}

#cassd {
	background-color: #fff;
}

.scp {
	margin-top: 50px;
}
</style>



<link rel="stylesheet" href="_nuxt/css/d3988c3.css">
<link rel="stylesheet" href="_nuxt/css/734fa9a.css">
<link rel="stylesheet" href="_nuxt/css/ee18271.css">
<link rel="stylesheet" href="_nuxt/css/09348cd.css">
<link rel="stylesheet" href="_nuxt/css/d62dccd.css">
<link rel="stylesheet" href="_nuxt/css/74432ba.css">
<link rel="stylesheet" href="_nuxt/css/c3bbf15.css">
<link rel="stylesheet" href="_nuxt/css/db982ae.css">




<script type="text/javascript" async=""
	src="https://wcs.naver.net/wcslog.js" id="naver-ads" data-loaded="true"></script>
<script
	src="https://www.googletagmanager.com/gtag/js?l=dataLayer&amp;id=G-SRFKTMTR0R"
	async=""></script>
<link rel="preload" as="style" href="_nuxt/css/dd20fa4.css">
<link rel="preload" as="style" href="_nuxt/css/4e9a7cc.css">
<link rel="preload" as="style" href="_nuxt/css/63fac4d.css">
<link rel="preload" as="style" href="_nuxt/css/61299ed.css">
<meta data-n-head="ssr" data-hid="description" name="description"
	content="한정판 거래의 FLEX, KICKS RULE EVERYTHING AROUND ME">
<meta data-n-head="ssr" data-hid="og:title" name="og:title"
	property="og:title" content="KREAM | 한정판 거래의 FLEX">
<meta data-n-head="ssr" data-hid="og:description" name="og:description"
	property="og:description" content="한정판을 거래하는 가장 확실한 방법">
<meta data-n-head="ssr" data-hid="og:image" name="og:image"
	property="og:image"
	content="https://kream.co.kr/images/index_og_kream.png">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="js/top_content.js"></script>
<!-- js 등록 -->
<script type="text/javascript" src="js/product_content.js"></script>
<script type="text/javascript">
	function getParameterByName(name) {
		name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex
				.exec(location.search);
		return results === null ? "" : decodeURIComponent(results[1].replace(
				/\+/g, " "));
	}
	$(function() {

		$.ajax({
			url : 'session_check',
			method : 'POST',
			dataType : 'json',
			success : function(jsonResult) {
				if (jsonResult.code == 1) {
					var member = jsonResult.data;
					$('#top_content').html(login_top(member));
				} else if (jsonResult.code == 2) {
					$('#top_content').html(logout_top());
					alert('로그인을 해주세요');
				}

			}
		});

		var url = window.location.pathname
		$.ajax({
			url:'url_check',
			method:'POST',
			data:'url='+url,
			success:function(jsonResult){
			    if(jsonResult.code == 1){
			    	$('#home').addClass('active');
			    }else if(jsonResult.code == 2){
			    	$('#shop').addClass('active');
			    }else if(jsonResult.code == 3){
			    	$('#notice').addClass('active');
			    }
			   
			}
		});
		
		
		var v = window.location.search;
		console.log(v);
		a = v.replace('?', '');
		console.log(a);

		html = "";
		$.ajax({
					url : 'product_size',
					method : 'GET',
					dataType : 'json',
					data : a,
					success : function(jsonResult) {
						var map = jsonResult.data;
						if (jsonResult.code == 1) {
							for (var i = 0; i < jsonResult.sizeList.length; i++) {
								html += productSizeForm_p(
										jsonResult.sizeList[i], map[i]);
							}
						} else if (jsonResult.code == 2) {
							for (var i = 0; i < jsonResult.sizeList.length; i++) {
								html += productSizeForm_s(
										jsonResult.sizeList[i], map[i]);
							}
						}
						$('#productSize').html(html);
						$('#top_text').html(jsonResult.msg);
						$('#top_text2').html(jsonResult.msg);
						$('#product_tag').html(
								productSizeNameForm(jsonResult.product));
					}
				});
		$(document).on('click','.buy1',function(e) {
					if (e.currentTarget.value != 'null') {
						$.ajax({
							url : 'sizeClick_p',
							method : 'POST',
							dataType : 'json',
							data : a + '&pd_no=' + e.currentTarget.value
									+ '&s_size='
									+ this.querySelector('.p_size').value,
							success : function(jsonResult) {
								$('#ipchal').html(
										sizeClick_p(jsonResult.productDetail,
												jsonResult.productSize,
												jsonResult.product,
												jsonResult.buymin));
							}
						});

					} else {
						$.ajax({
							url : 'sizeClick_p_null',
							method : 'POST',
							dataType : 'json',
							data : a + '&pd_no=' + '&s_size='
									+ this.querySelector('.p_size').value,
							success : function(jsonResult) {
								$('#ipchal').html(
										sizeClick_p_null(
												jsonResult.productSize,
												jsonResult.product,
												jsonResult.buymin));
							}
						});
					}
					e.preventDefault();
				});
		$(document).on('click','.sell1',function(e) {
					if (e.currentTarget.value != 'null') {
						$.ajax({
							url : 'sizeClick_s',
							method : 'POST',
							dataType : 'json',
							data : a + '&pd_no=' + e.currentTarget.value
									+ '&s_size='
									+ this.querySelector('.p_size').value,
							success : function(jsonResult) {
								$('#ipchal').html(
										sizeClick_s(jsonResult.productDetail,
												jsonResult.productSize,
												jsonResult.product,
												jsonResult.buymin));
							}
						});

					} else {
						$.ajax({
							url : 'sizeClick_s_null',
							method : 'POST',
							dataType : 'json',
							data : a + '&pd_no=' + '&s_size='
									+ this.querySelector('.p_size').value,
							success : function(jsonResult) {
								$('#ipchal').html(
										sizeClick_s_null(
												jsonResult.productSize,
												jsonResult.product,
												jsonResult.buymin));
							}

						});
					}
					e.preventDefault();
				});
		$(document).on('click', '#bid', function(e) {
			$.ajax({
				success : function(jsonResult) {
					console.log(e.target);
					$('#imm').removeClass('on');
					$('#bid').addClass('on');
					document.getElementById('price_g').readOnly = false;
					document.getElementById('price_g').value = "";
				}

			});
			e.preventDefault();
		});
		$(document).on('click','#imm',function(e) {
					$.ajax({
						success : function(jsonResult) {
							$('#bid').removeClass('on');
							$('#imm').addClass('on');
							document.getElementById('price_g').value = $(
									'#hiddenPd_no_aa').attr('value');
							document.getElementById('price_g').readOnly = true;
						}
					});
					e.preventDefault();
				});
		$(document).on('click','.on',function(e) {
					console.log($(this).attr('id'));
					if ($(this).attr('id') == 'imm') {
						console.log($('#hiddenPd_no_buy').val());
						location.href = 'payment?pd_no='
								+ $('#hiddenPd_no_buy').val() + '&price='
								+ document.getElementById('price_g').value
					} else {
						location.href = 'bid?' + a + '&s_size='
								+ $('#s_size').val() + '&price='
								+ document.getElementById('price_g').value

					}
					e.preventDefault();
				});
	});
</script>

<style type="text/css">
#price_g {
	text-align: right;
	font-style: italic;
}
</style>
</head>



<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Begin -->
	<div id="top_content">
		<jsp:include page="top.jsp" />
	</div>
	<!-- Offcanvas Menu End -->


	<!-- Header Section Begin -->
	<jsp:include page="header.jsp" />
	<!-- Header Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4 id="top_text">구매하기</h4>
						<div class="breadcrumb__links">
							<a href="main">Home</a> <a href="shop">Shop</a> <span
								id="top_text2">구매하기</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
	<div id="ipchal">
		<div id="__nuxt">
			<!---->
			<div id="__layout">
				<div data-v-34b11929="" tabindex="0" class="wrap md etc"
					style="padding-top: 50px;">
					<div data-v-34b11929="">
						<!---->


						<!---->
						<div data-v-ed431aec="" data-v-34b11929=""
							class="container buy md">
							<div data-v-ed431aec="" class="content_area">
								<div data-v-ed431aec="" class="buy_before">
									<div data-v-ed431aec="" class="buy_before_check">
										<div data-v-16a54f91="" data-v-ed431aec=""
											class="product_info" id="product_tag">
											<div data-v-16a54f91="" class="product_thumb">
												<div data-v-edf7886c="" data-v-16a54f91="" class="product"
													style="background-color: rgb(235, 240, 245); padding-bottom: 0px;">
													<picture data-v-6c8b3524="" data-v-edf7886c=""
														class="picture product_img">
													<source data-v-6c8b3524="" type="image/webp"
														srcset="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m_webp">
													<source data-v-6c8b3524=""
														srcset="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m">

													<!-- 상품이미지 --> <img data-v-6c8b3524="" alt="상품 이미지"
														src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m"
														class="image"></picture>
													<!---->
													<!---->
													<!---->
												</div>
											</div>
											<div class="product_detail" id="p_content">
												<p data-v-16a54f91="" class="code">315122-111/CW2288-111</p>
												<p data-v-16a54f91="" class="translated_name">&nbsp;&nbsp;
													나이키 에어포스 1 '07 로우 화이트</p>
												<!---->
												&nbsp;&nbsp;
												<div data-v-6da6dff3="" data-v-16a54f91=""
													class="badge badge_product shipping_express">빠른배송</div>
											</div>
										</div>
										<div data-v-ed431aec="" class="buy_before_select">
											<div data-v-7ade2d82="" data-v-ed431aec=""
												class="select_area md">
												<!---->
												<!-- 상품사이즈 -->
												<ul data-v-7ade2d82="" class="select_list" id="productSize">
													<li data-v-7ade2d82="" class="select_item">
														<button id="cassd" data-v-7ade2d82="" role="button"
															aria-selected="false" class="select_link buy bid">
															<div data-v-7ade2d82="" class="link_inner">
																<span data-v-7ade2d82="" class="size"> <!---->
																	235
																</span><span data-v-7ade2d82="" class="price">구매입찰</span>
															</div>
														</button>
													</li>
													<!-- 상품사이즈 -->
													<li data-v-7ade2d82="" class="select_item"><button
															id="cassd" data-v-7ade2d82="" role="button"
															aria-selected="false" class="select_link buy">
															<div data-v-7ade2d82="" class="link_inner">
																<span data-v-7ade2d82="" class="size"><svg
																		data-v-7ade2d82="" xmlns="http://www.w3.org/2000/svg"
																		class="ico-express icon sprite-icons">
                                                <use data-v-7ade2d82=""
																			href="_nuxt/777fad20721a1250a960608094a991d9.svg#i-ico-express"
																			xlink:href="_nuxt/777fad20721a1250a960608094a991d9.svg#i-ico-express"></use></svg>
																	255 </span><span data-v-7ade2d82="" class="price">138000</span>
															</div>
														</button></li>
												</ul>
											</div>
											<!---->
										</div>
									</div>
								</div>
							</div>
							<!---->
							<!---->
						</div>

						<!---->

						<!---->
						<!---->
						<!---->
						<!---->
						<!---->
					</div>
				</div>
				<!---->
				<div data-v-34b11929="">
					<!---->
					<div data-v-66ae1b7c="" id="toast" class="toast md">
						<div data-v-66ae1b7c="" class="wrap">
							<svg data-v-66ae1b7c="" xmlns="http://www.w3.org/2000/svg"
								class="icon sprite-icons toast-icon toast-success">
                        <use data-v-66ae1b7c=""
									href="_nuxt/777fad20721a1250a960608094a991d9.svg#i-toast-success"
									xlink:href="_nuxt/777fad20721a1250a960608094a991d9.svg#i-toast-success"></use></svg>
							<div data-v-66ae1b7c="" class="toast-content">
								<p data-v-66ae1b7c="">내용</p>
							</div>
						</div>
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




</body>
</html>






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