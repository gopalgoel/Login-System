<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
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
	String pp = "";
	boolean notFound=true;
	while(rs.next()){
		notFound=false;
		pp = rs.getString("pass");
		if(pp.equals(pass)) {
			out.println("<h4>Home</h4>");
			out.println("Logged in");
			out.println("<br><br><br>Click <a href='login.jsp'>here</a> to log out");
		}
		else out.println("Wrong password. Try again <a href='login.jsp'>here</a>");
	}
	if(notFound){
		out.println("Not yet registered.");
	}
	%>	
</body>
</html>