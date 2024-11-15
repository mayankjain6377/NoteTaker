<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Show notes</title>
</head>
<body>
  <div class="container" >
  <%@include file="Navbar.jsp" %>
  
  
  </div>
  <h1>Edit page</h1>
 <%
 int noteId=Integer.parseInt(request.getParameter("note_id").trim());
 Session s=FactoryProvider.getFactory().openSession();
 Note note=(Note)s.get(Note.class,noteId);
 
 
 %>
  
  
  
<form action="UpdateServlet" method="post" class="container">
   
  <div class="mb-3">
  
<input value="<%=note.getId() %>" name="noteId" type="hidden" />
  
    <label for="exampleInputEmail1"
    
     class="form-label">
     Note title</label>
    <input
     type="text"
      name="title"
     class="form-control" 
     id="title"
     value="<%=note.getTitle() %>"
     >
  
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Note Content</label>
<textarea id="content"
required="required"
 
 class="form-control"
  name="content"
  placeholder="Enter your notes here "
  style="height: 270px;">
 <%=note.getContent()%>
  </textarea>
  </div>
<div class="container text-center">
<button type="submit" class="btn btn-success">Save Note</button>

</div>
  </form>
  
  
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  
</body>
</html>