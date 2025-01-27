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
	background-color: #313547;
	height: 100vh;
}

.nav {
	display: flex;
	justify-content:space-evenly;
	 padding : 1rem;
	background-color: #a08077;
	height: 5rem;
	padding: 1rem;
}

.container form {
width:80%;
	display: flex;
	gap: 2rem;
	padding: 3rem;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 8px;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

table {
	width: 80%;
	border-collapse: collapse;
	background-color:white ;
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

.display{
	display:flex;
	justify-content: center;
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
			<input type="text" name="title" placeholder="Title" required> <input
				type="text" name="msg" placeholder="Message" required>
			<div class="btns">
				<input type="submit" value="ADD">
			</div>
		</form>
		<div class="display">
		 <%@include file="Display.jsp"%>
		
		</div>
	</div>
</body>
</html>
