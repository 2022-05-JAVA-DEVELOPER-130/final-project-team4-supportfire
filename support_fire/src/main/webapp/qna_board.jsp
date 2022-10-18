<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 
<jsp:useBean id="toDay" class="java.util.Date" />
<fmt:formatDate var="to_date" value='${toDay}' pattern='yyyy-MM-dd' />
<fmt:formatDate var="q_date" value='${qna.q_date}' pattern='yyyy-MM-dd' />
 -->

<!doctype html>
<html lang="en">

<head>
   <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- include_common_top -->
	
    <!-- include_common_top -->
    
     <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">
     <!-- Style CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <script type="text/javascript" src="js/top_content.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
	
	<!-- javaScript -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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

$(document).on('click','#slide_p',function(e){
		
		$(e.target).next().slideToggle(500, function(){
			//alert('slideToggle이완료된후 실행하는 function');
		});
		e.preventDefault();
		
	});

</script>
<style type="text/css">
  .hiden {
  	display: none;
  }
  
   ul{
  list-style:none;
  text-align: left;
   }
table, td, th {
  border : 1px solid black;
  border-collapse : collapse;
}
table {
  width : 300px;
  height : 200px;
}
th, td {
  text-align: center;
}

a:hover, a:focus {
    text-decoration: none;
    outline: none;
    color: blue;
</style>

</head>

<body>
    <!-- Page Preloder -->

    <!-- Preloader -->
    <!-- 
    <div id="preloader">
        <div class="spinner-grow" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
	 -->
	 
    <!-- Header Area -->
     <div id="top_content">
    <jsp:include page="top.jsp" />
    </div>
    <!-- include_common_header.jsp start-->

		<!-- include_common_header.jsp end-->
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
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="shop">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="./about.jsp">About Us</a></li>
                                    <li><a href="./shop-details.jsp">Shop Details</a></li>
                                    <li><a href="./shopping-cart.jsp">Shopping Cart</a></li>
                                    <li><a href="./checkout.jsp">Check Out</a></li>
                                    <li><a href="./blog-details.jsp">Blog Details</a></li>
                                </ul>
                            </li>
                            <li class="active"><a href="notice_list">Notice</a></li>
                            <li><a href="./contact.jsp">Contacts</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
                        <a href="#"><img src="img/icon/heart.png" alt=""></a>
                        <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
                        <div class="price">$0.00</div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    <!-- Header Area End -->
    
    <!-- Breadcumb Area -->
   <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>QNA</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.jsp">Home</a>
                            <span>QNA</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcumb Area -->

    <div class="shortcodes_area section_padding_100">
        <div class="container">
            <div class="row">
                <div class="col-12" style="margin-top: 50px;">
                    <div class="shortcodes_title mb-30">
                        <h3 style="margin-bottom: 20px;"><strong>QNA</strong></h3>
                    </div>
                    <div class="shortcodes_content">
                        <div class="table-responsive">
                            <table class="table mb-0 table-bordered">
                                <thead>
							            <tr>
							                <th width="800px">제목</th>
							                <th width="150px">작성일</th>
							                <th width="150px">작성자</th>
							            </tr>
							        </thead>
                                <tbody id="notice_list_tbody">
                                
                                	<!-- board start -->
                                	<c:forEach var="qna" items="${qnaList.itemList}">
                                	 <c:if test="${qna.reQna == null}">
	                                    <tr>
	                                        <th>
	                                        <a href = "qna_view?n_no=${qna.q_no}&pageno=${qnaList.pageMaker.curPage}" id="slide_p">${qna.q_title}</a>
	                                        <ul class='hiden'>
		                                      <li>작성자 : ${qna.m_id}
		                                      <li>작성일 ${qna.q_date}
		                                      <li>내용 : ${qna.q_content}
		                                      <br>
		                                      <br>
		                                      <div style='width:100px;float: right;'> <button type='button' class='btn btn-primary' id = 'reWrite'>답변하기</button></div>
    		 									</ul>
	                                        </th>
	                                        <th>${qna.q_date.substring(0,10)}</th><th>${qna.m_id}</th>
	                                    </tr>
	                                    </c:if>
	                                    <c:if test="${qna.reQna != null}">
	                                    <tr>
	                                        <th><a href = "qna_view?n_no=${qna.q_no}&pageno=${qnaList.pageMaker.curPage}" id="slide_p">${qna.q_title}</a>
	                                        <ul class='hiden'>
		                                      <li>작성자 : ${qna.m_id}
		                                      <li>작성일 : ${qna.q_date}
		                                      <li>내용 : ${qna.q_content}
		                                      <li><br>
		                                      <hr><br>
		                                      <li>작성일 : ${qna.reQna.rq_date}
		                                      <li>내용 : ${qna.reQna.rq_content}
    		 									</ul>
	                                        </th>
	                                        <th>${qna.q_date.substring(0,10)}</th><th>${qna.m_id}</th>
	                                    </tr>
	                                    </c:if>
                                    </c:forEach>
                                   <!-- board end -->
                 
                                </tbody>
                            </table>
						
                        </div>
                    </div>
					
                </div>
            </div>
            
            <div class="row justify-content-center">
                <div class="col-12 col-lg-9">
                    <!-- Shop Pagination Area -->
                    <div class="shop_pagination_area mt-5">
                        <nav aria-label="Page navigation">
                            <ul class="pagination pagination-sm justify-content-center">

                            	<c:if test="${qnaList.pageMaker.prevPage > 0}">  
	            					<li class="page-item">
	                                    <button class="page-link" onclick="changeQnaList(${data.pageMaker.prevPage});"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
	                               	 </li>
                                </c:if>
                                <c:forEach var="no" begin="${qnaList.pageMaker.blockBegin}" end="${qnaList.pageMaker.blockEnd}">
									<c:if test="${qnaList.pageMaker.curPage == no}">
										<li class="page-item active"><button class="page-link" href="#">${no}</button></li>
									</c:if>
									<c:if test="${qnaList.pageMaker.curPage != no}">
										<li class="page-item"><button class="page-link page" onclick="changeQnaList(${no})">${no}</button></li>
									</c:if>
                                </c:forEach>
                                <c:if test="${qnaList.pageMaker.curPage < qnaList.pageMaker.totPage}">  
	                                <li class="page-item">
				                        <button class="page-link" onclick="changeQnaList(${qnaList.pageMaker.nextPage})"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
			                    	 </li>
                                </c:if>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            
            
            
         </div>
    </div>
    <br>     
    <div>
    <jsp:include page="footer.jsp" />
    </div>
    <!-- Footer Area -->
    	<!-- include_common_bottom.jsp start-->
		
		<!-- include_common_bottom.jsp end-->
    <!-- Footer Area -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/qna_content.js"></script>
    
	<!--
	
	  -->
</body>

</html>