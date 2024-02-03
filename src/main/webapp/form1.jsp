<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form 1</title>
</head>
<body>
	<h1>Calculate daily gas usage</h1>
    <form action="Form1Servlet" method="post">
        Enter your car's MPG:
        <input type="text" name="mpg" size="10"><br/>
        Enter the distance from home to work (miles):
        <input type="text" name="distance" size="10"><br/>
        <input type="submit" value="Calculate Gas Usage" />
    </form>
</body>
</html>