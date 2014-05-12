<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>

	<h2>Dodaj Przedmiot</h2>
	<spring:url value="/editSubject" var="editSubject" htmlEscape="true"></spring:url>
	<sf:form modelAttribute="subject" method="POST" action="${editSubject}">
		<table>
		<tr>
				<td><sf:input path="id" id="id" type="hidden" /></td>
			</tr>
		
			<tr>
				<th><sf:label path="name">Nazwa przedmiotu</sf:label></th>
				<td><sf:input path="name" id="name" /></td>
				<td><sf:errors path="name" cssClass="error"></sf:errors></td>
			</tr>
			</tr>
						<tr>
				<th><label for="subClass">Klasa</label></th>
				<td>
				<sf:select path="subClass" id="subClass">
					  <sf:option value="-1" label="--- Select ---" />
					  <c:forEach var="sbClass" items="${allClasses}">
                    <option value="${sbClass.id}">${sbClass.fullName}</option>
                </c:forEach>
				       </sf:select>
                                </td>
                                <td><sf:errors path="subClass" cssClass="error" /></td>
			</tr>
			<tr>
			<tr>
				<th></th>
				<td><input name="commit" type="submit" value="Edytuj" /></td>
			</tr>
		</table>
	</sf:form>








</div>