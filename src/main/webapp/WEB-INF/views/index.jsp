
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->

	<form action="saveNote" method="post">
		<table>
			<tr>
				<td>Note Id</td>
				<td><input type="text" name="noteid">
			</tr>
			<tr>
				<td>title</td>
				<td><input type="text" name="title">
			</tr>
			<tr>
				<td>content</td>
				<td><input type="text" name="content"></td>
			</tr>
			<tr>
				<td>status</td>
				<td><input type="text" name="status"></td>
			</tr>
			<tr>
				<td><input type="submit" value="send"></td>
			</tr>
		</table>
	</form>

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<table border="2">
		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Content</th>
			<th>Status</th>
			<th>Created Date</th>
			<th>Action</th>
		</tr>
		<c:forEach var="notes" items="${notelist}">

			<tr>
				<td>${notes.noteId}</td>
				<td>${notes.noteTitle}</td>
				<td>${notes.noteContent}</td>
				<td>${notes.noteStatus}</td>
				<td>${notes.createdAt}</td>
				<td><a href="delete/${notes.noteId}"><button>Delete</button></a></td>


			</tr>
		</c:forEach>

	</table>
</body>
</html>