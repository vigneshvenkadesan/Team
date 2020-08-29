<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

	<style>
		.error
		{
		color: red;
		}
		
	</style>
</head>
<body>

	<h3> Login Page</h3>
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST" >
	
	
	<!-- Check login page -->
	<c:if test="${param.error!=null}" >
		<i class="error"> Sorry!.. Wrong Credentials</i>
	</c:if>
		
	
	<p>
	
	Username: <input type="text" name="username"> 
	</p>
	
	<p>
	Password: <input type="text" name="password"> 
	</p>

	<input type="submit" value="login-form"/>
	
	</form:form>
	
</body>
</html>