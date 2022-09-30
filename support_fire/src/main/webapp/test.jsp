<%@page import="com.itwill.dto.ProductDetail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>QNA</title>

<script type="text/javascript">



</script>
<% ProductDetail product = (ProductDetail)request.getAttribute("product"); %>
</head>
<body>
asdsa
<%=product %>
<%=product.getB_no() %>
<%=product.getPd_no() %>
${product}
${product.pd_no}
${product.pd_price}
${product.productSize.ps_no}

</body>
</html>