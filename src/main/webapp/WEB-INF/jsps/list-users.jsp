<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List users</title>
	
	<!-- reference style sheet -->

	<c:url value="/css/style.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Sankore Web Application</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- Add User -->
		
			<input type="button" value="Add user"
				   onclick="window.location.href='addUserForm'; return false;"
				   class="add-button"
			/>
			<%--<a href="addUserForm">View All</a>--%>
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Gender</th>
				</tr>
				
				<!-- loop over and print users -->
				<c:forEach var="tempUser" items="${users}">
				
					<!-- construct an "update" link with user id -->
					<c:url var="updateLink" value="/updateUserForm">
						<c:param name="userId" value="${tempUser.id}" />
					</c:url>					

					<!-- construct an "delete" link with user id -->
					<c:url var="deleteLink" value="/delete">
						<c:param name="userId" value="${tempUser.id}" />
					</c:url>					
					
					<tr>
						<td> ${tempUser.firstName} </td>
						<td> ${tempUser.lastName} </td>
						<td> ${tempUser.gender} </td>
						
						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
							|
							<a href="${deleteLink}"
							   onclick="if (!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a>
						</td>
						
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	

</body>

</html>









