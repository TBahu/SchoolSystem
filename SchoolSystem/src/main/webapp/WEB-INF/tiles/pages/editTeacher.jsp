<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div>


	<h2>Zmiena danych dla Nauczyciela</h2>
	<spring:url value="/editTeacher" var="editTeacher" htmlEscape="true" />
	<sf:form method="POST" modelAttribute="teacher" action="${editTeacher}">
		<fieldse>
		<table cellspacing="0">

			<tr>
				<td><sf:input path="id" id="id" type="hidden" /></td>
				<td><sf:errors path="id" cssClass="error" /></td>
			</tr>
			<tr>
				<th><label for="username">Nazwa użytkownika</label></th>
				<td><sf:input path="username" id="username" /></td>
				<td><sf:errors path="username" cssClass="error" /></td>
			</tr>
			<tr>
				<th><label for="password">Hasło</label></th>
				<td><sf:input path="password" id="password" /></td>
				<td><sf:errors path="password" cssClass="error" /></td>
			</tr>
			<tr>
				<th><label for="name">Imię</label></th>
				<td><sf:input path="name" id="name" /></td>
				<td><sf:errors path="name" cssClass="error" /></td>
			</tr>
			<tr>
				<th><label for="surname">Nazwisko</label></th>
				<td><sf:input path="surname" id="surname" /></td>
				<td><sf:errors path="surname" cssClass="error" /></td>
			</tr>
			<tr>
				<th><label for="email">E-mail</label></th>
				<td><sf:input path="email" id="email" /></td>
				<td><sf:errors path="email" cssClass="error" /></td>
			</tr>
			<tr>
				<th><label for="schoolClass">Klasa</label></th>


				<td><form:select path="schoolClass" id="schoolClass">

						<form:option value="${teacher.schoolClass.id}"> ${teacher.schoolClass.fullName}</form:option>
						<c:forEach var="schoolClass" items="${classes}">
							<c:choose>
								<c:when test="${teacher.schoolClass.id eq schoolClass.id}">

								</c:when>

								<c:otherwise>
									<form:option value="${schoolClass.id}"> ${schoolClass.fullName}</form:option>
								</c:otherwise>
								
							</c:choose>
						</c:forEach>
					</form:select></td>
				<td><sf:errors path="schoolClass" cssClass="error" /></td>
			</tr>
			<tr>
				<th></th>
				<td><input name="commit" type="submit" value="Edytuj" /></td>
			</tr>
		</table>
		</fieldse>
	</sf:form>
	<h4>${message}</h4>

</div>