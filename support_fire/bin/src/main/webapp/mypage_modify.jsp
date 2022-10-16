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
    
<script type="text/javascript">
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













});
</script>    

<style type="text/css">

hr{
width: 700px;
height: 5;
}

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

.error{
	margin-left: 60px;

}

</style>
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
                        <h4>마이페이지</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.jsp">Home</a>
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
                                                    <li><a href="mypage_purchase_list.jsp">구매내역</a></li>
                                                    <li><a href="mypage_sell_list.jsp">판매내역</a></li>
                                                   
                                                    
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
                                                    <li><a href="#">아이디</a></li>
                                                    <li><a href="#">이메일</a></li>
                                                  
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
     <div class="row">
                        
                        
             <div>
                  <div class="section-title">
                      <h4 style="font-weight: 900">회원정보수정</h4>
			     </div>
               <hr>
    		</div>
    
                                    <!---start----> 
   <div>
        <div class="container">
                    <div class="contact__form">
                        <form action="#">
                            <div class="row">
                                <div>
		                            <span>아이디</span><input type="text" name="m_id" id="m_id" placeholder="ID" value="tester"><font id="msg_id" color="red"></font>
                                    <span>비밀번호</span><input type="password" name="m_password" id="m_password" placeholder="password" value="1234">
                                    <span>비밀번호 확인</span><input type="password" name="m_password_acc" placeholder="password" value="1234">
                                    <span>이름</span><input type="text" name="m_name" id="m_name" placeholder="ex) 홍길동" value="테스터">
                                    <span>핸드폰 번호</span><input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" name="m_phone" id="m_phone" placeholder="ex) 01012345678" value="01011112222">
                                    <span>생년월일</span><input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" name="m_birth" id="m_birth" placeholder="ex) 970902" value="990101">
                                    <span>이메일</span><input type="text" name="m_email" id="m_email" placeholder="Email" value="test@naver.com">
                                    <span>주소</span><input type="text" name="m_address" id="m_address" placeholder="address" value="서울시">
									<div></div>
                                </div>
                                <div class="col-lg-12">
                                    <button type="submit" class="site-btn" style="margin-top: 50px; margin-left: 260px;">정보 수정</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>
                                    <!-- end -->
                       
                                    <!-- end -->
                                
                               
                                
                     
                    
    <!-- Shop Section End -->

    <!-- Footer Section Begin -->
    <jsp:include page="footer.jsp" />
    <!-- Footer Section End -->

 

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