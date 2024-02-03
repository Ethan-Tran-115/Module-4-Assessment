<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>From 2</title>
</head>
<body>
	<h1>Calculate Monthly Gas Payment</h1>
    
    <form action="Form2Servlet" method="post">
        Enter number of work days in a month:
        <input type="text" name="workDays" size="10" required><br/>
        Enter gas price per gallon:
        <input type="text" name="gasPrice" size="10" required><br/>
        
        <input type="hidden" name="dailyGasUsage" value="${param.dailyGasUsage}" />

        <input type="submit" value="Calculate Monthly Gas Payment" />
    </form>
</body>
</html>