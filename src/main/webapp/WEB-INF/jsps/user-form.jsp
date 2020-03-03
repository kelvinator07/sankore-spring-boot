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
			<h2>Sankore Web Application</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save user</h3>
	
		<form:form action="saveUser" modelAttribute="user" method="POST">

			<!-- need to associate this data with user id -->
			<form:hidden path="id" />
			<%--<form:errors path="*" cssClass="errorblock" element="div" />--%>
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
						<td><form:errors path="firstName" cssClass="error" /></td>
					</tr>
				
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
						<td><form:errors path="lastName" cssClass="error" /></td>
					</tr>

					<tr>
						<td><label>Gender:</label></td>
						<%--<td><form:input path="gender" /></td>--%>
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
			<a href="list">Back to List</a>
		</p>
	
	</div>

</body>

</html>










