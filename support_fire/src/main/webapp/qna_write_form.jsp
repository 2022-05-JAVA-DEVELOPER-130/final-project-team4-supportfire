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
 
 
 input{
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

#qna_content_area{
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

button{
	margin-top: 10px;
	float: right;
	width: 80px;
	margin-right: 10px;
	height: 40px;
	color: white;
	
}

</style>    
    
<script type="text/javascript">
var today = new Date();

var year = today.getFullYear();
var month = ('0' + (today.getMonth() + 1)).slice(-2);
var day = ('0' + today.getDate()).slice(-2);

var dateString = year + '-' + month  + '-' + day;

$(function(){
	$('#today').html(dateString);

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
                        <h4>QNA</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.jsp">QNA</a>
                            <span>글쓰기</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shop Section Begin -->
    <section class="write" style="padding-top: 50px; margin-bottom: 50px;">
                
      <div class="">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="shortcodes_title mb-30">
                        <h4 style="margin-bottom: 50px;"><strong>QNA 글쓰기</strong></h4>
                    </div>
                    <div class="shortcodes_content">
                        <div class="table-responsive">
                        	<form id="notice_write_form" method="post">
	                            <table class="table mb-0 table-bordered"">
	                                <thead>
	                                <tr>
	                                	<th colspan="2">제목</th>
	                                	<th style="text-align: center;">아이디</th>
	                                	<th style="text-align: center;">날짜</th>
	                                </tr>
	                                    <tr>
	                                        <th colspan="2" class="board_title">
	                                        	<input type="text" name="notice_title" id="notice_title_txt" placeholder=" title" />
	                                        </th>
	                                        <th style="width: 150px; text-align: center;">${m_id}</th>
	                                        <th scope="col" class="board_date" id="today" style="width: 150px; text-align: center; padding-bottom: 20px;"></th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                    <tr>
	                                        <td id="notice_content_td" colspan="4">
	                                        	<textarea name="notice_content" id="qna_content_area" placeholder=" content" style="resize: none;"></textarea>
	                                        </td>
	                                    </tr>
	                                </tbody>
	                            </table>
                      				<input type="hidden" name="pageno" value="" />
                			</form>
                        </div>
                    </div>
                    		<div>
								<button class="btn btn-primary" id="write_action" type="button" value="등록" />등록</button>
								<button class="btn btn-primary" id="w_list" type="button"  value="목록" />목록</button>
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