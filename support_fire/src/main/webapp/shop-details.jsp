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
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/series-label.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
		
	
	

<style type="text/css">
.btn{
	width : 35%;
	border-radius: 10px;
  	padding-top: 10px;
	height: 50px;
	margin-top: 10px;
	
}

.btn-danger{
	background-color: #ef6253;
}

.btn-success{
	background-color: #41b979;
	margin-left: 30px;
}

#aas{
 	display: inline-block;
 	margin-left: 10px;
	
}


</style>

<script type="text/javascript">
$(function(){
	
	$.ajax({
		url:'session_check',
		method:'POST',
		dataType:'json',
		success:function(jsonResult){
		    	var member = jsonResult.data;
			 	$('#top_content').html(login_top(member));
		    
		   
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
	a = v.replace('?', '');
	
	$.ajax({
		url:'graph',
		method:'POST',
		data:a,
		success:function(jsonResult){
			var pricee = function() {
		        var data1 = [];
		        for (var i=0; i<jsonResult.data.length; i++) {
		          data1.push(jsonResult.data[i].pd_price)
		        }
		        return data1;
		     }
			var date = function() {
		        var data1 = [];
		        for (var i=0; i<jsonResult.data.length; i++) {
		          data1.push(jsonResult.data[i].pd_start.substring(0,10))
		        }
		        return data1;
		     }
			Highcharts.chart('container', {
				
			    title: {
			        text: '시세'
			    },
			
			    subtitle: {
			        text: '<a href="" target="_blank"></a>'
			    },
			
			    yAxis: {
			        title: {
			            text: '가격'
			            
			        }
			    },
			
			    xAxis: {
			    	categories:date()
			    },
			
			    legend: {
			        layout: 'vertical',
			        align: 'right',
			        verticalAlign: 'middle'
			    },
			
			   
			
			       series: [{
			        name: '',
			        data: pricee()
			    }],
			
				
			   
			    
			    responsive: {
			        rules: [{
			            condition: {
			                maxWidth: 500
			            },
			            chartOptions: {
			                legend: {
			                    layout: 'horizontal',
			                    align: 'center',
			                    verticalAlign: 'bottom'
			                }
			            }
			        }]
			    }
            
				});
			}
		
		
	});
	
});
</script>
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

    <!-- Shop Details Section Begin -->
    <section class="shop-details">
        <div class="product__details__pic">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__details__breadcrumb">
                            <a href="main">Home</a>
                            <a href="./shop">Shop</a>
                            <span>${product.p_name}</span>
                        </div>
                    </div>
                </div>
               
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        
                    </div>
       
                    <div class="col-lg-6 col-md-9">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="img/product/${product.p_image}" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="img/product/${product.p_image}" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="img/shop-details/product-big.png" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-4" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="img/shop-details/product-big-4.png" alt="">
                                    <a href="https://www.youtube.com/watch?v=8PJ3_p7VqHw&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup"><i class="fa fa-play"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
            
                </div>
            </div>
        </div>

        <div class="product__details__content">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="product__details__text">
                            <h4>${product.p_name}</h4>
                            
                            <div class="shopping__cart__table">
                            <table>
                          		  <thead>
				                        <tr>
		                                    <th>브랜드</th>
		                                    <th>출시일</th>
		                                    <th>발매가</th>
		                                    <th>상태</th>
		                                </tr>
				                  </thead>
				            </table>
				            </div>
				            <div class="shopping__cart__table">
				             <table>
                          		  <thead>
				                        <tr>
		                                    <th>${brand.br_name}</th>
		                                    <th>${product.p_date}</th>
		                                    <th>${product.p_price}</th>
		                                    <th>상태</th>
				                        </tr>
				                  </thead>
				            </table>
				            </div>
				            
				            <!-- 그래프시세 -->
				            <figure class="highcharts-figure">
							    <div id="container"></div>
							    <p class="highcharts-description">
							        
							        <code></code> 
							    </p>
							</figure>
							<!-- ------ -->				            
				            
				            
				            
                            <div class="product__details__option">
                                
                                
                            </div>
                            <div class="product__details__cart__option" id ="aad">
                                <a href="product_sizes?p_no=${product.p_no}&bt_no=1&c_no=1" class="btn btn-danger">
                                <strong>구매</strong>
                                <div id="aas"><span style="font-size: 12px;"><strong>${sellmin.get('min_price')}</strong></span></div>
                                </a>
                                <a href="product_sizes?p_no=${product.p_no}&bt_no=2&c_no=1" class="btn btn-success">
                                <strong>판매</strong>
                                <div id="aas"><span style="font-size: 12px;"><strong>${buymin.get('min_price')}</strong></span></div>
                                </a>
                                
                            </div>
                            <div class="product__details__btns__option">
                                <a href="#"><i class="fa fa-heart"></i> add to wishlist</a>
                                <a href="#"><i class="fa fa-exchange"></i> Add To Compare</a>
                            </div>
                            
                        </div>
                    </div>
                </div>
                
                </div>
            </div>
        </div>
       
    </section>
    <!-- Shop Details Section End -->

    <!-- Related Section Begin -->
   
    <!-- Related Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="" alt=""></a>
                        </div>
                        <p>The customer is at the heart of our unique business model, which includes design.</p>
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
                            <p>Be the first to know about new arrivals, look books, sales & promos!</p>
                            <form action="#">
                                <input type="text" placeholder="Your email">
                                <button type="submit"><span class="icon_mail_alt"></span></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer__copyright__text">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright ©
                            <script>
                                document.write(new Date().getFullYear());
                            </script>2020
                            All rights reserved | This template is made with <i class="fa fa-heart-o"
                            aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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