<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Реєстрація | Віртуальна Залізнична Каса</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<div id="wrapper">
		<h1 class="title-text-shadow">Реєстрація нового користувача</h1>
		<h3>
			<c:if test="${not empty passwordNotMatch and passwordNotMatch eq 'true'}">
		      Введені паролі не співпадають
		    </c:if>
		    <c:if test="${not empty userNotCreated and userNotCreated eq 'true'}">
		       Користувач з такими даними вже зареєстрований
		    </c:if>
		</h3>
		<form action="/check-registration" method="post">
			<table style="margin: auto; text-align: left">
				<tr>
					<td>E-mail:</td>
					<td><input name="email" value="${param.email}" type="email"
					size="35" required /></td>
				</tr>
				<tr>
					<td>Пароль:</td>
					<td><input name="password" type="password" size="35"
						maxlength="35" required /></td>
				</tr>
				<tr>
					<td>Підтвердіть пароль:</td>
					<td><input name="passwordConfirm" type="password" size="35"
						maxlength="35" required /></td>
				</tr>
				<tr>
					<td>Прізвище:</td>
					<td><input name="surname" value="${param.surname}"
					type="text" size="35" maxlength="35" required /></td>
				</tr>
				<tr>
					<td>Ім'я:</td>
					<td><input name="name" value="${param.name}"
					type="text" size="35" maxlength="35" required /></td>
				</tr>
				<tr>
					<td>Телефон:<br />(наприклад, 380501234567)</td>
					<td><input name="phone" value="${param.phone}"
					type="tel" pattern='\d{12}' size="12" maxlength="12"
					required /></td>
				</tr>
			</table>
			<table style="margin: auto">
				<tr>
					<td><input type="submit" class="button-accept" name="create"
						value="Підтвердити" /></td>
					<td><a class="link-cancel" href="/login">
					Відмінити</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>