package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// title and content fetch
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Note note = new Note(title, content, new Date());

			System.out.println(note.getId() + " : " + note.getTitle() + " : " + note.getContent());

		Session session=	FactoryProvider.getFactory().openSession();
			Transaction tx=session.beginTransaction();
		
			session.save(note);
			tx.commit();
			session.close();
			
			
			response.setContentType("text/html");
			PrintWriter writer=response.getWriter();
			writer.println("<h1>Note is added successfully    </h1>");
			writer.println("<a href='all_notes.jsp' >View all notes </a>");

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
