<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.List"%>
<%@page import="com.mypackage.Todo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

h1 {
	color: #333;
	text-align: center;
}

table {
	width: 80%;
	margin-top: 20px;
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

 input[type="submit"]{
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
.nav {
	display: flex;
	justify-content:space-evenly;
	 padding : 1rem;
	background-color: #a08077;
	height: 5rem;
	padding: 1rem;
}
.nav img{
height:3rem;
}
</style>
</head>
<body>
<% String search= request.getParameter("searchTerm"); %>

	<div class="nav">
		<h1>TODO-LIST</h1>
		<span> <%@include file="Khojo.jsp"%> 
		</span>
		<span><a href="index.jsp"><img alt="Not Found" src="home-agreement.png"></a></span>
	</div>
	<table border="1">
		<thead>
			<th>ID</th>
			<th>Title</th>
			<th>Details</th>
			<th>Action</th>
			<th>Action</th>
		</thead>
		<%
		Configuration cfg = new Configuration();
		cfg.configure();

		SessionFactory sf = cfg.buildSessionFactory();
		Session sess = sf.openSession();
		
		Query<Todo> q = sess.createQuery("from Todo where title like :tilt");
		q.setParameter("tilt", "%"+search+"%");
		List<Todo> li = q.list();

		for (Todo st : li) {
		%>
		<tr>
			<td><%=st.getId()%></td>
			<td><%=st.getTitle()%></td>
			<td><%=st.getMessage()%></td>
			<td><a href="Update.jsp?id=<%=st.getId()%>">Update</a></td>
			<td><a href="Delete.jsp?id=<%=st.getId()%>">Delete</a></td>

		</tr>
		<%
		}
		%>


	</table>

</body>
</html>