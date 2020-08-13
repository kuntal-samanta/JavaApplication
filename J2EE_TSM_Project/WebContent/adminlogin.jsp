<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*" %>
    <%@ page import="org.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body>

<%
//allow access only if session exists
String email = null;
if(session.getAttribute("email") != null)
{
	response.sendRedirect("admin-home.jsp");
}
%>


<h1> <% if(request.getAttribute("msg") != null) { %> <%= request.getAttribute("msg") %>  <% } %> </h1>

<h1>Admin Login</h1>

<form action="/TSM/HandleAdminLogin" method="post">
	<label>Email : </label><input type="text" name="email">
	<br>
	<label>Password : </label><input type="password" name="password">
	<br>
	<button type="submit">Submit</button>
</form>

<br>
<hr>
<a href="home.html">Home</a>
<br>
<a href="teacher-apply.jsp">Teacher SignUp</a>
<br>
<a href="t-login.jsp">Teacher Login</a>
<br>
<a href="student-apply.jsp">Student SignUp</a>
<br>
<a href="s-login.jsp">Student SignIn</a>
<br>
<a href="track-application.jsp">Track Application</a>

</body>
</html>