<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: #5acdcd;
	height: 100vh;
}

.nav {
	display: flex;
	 padding : 1rem;
	background-color: white;
	height: 5rem;
	padding: 1rem;
}

.container form {
	display: flex;
	gap: 2rem;
	padding: 3rem 1rem;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 8px;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

/* .btns {
	width: 100%;
	display: flex;
	gap: 2rem;
	justify-content: center;
} */

/* body {
	font-family: Arial, sans-serif;
	background-color: #5acdcd;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 100vh;
} */
table {
	border: 2px solid black;
	width: 80%;
	border-collapse: collapse;
	background-color: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 12px;
	text-align: left;
	border: 1px solid #ddd;
}

th {
	background-color: #4CAF50;
	color: white;
}

a, input[type="submit"] {
	background-color: #000000;
	color: white;
	padding: 0.5rem 1rem;
	border: none;
	cursor: pointer;
	text-decoration: none;
}

input[type="text"] {
	width: 100%;
	padding: 8px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<div class="nav">
		<h1>TODO-LIST</h1>
		<span> <%@include file="Khojo.jsp"%>
		</span>
	</div>
	<div class="container">


		<form action="Register" method="get">
			<input type="text" name="title" placeholder="Title"> <input
				type="text" name="msg" placeholder="Message">
			<div class="btns">
				<input type="submit" value="ADD">
			</div>
		</form>
		<%@include file="Display.jsp"%>

		<div></div>
	</div>
</body>
</html>
