<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style>
*{
margin:0;
padding:0;
box-sizing: border-box;

}
body {
display:grid;
place-items:center;
	background-color: #5acdcd;
	gap: 2rem;
	height: 100vh;
}

div{
padding:2rem;
	background-color: white;
	height: 25rem;
	width:50vw;
}

form {
    width: 30rem;
    margin: 0 auto;
}

label {
    display: block;
    margin: 10px 0 5px;
}

input[type="text"],
input[type="number"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
}

input[type="submit"] ,a{
    background-color: #4CAF50;
    color: white;
    padding: 10px;
    border: none;
    cursor: pointer;
    text-decoration: none;
}

input[type="submit"]:hover {
    background-color: #45a049;
}
</style>
</head>
<body>
<div>
	<h2>Student Form</h2>

	<form action="Register" method="get">
		<label>Name:</label><input type="text" name="name"><label>Roll
			No.: </label> <input type="number" name="roll"> <label>Percent:
		</label><input type="number" name="percent"> <input type="submit"
			value="Insert">
			<a href="Display.jsp">View Students</a>
	</form>
	</div>
</body>
</html>
