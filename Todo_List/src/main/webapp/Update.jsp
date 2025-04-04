<%@page import="com.mypackage.Todo"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
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
	display: grid;
	place-items: center;
	background-color: #5acdcd;
	gap: 2rem;
	height: 100vh;
}

div {
	padding: 2rem;
	background-color: white;
	height: 25rem;
	width: 50vw;
}

form {
	width: 300px;
	margin: 0 auto;
}

label {
	display: block;
	margin: 10px 0 5px;
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
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div>
		<%
		int did = Integer.parseInt(request.getParameter("id"));
		%>
		<h2>Update Information</h2>

		<form action="Update" method="get">

			<%
		Configuration cfg = new Configuration();
		cfg.configure();
		SessionFactory sf = cfg.buildSessionFactory();
		Session sess = sf.openSession();

		Todo st = (Todo)sess.get(Todo.class, did);
		
		
		%> 

			 <input type="hidden" name="rolln"
				value="<%=did%>"> <label>Title:</label><input type="text"
				name="name" value="<%=st.getTitle()%>"><label>Message: </label><input type="text"
				name="percent"  value="<%=st.getMessage()%>"> <input type="submit" value="Submit">
			<%-- <%
		}
		%> --%>
		</form>

	</div>
</body>
</html>
