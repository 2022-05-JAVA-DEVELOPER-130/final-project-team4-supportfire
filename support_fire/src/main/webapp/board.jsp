<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>QNA</title>
<meta charset="utf-8">
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
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
    <link rel="stylesheet" href="css/test.css" type="text/css">
    
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  
  </style>
<script type="text/javascript">
$(document).ready(function() {
    $("#writeBtn").click(function(){
    	location.href ="write";
    })
    $.ajax({
    	url: "boardList", 
    	success: function(result){             
        var html = "";
    	result.forEach(function(item){
    		html+= "<tr> <td><a href = 'view?idx=" + item.q_no + "'>" + item.q_title + "</a>" +
        			"<ul class='hide'>" +
        			"<br><br><br>" +
        			"<li>" + item.q_date.substring(0,10) + "</li>" +
        			"<li>" + item.q_content + "</li>"
        			
        			
        			
        })
       $("#listArea").append(html)
       $('#example').DataTable();
     }});
     $("#deleteBtn").click(function(){
    	location.href ="write";
     })
} );

</script>
</head>
<body>
<div>
<jsp:include page="header.jsp" />
</div>
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Q&A</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.html">Q&A</a>
                            <span>Q&A</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<div class="container" style="margin-top:30px">
	<div class="row">
		<div class="col-sm-12">
			<table id="example" class="display" style="width:100%">
		        <thead>
		            <tr>
		                <th>제목</th>
		            </tr>
		        </thead>
		        <tbody id = "listArea">
		        </tbody>
		    </table>
			<button type="button" class="btn btn-primary" id = "writeBtn">글쓰기</button>
		</div>
	</div>
</div>
</body>
</html>