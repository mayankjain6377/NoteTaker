<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar</title>
 <style>
    /* Custom colors for odd and even dropdown items */
    .dropdown-menu li:nth-child(odd) .dropdown-item {
      background-color: #f2f2f2; /* Light gray for odd items */
    }
    .dropdown-menu li:nth-child(even) .dropdown-item {
      background-color: #e6e6e6; /* Slightly darker gray for even items */
    }
    /* Hover effect */
    .dropdown-menu .dropdown-item:hover {
      background-color: #ddd;
    }
  </style>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<nav class="navbar  navbar-expand-lg navbar-dark purple ">
  <div class="container-fluid ">
    <a class="navbar-brand" href="index.jsp">Note Taker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="add_notes.jsp">Add Note</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="true">
            More
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Archieved</a></li>
            <li><a class="dropdown-item" href="#">Share Notes</a></li>
                      <li><a class="dropdown-item" href="#"> Export Notes</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item cursor-pointer">
          <a class="nav-link cursor-pointer " href="show_notes.jsp" >Show Notes</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>