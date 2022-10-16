<%@page import="com.itwill.dto.ProductDetail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>QNA</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		$.ajax({
			url : "payment_modify_form",
			data: "pm_no=1",
			
			success : function(result) {
				console.log(result);
				
			
			}

		});
		
	});
</script>
</head>
<body>
  
  
</body>
</html>
