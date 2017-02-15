<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
</head>
<body>
	<h1 style="text-align: center">Jadavpur University</h1>
	<%
	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	Connection  con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ju", "root", "");
	Statement stmt = con.createStatement();
	String rollno = request.getParameter("rollno");
	String pass = request.getParameter("password");
	String c = "Select * from students where rollno = " + rollno ;
	ResultSet rs = stmt.executeQuery(c);
	boolean notFound=true;
	while(rs.next()){
		notFound=false;
	}
	if(notFound){
		c = "Insert into students values (" +rollno+ ",'" +pass+ "')" ;
		stmt.executeUpdate(c);
		out.println("Successfully registered!<br>");
		out.println("Login <a href='login.jsp'>here</a>");		
	}
	else{
		out.println("Account already exists. Login <a href='login.jsp'>here</a>");
	}
	%>
</body>
</html>