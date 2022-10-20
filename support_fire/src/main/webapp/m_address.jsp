
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
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
<link rel="stylesheet" href="_nuxt/css/d3988c3.css">
<link rel="stylesheet" href="_nuxt/css/734fa9a.css">
<link rel="stylesheet" href="_nuxt/css/ee18271.css">
<link rel="stylesheet" href="_nuxt/css/09348cd.css">
<link rel="stylesheet" href="_nuxt/css/dd20fa4.css">
<link rel="stylesheet" href="_nuxt/css/74432ba.css">
<link rel="stylesheet" href="_nuxt/css/db982ae.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js"></script>
	<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">
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
	height: 850px;
	padding: 20px;
	text-align: center;
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
}



      .modal.show {
        display: block;
      }

      .modal_body {
        position: absolute;
        top: 50%;
        left: 50%;

        width: 550px;
        height: 650px;

        padding: 20px;

        text-align: center;

        background-color: rgb(255, 255, 255);
        border-radius: 10px;
        box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

        transform: translateX(-50%) translateY(-50%);
      }

 .contact__form input{

	margin-bottom: 5px;
	width: 90%;
	height: 50px;
	border: 0;
	border-bottom: 1px solid #ebebeb;
	display: inline-block;
}

.contact__form span {
	width: 20%;
	display: block;
	margin-bottom: 0px;
	margin-top: 10px;
	margin-right: auto;
}

button {
	margin: 5px;
}

.btn_box .btn[data-v-88eb18f6].btn_add {
	margin-right: 0;
	padding: 0 14px;
	height: 34px;
	line-height: 32px;
	border-radius: 10px;
	border: 1px solid #222;
	font-size: 12px;
	letter-spacing: -.06px;
	margin-left: 625px;
}

div {
    display: block;
}

.content_title[data-v-88eb18f6] {
    display: -webkit-box;
    display: flex;
    padding: 5px 0 6px;
}

.content_title[data-v-88eb18f6] {
    display: -webkit-box;
    display: flex;
    padding: 5px 0 6px;
}

.btn_box .btn[data-v-88eb18f6] {
	-webkit-box-align: center;
	align-items: center;
}



a, a:active, a:focus, a:hover {
	text-decoration: none;
}

.title{
	display: flex;
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
					document.getElementById('a_zipcode').value = data.zonecode;
					document.getElementById("a_streetAddr").value = roadAddr;
					document.getElementById("a_detailAddr").value = data.jibunAddress;

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
	
	$(document).on('click', '#address_btn', function(){
		$.ajax({
			url:'address_insert',
			method:'POST',
			data:$('#address_form').serialize(),
			success:function(jsonResult){
				alert('등록이 완료되었습니다.');
				$('.modal').removeClass('show');
				body.style.overflow = 'auto';
				location.reload();
				
			}
			
		});
		
		
	});
	$(document).on('click', '.del', function(e){
		console.log($(this).attr('value'));
		if(confirm('정말로 삭제하시겠습니까?')){
			$.ajax({
				url:'address_delete',
				method:'POST',
				data:'a_no='+$(this).attr('value'),
				success:function(jsonResult){
					location.reload();
				}
			});
		}else{
			
		}
	});
	
	$(document).on('click', '.btn-open-popup2', function(e){
			$.ajax({
				url:'address_update_form',
				method:'POST',
				data:'a_no='+$(this).attr('value'),
				success:function(jsonResult){
					$('#a_no').attr('value',jsonResult.data.a_no);
					$('#a_name1').attr('value',jsonResult.data.a_name);
					$('#a_phone1').attr('value',jsonResult.data.a_phone);
					$('#a_zipcode1').attr('value',jsonResult.data.a_zipcode);
					$('#a_streetAddr1').attr('value',jsonResult.data.a_streetAddr);
					$('#a_detailAddr1').attr('value',jsonResult.data.a_detailAddr);
				}
			});
			
	});
	$(document).on('click', '#address_btn_u', function(e){
		$.ajax({
			url:'address_update_action',
			method:'POST',
			data:$('#address_form1').serialize(),
			success:function(jsonResult){
				alert('수정이 완료되었습니다.');
				location.reload();
			}
		});
	
	
});
	
	$(document).on('click', '.main', function(e){
		if(confirm('기본 배송지로 설정하시겠습니까?')){
		$.ajax({
			url:'address_main',
			method:'POST',
			data:'a_no='+$(this).attr('value'),
			success:function(jsonResult){
				alert('변경이 완료되었습니다.');
				location.reload();
				}
		});
		}else{
			
			}
		
	
	
});
	
	
	
});

</script>
</head>


<body>
<div class="modal insert">
		<div class="modal_body">
			<section class="">

				<!-- Breadcrumb Section End -->

				<!-- Checkout Section Begin -->

				<div class="contact__form">
					<form id="address_form">
						<h6 class="checkout__title">주소추가하기</h6>

						<span>이름*</span><input type="text" class="asd" name="a_name"
							id="a_name" palceholder="수령"> <span>휴대전화*</span><input
							type="text" class="asd" name="a_phone" id="a_phone">

						<div class="checkout__input">
							<p>
								<span>우편번호*</span>
							</p>
							<input type="button" class="asd" onclick="showDelivery()" value="우편번호 찾기" class="input_txt" style="background-color: rgba(0, 0, 0, 0.4); color: white; align-content: center;"> 
							<input type="text" class="asd" placeholder="우편번호" id="a_zipcode" name="a_zipcode">
						</div>
						<span>주소*</span>
						 <input type="text" class="asd"	placeholder="도로명주소" class="checkout__input__add" name="a_streetAddr" id="a_streetAddr">
							<input type="text" class="asd" placeholder="지번주소" id="a_detailAddr" name="a_detailAddr">
							<button type="button" class="site-btn" style="margin-top: 10px;"
								id="address_btn">저장</button>

						
					</form>
				</div>
			</section>
		</div>
	</div>
	<!-- 수정폼 -->
	<div class="modal update">
		<div class="modal_body">
			<section class="">

				<!-- Breadcrumb Section End -->

				<!-- Checkout Section Begin -->

				<div class="contact__form">
					<form id="address_form1">
						<h6 class="checkout__title">주소수정하기</h6>
							<input type="hidden" name="a_no" id="a_no" value="">
						<span>이름*</span><input type="text" class="asd" name="a_name"
							id="a_name1" palceholder="수령"> <span>휴대전화*</span><input
							type="text" class="asd" name="a_phone" id="a_phone1">

						<div class="checkout__input">
							<p>
								<span>우편번호*</span>
							</p>
							<input type="button" class="asd" onclick="showDelivery()" value="우편번호 찾기" class="input_txt" style="background-color: rgba(0, 0, 0, 0.4); color: white; align-content: center;"> 
							<input type="text" class="asd" placeholder="우편번호" id="a_zipcode1" name="a_zipcode">
						</div>
						<span>주소*</span>
						 <input type="text" class="asd"	placeholder="도로명주소" class="checkout__input__add" name="a_streetAddr" id="a_streetAddr1">
							<input type="text" class="asd" placeholder="지번주소" id="a_detailAddr1" name="a_detailAddr">
							<button type="button" class="site-btn" style="margin-top: 10px;"
								id="address_btn_u">저장</button>

						
					</form>
				</div>
			</section>
		</div>
	</div>
	<!-- Offcanvas Menu Begin -->

	<jsp:include page="top.jsp" />

	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->

	<jsp:include page="header.jsp" />

	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <a href="mypage"><h4>마이페이지</h4></a>
                        <div class="breadcrumb__links">
                            <a href="main">Home</a>
                            <span>MyPage</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">쇼핑정보</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <li><a href="" id="ppp">구매내역</a></li>
                                                    <li><a href="" id="sss">판매내역</a></li>
                                                   
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseTwo">내정보</a>
                                    </div>
                                    <div id="collapseTwo" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__brand">
                                                <ul>
                                                    <li><a href="#" id="mypage_info">프로필정보</a></li>
                                                    <li><a href="mypage_address">주소록</a></li>
                                                   
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                         
                            </div>
                        </div>
                    </div>
                </div>
				<div class="col-lg-9">
				<div>
				
					<div class="content_title" data-v-88eb18f6="" data-v-61d3533a="">
						<div class="title" data-v-88eb18f6="">
							<h3 data-v-88eb18f6="">주소록</h3>
							<!---->
						</div>
						<div class="btn_box" data-v-88eb18f6="">
							<a href="#" class="btn btn_add btn-open-popup" data-v-3d1bcc82=""
								data-v-88eb18f6="">
								<!---->
								<span class="btn_txt" data-v-88eb18f6="">+ 새 배송지 추가</span>
							</a>
						</div>
					</div>
					</div>
					<div>
					
					
					<div data-v-1c284ef0="" data-v-61d3533a="" class="my_list">
						<div data-v-1c284ef0="" class="basic">
							<div data-v-7d49a47c="" class="my_item is_active"
								default-mark="기본 배송지" data-v-1c284ef0="">
								<div data-v-7d49a47c="" class="info_bind">
									<!---->
									<div data-v-be4e2246="" class="address_info" data-v-7d49a47c="">
										<div data-v-be4e2246="" class="name_box">
											<span data-v-be4e2246="" class="name">${fn:substring(mainAddr.a_name, 0, 1)}**</span>
											<span data-v-be4e2246="" class="mark">기본 배송지</span>
										</div>
										<p data-v-be4e2246="" class="phone">
											${fn:substring(mainAddr.a_phone, 0, 3)}<span class="hyphen"></span>
											${fn:substring(mainAddr.a_phone, 3, 4)}<span class="dot"></span>
											<span class="dot"></span>
											<span class="dot"></span>
											<span class="hyphen"></span>
											<span class="dot"></span>${fn:substring(mainAddr.a_phone, 8, 11)}
										</p>
										<div data-v-be4e2246="" class="address_box">
											<span data-v-be4e2246="" class="zipcode">(${mainAddr.a_zipcode})</span><span
												data-v-be4e2246="" class="address">${mainAddr.a_streetAddr}
												</span>
										</div>
									</div>
								</div>
								<div data-v-7d49a47c="" class="btn_bind">
									<!---->
									<a data-v-3d1bcc82="" data-v-7d49a47c="" href="#" class="btn outlinegrey small upd btn-open-popup2" value="${mainAddr.a_no}"> 수정 </a>
										<a data-v-3d1bcc82=""data-v-7d49a47c="" href="#" class="btn outlinegrey small del" value="${mainAddr.a_no}">삭제</a>
								</div>
							</div>
						</div>
						<div data-v-1c284ef0="" class="other">
							<div data-v-1c284ef0="" class="other_list"></div>
						</div>
					</div>
					
					
					<c:forEach items="${addressList}" var="address">
					<div data-v-1c284ef0="" data-v-61d3533a="" class="my_list">
						<div data-v-1c284ef0="" class="basic">
							<div data-v-7d49a47c="" class="my_item is_active"
								default-mark="기본 배송지" data-v-1c284ef0="">
								<div data-v-7d49a47c="" class="info_bind">
									<!---->
									<div data-v-be4e2246="" class="address_info" data-v-7d49a47c="">
										<div data-v-be4e2246="" class="name_box">
											<span data-v-be4e2246="" class="name">${fn:substring(address.a_name, 0, 1)}**</span>
										</div>
										<p data-v-be4e2246="" class="phone">
											${fn:substring(address.a_phone, 0, 3)}<span class="hyphen"></span>
											${fn:substring(address.a_phone, 3, 4)}<span class="dot"></span>
											<span class="dot"></span>
											<span class="dot"></span>
											<span class="hyphen"></span>
											<span class="dot"></span>${fn:substring(address.a_phone, 8, 11)}
										</p>
										<div data-v-be4e2246="" class="address_box">
											<span data-v-be4e2246="" class="zipcode">(${address.a_zipcode})</span><span
												data-v-be4e2246="" class="address">${address.a_streetAddr}
												</span>
										</div>
									</div>
								</div>
								<div data-v-7d49a47c="" class="btn_bind">
									<!---->
									<a data-v-3d1bcc82="" data-v-7d49a47c="" href="#" class="btn outlinegrey small main" value="${address.a_no}"> 기본배송지 </a>
									<a data-v-3d1bcc82="" data-v-7d49a47c="" href="#"
										class="btn outlinegrey small upd btn-open-popup2" value="${address.a_no}"> 수정 </a><a data-v-3d1bcc82=""
										data-v-7d49a47c="" href="#" class="btn outlinegrey small del" value="${address.a_no}">
										삭제 </a>
								</div>
							</div>
						</div>
						<div data-v-1c284ef0="" class="other">
							<div data-v-1c284ef0="" class="other_list"></div>
						</div>
					</div>
					</c:forEach>
				</div>

				</div>
			</div>
		</div>
	</section>
	<!-- Shop Section End -->

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
	<!-- Search End -->
	<script>
      const body = document.querySelector('body');
      const modal = document.querySelector('.insert');
      const btnOpenPopup = document.querySelector('.btn-open-popup');

      btnOpenPopup.addEventListener('click', () => {
        modal.classList.toggle('show');

        if (modal.classList.contains('show')) {
          body.style.overflow = 'hidden';
        }
      });

      modal.addEventListener('click', (event) => {
        if (event.target === modal) {
          modal.classList.toggle('show');

          if (!modal.classList.contains('show')) {
            body.style.overflow = 'auto';
          }
        }
      });
      
      const body2 = document.querySelector('body');
      const modal2 = document.querySelector('.update');
      const btnOpenPopup2 = document.querySelector('.btn-open-popup2');

      btnOpenPopup2.addEventListener('click', () => {
        modal2.classList.toggle('show');

        if (modal2.classList.contains('show')) {
          body2.style.overflow = 'hidden';
        }
      });

      modal2.addEventListener('click', (event) => {
        if (event.target === modal2) {
          modal2.classList.toggle('show');

          if (!modal2.classList.contains('show')) {
            body2.style.overflow = 'auto';
          }
        }
      });
    </script>
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