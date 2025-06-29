package com.mypackage;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Status
 */
public class Status extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Status() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pt = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));
		int currentstatus =Integer.parseInt(request.getParameter("status"));
		
		
		try {
			int newstatus = (currentstatus == 0) ? 1 : 0;

			Configuration cfg = new Configuration();
			cfg.configure();

			SessionFactory sf = cfg.buildSessionFactory();
			Session sess = sf.openSession();
//	    	
			Todo st = (Todo) sess.get(Todo.class, id);
			st.setStatus(newstatus);

			Transaction tx = sess.beginTransaction();
			sess.update(st);
			tx.commit();

			sess.close();
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			pt.print(e.getMessage());
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
