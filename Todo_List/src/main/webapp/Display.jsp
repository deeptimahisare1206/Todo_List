
<%@page import="com.mypackage.Todo"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show</title>

</head>
<body>
	<table border="1">
		<thead>
			<th>Title</th>
			<th>Details</th>
			<th>Status</th>
			<th>Action</th>
			<th>Action</th>
		</thead>
		<%
		
		Configuration cfg= new Configuration();
		cfg.configure();
		SessionFactory sf = cfg.buildSessionFactory();
		Session sess = sf.openSession();
	int i=0 , j=5;

	
	if (request.getParameter("i") != null) {
		i = Integer.parseInt(request.getParameter("i"));
	}	
	
	Query q = sess.createQuery("from Todo");
		q.setFirstResult(i);
    	q.setMaxResults(j);
    	

		List<Todo> li = q.list();

		for (Todo st : li) {
		%>
		<tr>
			<td><%=st.getTitle()%></td>
			<td><%=st.getMessage()%></td>
			<td><a href="Status?id=<%=st.getId()%>&status=<%=st.getStatus()%>" style="background-color: <%= st.getStatus() == 0 ? "red" : "green" %>;"><%= st.getStatus() == 0?"Pending" : "Completed"%></a></td>
			<td><a href="Update.jsp?id=<%=st.getId()%>">Update</a></td>
			<td><a href="Delete?id=<%=st.getId()%>">Delete</a></td>

		</tr>
		<%
		}
		
		%>
<tr>
<td colspan="2" style="text-align: center"> <a href="index.jsp?i=<%=i-j%>">PREVIOUS</a></td>
	<td colspan="3"style="text-align: center"> <a href="index.jsp?i=<%=i+j%>">NEXT</a></td>
</tr>
	</table>
	

</body>
</html>