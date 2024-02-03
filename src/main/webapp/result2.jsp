<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result 2</title>
</head>
<body>
	<h1>Result 2</h1>
    <p>Monthly gas payment: $${String.format("%.2f", gasCalculatorResult2.monthlyGasPayment)}</p>
    <p><a href="index.jsp">Back to Home</a></p>
</body>
</html>