<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Monthly Gas Payment Form</title>
<script>
function validateForm() {
    var workDays = document.forms["gasForm"]["workDays"].value;
    var gasPrice = document.forms["gasForm"]["gasPrice"].value;
    
    if (workDays === "" || isNaN(workDays) || workDays <= 0) {
        alert("Please enter a valid number of work days.");
        return false;
    }
    
    if (gasPrice === "" || isNaN(gasPrice) || gasPrice <= 0) {
        alert("Please enter a valid gas price.");
        return false;
    }
    
    return true;
}
</script>
</head>
<body>
	<h1>Calculate Monthly Gas Payment</h1>

    <form name="gasForm" action="monthlyGasPaymentServlet" method="post" onsubmit="return validateForm()">
        Enter number of work days in a month:
        <input type="text" name="workDays" size="10" required><br/>
        Enter gas price per gallon:
        <input type="text" name="gasPrice" size="10" required><br/>
        
        <input type="hidden" name="dailyGasUsage" value="${param.dailyGasUsage}" />

        <input type="submit" value="Calculate Monthly Gas Payment" />
    </form>
</body>
</html>