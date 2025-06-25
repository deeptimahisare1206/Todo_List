package com.mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Paginationn
 */
public class Paginationn extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Paginationn() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter pt = response.getWriter();
	pt.print("Hello");
	int page =Integer.parseInt(request.getParameter("i"));
	Configuration cfg =new Configuration();
	cfg.configure();
	SessionFactory sf =cfg.buildSessionFactory();
	Session sess = sf.openSession();
	
	Query<Todo> q = sess.createQuery("from Todo");
	q.setFirstResult(2);
	q.setMaxResults(2);

	List<Todo> li = q.list();

	for (Todo st : li) {
		pt.print(st.getTitle());
	}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
