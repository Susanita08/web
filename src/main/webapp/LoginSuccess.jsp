<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Login Success Page</title>
</head>
<body>
	<%
		String userName = null;
		String nombreUsuario = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("nuestraCookie"))
					userName = cookie.getValue();
					nombreUsuario = (String) session.getAttribute("nombreUsuario");
			}
		}
		if (userName == null) {
			response.sendRedirect("login.html");
		} 
	%>
	<h3>
		Hooolis
		<%=URLDecoder.decode(nombreUsuario, "UTF-8")%>, Login correcto.
	</h3>
	<br>
	<form action="LogoutServlet" method="post">
		<input type="submit" value="Logout">
	</form>
</body>
</html>

