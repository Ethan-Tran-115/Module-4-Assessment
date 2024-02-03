<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result 1</title>
</head>
<body>
	<h1>Result 1</h1>
    <p>Total gallons of gas used for one day: ${String.format("%.2f", gasCalculator.dailyGasUsage)} Gallon(s)</p>
    
    <!-- Pass the dailyGasUsage to form2 -->
    <form action="form2.jsp" method="post">
        <input type="hidden" name="dailyGasUsage" value="${String.format('%.2f', gasCalculator.dailyGasUsage)}" />
        <input type="submit" value="Go to Form 2 to calculate gas monthly payment" />
    </form>

    <p><a href="index.jsp">Back to Home</a></p>
</body>
</html>