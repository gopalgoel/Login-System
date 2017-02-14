<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h1 style="text-align: center">Jadavpur University</h1>
	<h4>Home</h4>
	<%
	DriverManager.registerDriver (new oracle.jdbc.OracleDriver());
	Connection  con = DriverManager.getConnection("jdbc:oracle:thin:@172.16.4.124:1521:ibmora", "be15114", "be15114");
	Statement stmt = con.createStatement();
	String rollno = request.getParameter("rollno");
	String pass = request.getParameter("password");
	String c = "Select * from students where rollno = " + rollno ;
	ResultSet rs = stmt.executeQuery(c);
	System.out.println(c);
	String pp = "";
	if(rs==null) out.println("Not yet registered.");
	else{
		rs.next();
		pp = rs.getString("pass");
		if(pp.equals(pass)) out.println("Logged in");
		else out.println("Wrong password. Try again.");
	}
	%>	
</body>
</html>