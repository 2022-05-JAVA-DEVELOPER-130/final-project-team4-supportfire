<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
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
    <script type="text/javascript" src="js/top_content.js"></script>
    <script type="text/javascript" src="js/mypage_content.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js"></script>
    
<style type="text/css">
 #radi{
 	height: 20px;
 	width: 100%;
 	display: inline;
 -webkit-appearance: button;
 
 }
 
 .contact__form input{
	margin-left: 70px;
	margin-bottom: 5px;
	width : 600px;
    border: 0;
    border-bottom: 1px solid #ebebeb;
    display: block;
    }

form span{
	width: auto;
	margin-top: 25px;
	margin-left: 50px;
	display: block;

}

hr{
	width: 700px;
	height: 5px;

}


.error{
	margin-left: 60px;

}

input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
  
}

.error{
	color: red;

}
</style>    
    
<script type="text/javascript">
$(function(){
	/* validator객체변수선언 */
	var validator = null;
	/*validator객체 디폴트속성 설정*/
	 $.validator.setDefaults({
				rules:{
					m_id:{
						required:true,
						minlength: 6,
						maxlength: 12
					},
					m_password:{
						required: true,
						minlength: 4,
						maxlength: 12
					},
					m_password_acc:{
						required: true,
						equalTo : "#m_password"
					},
					m_name:{
						required: true
					},
					m_phone:{
						required: true
					},
					m_birth:{
						required: true
					},
					m_email:{
						required: true,
						email:true
					},
					m_gender:{
						required: true
					},
					m_address:{
						required: true
					}
					
				},
				messages:{
					m_id:{
						required: "아이디를 입력하세요"
					},
					m_name:{
						required: "이름을 입력하세요",
						minlength: "이름은 {0} 글자이상입니다.",
						maxlength: "이름은 {0} 글자이하입니다."
					},
					m_password:{
						required: "비밀번호를 입력해주세요",
						minlength: "비밀번호는 {0} 글자이상입니다.",
						maxlength: "비밀번호는 {0} 글자이하입니다."
					},
					m_password_acc : {
					    required : '비밀번호를 입력하세요',
					    equalTo:'비밀번호와 비밀번호 확인은 일치하여야 합니다'
					},
					m_phone:{
						required: "휴대폰 번호는 '01012345678' 형식으로 입력해주세요"
					},
					m_birth:{
						required: "생년월일은 '990101 형식으로 입력해주세요"
					},
					m_email:{
						required: "이메일을 입력해 주세요",
						email:'이메일 형식이 맞지않습니다.'
					},
					m_gender:{
						required: "성별을 선택해주세요"
					},
					m_address:{
						required: "주소를 입력해주세요"
					}
				},
				errorClass:'error',
				validClass:'valid'
	});
	
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
var h12 = '';
var h13 = '';

$.ajax({
	url:'mypage_form',
	method:'POST',
	dataType:'json',
	success:function(jsonResult){
		$('#mypage_form').html(mypage_form(jsonResult.data[0]));
		for(var i=0; i<jsonResult.p.length; i++){
			h12 += purchase(jsonResult.p[i], jsonResult.b_p[i]);
		}
		for(var i=0; i<jsonResult.s.length; i++){
			h13 += purchase(jsonResult.s[i], jsonResult.b_s[i]);
		}
		$('#purchase').html(h12);
		$('#sell').html(h13);
	}
});


$(document).on('click', '#mypage_info', function(e){
	$.ajax({
		url:'mypage_form',
		method:'POST',
		dataType:'json',
		success:function(jsonResult){
			$('#fff').html(mypage_info(jsonResult.data[0]));
		}
	});
	e.preventDefault();
});
	$(document).on('click','#modify' ,function(e){
		
		$.ajax({
		    url:'modify_form',
		    method:'POST',
		    dataType:'json',
		    success:function(jsonResult){
		    	$('#fff').html(modify_form(jsonResult.data));
		    	/**********************/
		    	validator = $('#modi_form').validate({
			 		rules:{
			 			m_id:{
			 				required:true,
			 				minlength:6,
			 				maxlength:12
			 			}
			 		},
			 		messages:{
			 			m_id:{
			 				required:'아이디를 입력하세요',
			 				minlength:'아이디는 {0}글자 이상 입니다.',
			 				maxlength:'아이디는 {0}글자 이하 입니다.'
			 			}
			 		},
			 		errorClass:'error',
			 		validclass:'valid',
			 		submitHandler: function(form) {
			 		  
			 			
				 		 $.ajax({
				 		    url:'modify_action',
				 		    method:'POST',
				 		    data:$('#modi_form').serialize(),
				 		    success:function(jsonResult){
				 		    	if(jsonResult.code == 1){
				 		    	alert('정보수정이 완료되었습니다.');
				 		    	location.href="mypage";
				 		    	}else if(jsonResult.code == 0){
				 		    	alert('정보수정이 실패되었습니다.');
				 		    	}
				 		    }
				 		});
			 			
			 		 }
			 		
			 	});
		    	/**********************/
		    }
		});
		
		
		
		//e.preventDefault();
	});	
	
$(document).on('click', '#ppp', function(e){
	

	 $.ajax({
		    url:'List_p_s',
		    method:'POST',
		    success:function(jsonResult){
		    	$('#fff').html(purchase_form());
				for(var i=0; i<jsonResult.p.length; i++){
					h12 += purchase(jsonResult.p[i], jsonResult.b_p[i]);
				}
				
				$('#content').html(h12);
	
		    	}
		 });
	 e.preventDefault();
	});
	
$(document).on('click', '#sss', function(e){
	

	 $.ajax({
		    url:'List_p_s',
		    method:'POST',
		    success:function(jsonResult){
		    	$('#fff').html(sell_form());
		    	for(var i=0; i<jsonResult.s.length; i++){
					h13 += purchase(jsonResult.s[i], jsonResult.b_s[i]);
				}
				$('#content').html(h13);
		    	}
		 });
	 e.preventDefault();
	});

$(document).on('click', '.delete_pd', function(e){
	if(confirm('정말로 삭제하시겠습니까?')){
	var no = $(this).attr('value');
		$.ajax({
		    url:'pd_delete',
		    data:'pd_no='+no,
		    method:'POST',
		    success:function(jsonResult){
		    	if(jsonResult.code==1){
		    		alert(jsonResult.msg);
		    	}else if(jsonResult.code == 2){
		    		alert(jsonResult.msg);
		    	}else if(jsonResult.code == 3){
		    		alert(jsonResult.msg);
		    	}else{
		    		alert('비정상적 접근입니다.');
		    	}
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

	<!-- Offcanvas Menu Begin -->
    <div id="top_content">
    <jsp:include page="top.jsp" />
    </div>

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
                                                    <li><a href="" id="mypage_info">프로필정보</a></li>
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
                
    <div class="col-lg-9" >
     <div class="row" id="fff">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item" style="margin-left: 60px;">
                            <img style="height: 170px; width: 170px" class="product__item__pic set-bg" src="img/mypage_img.png" alt="">
                
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class=" set-bg" id="mypage_form">
                                    
                                    <ul>
			                            <li>
			                                <h4></h4>
			                                <p><br></p>
			                            </li>
			                            <li>
			                                <h4>${member.m_id}</h4>
			                                <p>${member.m_email}<br></p>
			                            </li>
                        			</ul>
                                    <div class="">
                                    <h4></h4>
                                    <h5></h5>
                                    <button  class="primary-btn">프로필수정</button>
                                
                                </div> 
                                </div>
                                
                            </div>
                        </div>
             <div>
                                    <div class="section-title">
                                            <h4>구매내역</h4>
			                       </div>
                        </div>
                        <div class="col-lg-12 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class=" set-bg" >
                                    <!---start----> 
                                    <div class="shopping__cart__table">
				                        <table>
				                            <thead>
				                                <tr>
				                                    <th>이미지</th>
				                                    <th>이름</th>
				                                    <th>가격</th>
				                                    <th>신청일</th>
				                                    <th>종료일</th>
				                                    <th>상태</th>
				                                    <th>비고<th>
				                                    
				                                </tr>
				                            </thead>
				                            <tbody id="purchase">
				                                <tr>
				                                    <td class="product__cart__item">
				                                        <div class="">
				                                            <img src="./img/shopping-cart/cart-1.jpg" alt="">
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                            <h6>T-shirt</h6>
				                                           
				                                        </div>
				                                    </td>
				                                     <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                           
				                                            <h5>${productDetail.pd_price}</h5>
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                            <h5>10/12</h5>
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item"> 
				                                    	<div class="product__cart__item__text">
				                                            <h5>10/15</h5>
				                                        </div></td>
				                                    <td class="product__cart__item">
				                                    	 <div class="product__cart__item__text">
				                                            <h5>입찰중</h5>
				                                        </div>
				                                    </td>
				                                </tr>
				                                
				                            </tbody>
				                        </table>
                    				</div>
                                    <!-- end -->
                       
                                    <!-- end -->
                                </div>
                                
                            </div>
                        </div>
                        <div>
                                   <div class="section-title">
                                            <h4>판매내역</h4>
			                      </div>
                        </div>
                        <div class="col-lg-12 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="set-bg" >
                                    <!---start----> 
                                    <div class="shopping__cart__table">
				                        <table>
				                            <thead>
				                                <tr>
				                                    <th>이미지</th>
				                                    <th>이름</th>
				                                    <th>가격</th>
				                                    <th>신청일</th>
				                                    <th>종료일</th>
				                                    <th>상태</th>
				                                    <th>비고<th>
				                                </tr>
				                            </thead>
				                            <tbody id="sell">
				                                <tr>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__pic">
				                                            <img src="img/shopping-cart/cart-1.jpg" alt="">
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                            <h6>T-shirt</h6>
				                                           
				                                        </div>
				                                    </td>
				                                     <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                           
				                                            <h5>$98.49</h5>
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                            <h5>10/12</h5>
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item"> 
				                                    	<div class="product__cart__item__text">
				                                            <h5>10/15</h5>
				                                        </div></td>
				                                    <td class="product__cart__item">
				                                    	 <div class="product__cart__item__text">
				                                            <h5>입찰중</h5>
				                                        </div>
				                                    </td>
				                                </tr>
				                                
				                            </tbody>
				                        </table>
                    				</div>
                                    <!-- end -->
                                </div>
                                
                            </div>
                        </div>
    
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

    <!-- Footer Section Begin -->
    <jsp:include page="footer.jsp" />
    <!-- Footer Section End -->

 

    <!-- Js Plugins -->
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