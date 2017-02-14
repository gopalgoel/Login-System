<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
</head>
<body>
	<h1 style="text-align: center">Jadavpur University</h1>
	<%
	DriverManager.registerDriver (new oracle.jdbc.OracleDriver());
	Connection  con = DriverManager.getConnection("jdbc:oracle:thin:@172.16.4.124:1521:ibmora", "be15114", "be15114");
	Statement stmt = con.createStatement();
	String rollno = request.getParameter("rollno");
	String pass = request.getParameter("password");
	String c = "Insert into students values (" +rollno+ ",'" +pass+ "')" ;
	stmt.executeUpdate(c);
	out.println("Successfully registered!<br>");
	%>	
	Login here: <a href='login.jsp'>login.jsp</a>;
</body>
</html>