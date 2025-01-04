<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	display: grid;
	place-items: center;
	background-color: #5acdcd;
	gap: 2rem;
	height: 100vh;
}

.container {
	padding: 2rem;
	background-color: white;
	height: 25rem;
	width: 50vw;
}

form {
	width: 30rem;
	margin: 0 auto;
	display: grid;
	place-items: center;
	height: 100%;
}

label {
	display: block;
	margin: 10px 0 5px;
	font-size: 2rem;
	font-weight: bolder;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 8px;
	margin-bottom: 10px;
}

input[type="submit"], a {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	border: none;
	cursor: pointer;
	text-decoration: none;;
    font-size:1rem;
    font-weight:bolder;
	
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<%
	int sid = Integer.parseInt(request.getParameter("id"));
	%>
	<div class="container">

		<form action="Delete" method="get">

			<label>Are You sure You want to delete List <%=sid%>??
			</label> <input type="hidden" name="id" value="<%=sid%>">
			<div class="btn">
				<input type="submit" value="Delete"> <a href="Display.jsp">Cancel</a>
			</div>
		</form>
	</div>

</body>
</html>