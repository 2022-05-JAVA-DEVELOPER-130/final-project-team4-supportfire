<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>	
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
		    if(jsonResult.code == 1){
		    	$('#home').addClass('active');
		    }else if(jsonResult.code == 2){
		    	$('#shop').addClass('active');
		    }else if(jsonResult.code == 3){
		    	$('#notice').addClass('active');
		    }
		   
		}
	});
});

</script>

<style type="text/css">
  .hiden {
  	display: none;
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

table{
	width: 100%;
	resize: none; /* 사용자 임의 변경 불가 */
			height: 400px;
			padding: 10px;
			box-sizing: border-box;
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

.btn{
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
    <!-- Header Area -->
  	 <div id="top_content">
    <jsp:include page="top.jsp" />
    </div>
 <jsp:include page="header.jsp" />
    <!-- Header Area End -->
    
    <!-- Breadcumb Area -->
   <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>NoticeView</h4>
                        <div class="breadcrumb__links">
                            <a href="notice_list">Notice</a>
                            <span>NoticeView</span>
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
                <div class="col-12">
                    <div class="shortcodes_title mb-30">
                        <h4>공지사항 상세보기</h4>
                    </div>
                    <div class="shortcodes_content">
                        <div class="table-responsive">
                            <table class="table mb-0 table-bordered">
                                <thead>
                                    <tr>
	                                	<th>제목</th>
	                                	<th>날짜</th>
	                                	<th>조회수</th>
	                                </tr>
                                    <tr>
                                        <th scope="col" class="board_title">${notice.n_title}</th>
                                        <th scope="col" class="board_date">${notice.n_date}</th>
                                        <th scope="col" class="board_count">${notice.n_count}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td id="notice_content_td" colspan="3">${notice.n_content}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    	<div id="notice_btn_container">
							<input class="btn btn-primary notice_btn list" type="button" pageno="${pageno}" value="목록" />
                    	</div>
                </div>
            </div>
            
         </div>
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
    
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="js/board.js" defer></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	

</body>

</html>