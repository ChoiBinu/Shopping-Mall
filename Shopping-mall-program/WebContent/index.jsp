<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 프로그램</title>
<link rel="stylesheet" href="css/css.css">
</head>
<body>
	<%@include file="common/header.jsp" %>
	<%@include file="common/nav.jsp" %>
	<%@include file="common/footer.jsp" %>

	<%
		String section = request.getParameter("section") != null ? request.getParameter("section"):"";
	
		switch(section) {
		case "sales_all_select":
			%> <%@include file="section/sales_all_select.jsp" %> <%
			break;
		case "sales_by_category":
			%> <%@include file="section/sales_by_category.jsp" %> <%
			break;
		case "sales_by_product":
			%> <%@include file="section/sales_by_product.jsp" %> <%
			break;
		case "sales_create":
			%> <%@include file="section/sales_create.jsp" %> <%
			break;
		default:
			break;
		}
	%>
</body>
</html> 