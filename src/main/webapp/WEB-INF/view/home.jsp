<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>Online Test</title>
</head>
<body>
	<h2>Shalom Online Test</h2>
	<p>Welcome back!</p>

	<hr>
	<p>
		User:
		<security:authentication property="principal.username" />
		<br> <br> Role(s):
		<security:authentication property="principal.authorities" />
	</p>

	<hr>
	<!--  only for recruiters -->
	<p>
		<a href="${pageContext.request.contextPath}/recruiters">Recruiters
			Content</a>
	</p>

	<hr>

	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">

		<input type="submit" value="Logout" />

	</form:form>
</body>

</html>