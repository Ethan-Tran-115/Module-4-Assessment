<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Daily Gas Usage Form</title>
</head>
<script>
function validateForm() {
    var mpg = document.forms["gasForm"]["mpg"].value;
    var distance = document.forms["gasForm"]["distance"].value;
    
    if (mpg === "" || isNaN(mpg) || mpg <= 0) {
        alert("Please enter a valid MPG value.");
        return false;
    }
    
    if (distance === "" || isNaN(distance) || distance <= 0) {
        alert("Please enter a valid distance value.");
        return false;
    }
    
    return true;
}
</script>
<body>
	<h1>Calculate daily gas usage</h1>
    <form name="gasForm" action="dailyGasUsageServlet" method="post" onsubmit="return validateForm()">
        Enter your car's MPG:
        <input type="text" name="mpg" size="10"><br/>
        Enter the distance from home to work (miles):
        <input type="text" name="distance" size="10"><br/>
        <input type="submit" value="Calculate Gas Usage" />
    </form>
</body>
</html>