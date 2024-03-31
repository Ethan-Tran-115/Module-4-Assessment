<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Monthly Gas Payment Result</title>
</head>
<body>
	<h1>Monthly Gas Payment</h1>
    <p>Monthly gas payment: $${String.format("%.2f", gasCalculatorResult2.monthlyGasPayment)}</p>
    <p><a href="index.jsp">Back to Home</a></p>
</body>
</html>