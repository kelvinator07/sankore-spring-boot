<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save user</title>

	<c:url value="/css/style.css" var="jstlCss" />
	<c:url value="/css/add-user-style.css" var="jstlCsss" />
	<link href="${jstlCss}" rel="stylesheet" />
	<link href="${jstlCsss}" rel="stylesheet" />

</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Sankore Spring Boot Web Application</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save user</h3>
	
		<form:form action="saveUser" modelAttribute="user" method="POST">

			<!-- associate this data with current user id -->
			<form:hidden path="id" />
			<%--<form:errors path="*" cssClass="errorblock" element="div" />--%>
			<table>
				<tbody>
					<tr>
						<td><form:label path="firstName">First name:</form:label></td>
						<td><form:input path="firstName" /></td>
						<td><form:errors path="firstName" cssClass="error" /></td>
					</tr>
				
					<tr>
						<td><form:label path="lastName">Last name:</form:label></td>
						<td><form:input path="lastName" /></td>
						<td><form:errors path="lastName" cssClass="error" /></td>
					</tr>

					<tr>
						<td><form:label path="gender">Gender:</form:label></td>
						<td>Male<form:radiobutton path="gender" value="male"/></td>
						<td>Female<form:radiobutton path="gender" value="female"/></td>
						<td><form:errors path="gender" cssClass="error" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>

		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="/users/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>