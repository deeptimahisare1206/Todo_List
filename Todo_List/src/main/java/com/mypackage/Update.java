package com.mypackage;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update
 */
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public Update() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw = response.getWriter();
		int rn = Integer.parseInt(request.getParameter("rolln"));
		String nm = request.getParameter("name");
	String per = request.getParameter("percent");
		try {

			Configuration cfg = new Configuration();
			cfg.configure();

			SessionFactory sf = cfg.buildSessionFactory();
			Session sess = sf.openSession();
//	    	
			Todo st = (Todo) sess.get(Todo.class, rn);
			//st.setRoll(rn);
			st.setTitle(nm);
			st.setMessage(per);

			Transaction tx = sess.beginTransaction();
			sess.update(st);
			tx.commit();

			sess.close();
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			pw.print(e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
