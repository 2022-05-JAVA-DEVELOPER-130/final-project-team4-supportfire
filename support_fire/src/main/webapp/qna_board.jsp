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
	
	
	var url = window.location.pathname
	$.ajax({
		url:'url_check',
		method:'POST',
		data:'url='+url,
		success:function(jsonResult){
			$('#home').removeClass('active');
			$('#shop').removeClass('active');
			$('#notice').removeClass('active');
		    if(jsonResult.code == 1){
		    	$('#home').addClass('active');
		    }else if(jsonResult.code == 2){
		    	$('#shop').addClass('active');
		    }else if(jsonResult.code == 3){
		    	$('#notice').addClass('active');
		    }else if(jsonResult.code == 4){
		    	$('#qna').addClass('active');
		    }
		   
		}
	});
	
	

$(document).on('click','#slide_p',function(e){
		
		$(e.target).next().slideToggle(500, function(){
			//alert('slideToggle이완료된후 실행하는 function');
		});
		e.preventDefault();
		
	});
	
	$(document).on('click','#qna_write',function(e){
		$.ajax({
			url:'qna_write_form',
			method:'POST',
			success:function(jsonResult){
				$('#write_form').html(qna_write_form(jsonResult.data));
			}
		});
	e.preventDefault();
	
});
	$(document).on('click','#w_list',function(e){
		location.href="qna";
	
});
	
	
	$(document).on('click','#write_action',function(e){
		$.ajax({
			url:'qna_write_action',
			method:'POST',
			data:$('#qna_write_form').serialize(),
			success:function(jsonResult){
				location.href="qna";
			}
		});
	e.preventDefault();
	
});
	$(document).on('click','.reWrite',function(e){
		var val1 = $(this).val();
		var rwf = '.reqna_write_form' + val1;
		$('.reqna_write_form' + val1).html(reqna_form(val1));
		e.preventDefault();
	});
	
	$(document).on('click','#back',function(e){
		$('.reqna_write_form').html(reqna_back());
		e.preventDefault();
	});
	
	$(document).on('click','.reWrite_action',function(e){
		var val2 = $(this).val();
		console.log(val2);
		$.ajax({
			url:'reqna_write_action',
			method:'POST',
			data:'rq_content=' + $('#rq_content'+val2).val() + '&q_no=' + val2,
			success:function(jsonResult){
				location.href="qna";
			}
		});
		e.preventDefault();
	});
	
	$(document).on('click','.qnaDelete',function(e){
		var val3 = $(this).val();
		if(confirm('정말로 삭제하시겠습니까?')){
			$.ajax({
				url:'qna_delete_action',
				method:'POST',
				data:'&q_no=' + val3,
				success:function(jsonResult){
					location.href="qna";
				}
			});
		}else{
			
		}
		
		
		e.preventDefault();
	});
	
	
	
});
</script>
<style type="text/css">
  .hiden {
  	display: none;
  	text-align: left;
  }
  
   ul{
  list-style:none;
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
 }
    
   .write input{
	width: 100%;
			padding: 10px;
			box-sizing: border-box;
			border: solid 2px #1E90FF;
			border-radius: 5px;
			font-size: 16px;
			resize: both;
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

table{
	color: black;
	border-color: black!important;
}

#q_content{
	width: 100%;
	resize: none; /* 사용자 임의 변경 불가 */
			height: 400px;
			padding: 10px;
			box-sizing: border-box;
			border: solid 2px #1E90FF;
			border-radius: 5px;
			font-size: 16px;
			resize: both;

}



 .butt{
	margin-top: 10px;
	float: right;
	width: 80px;
	margin-right: 10px;
	height: 40px;
	color: white;
	
}
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
  	        <jsp:include page="header.jsp" />
    <!-- Header Area End -->
    <div>
    <!-- Breadcumb Area -->
   <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>QNA</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.jsp">QNA</a>
                            <span>QNA</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcumb Area -->

    <div class="shortcodes_area" id="write_form">
        <div class="container">
            <div class="row">
                <div class="col-12" style="margin-top: 50px;">
                    <div class="shortcodes_title mb-30">
                        <h3 style="margin-bottom: 20px;"><strong>QNA</strong></h3>
                    </div>
                    <div class="shortcodes_content">
                        <div class="table-responsive">
                            <table class="table mb-0 table-bordered" id = "head1">
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
		                                      <li>작성자 : <span style="font-size: 12px;">${qna.m_id}</span>
		                                      <li>작성일
		                                      <li style="font-size: 12px;">${qna.q_date}
		                                      <li><br>
		                                      <li>${qna.q_content}
		                                      <br>
		                                      <br><div class="reqna_write_form${qna.q_no}">
		                                      <div style='width:100px;float: right;'> <button type='button' class='btn btn-primary reWrite' value="${qna.q_no}">답변하기</button></div>
		                                      <c:if test="${sUserId == qna.m_id}">
		                                       <div style='width:100px;float: right;'><button type='button' class='btn btn-primary qnaDelete' value="${qna.q_no}">삭제하기</button></div></c:if></div>
		                                      
    		 									</ul>
	                                        </th>
	                                        <th>${qna.q_date.substring(0,10)}</th><th>${qna.m_id}</th>
	                                    </tr>
	                                    </c:if>
	                                    <c:if test="${qna.reQna != null}">
	                                    <tr>
	                                        <th><a href = "qna_view?n_no=${qna.q_no}&pageno=${qnaList.pageMaker.curPage}" id="slide_p" >${qna.q_title}</a>
	                                        <ul class='hiden' >
		                                      <li>작성자 : <span style="font-size: 12px;">${qna.m_id}</span>
		                                      <li>작성일
		                                      <li style="font-size: 12px;">${qna.q_date}
		                                      <li><br>
		                                      <li>${qna.q_content}
		                                      <li><br>
		                                      <hr><br>
		                                      <li>작성일
		                                      <li style="font-size: 12px;">${qna.reQna.rq_date}
		                                      <li><br>
		                                      <li>${qna.reQna.rq_content}
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
            <div style='width:100px;float: right; margin-top: 10px;'><button type='button' class='btn btn-primary' id ='qna_write'>글쓰기</button></div>
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