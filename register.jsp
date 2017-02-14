<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
</head>
<body>
	<h1 style="text-align: center">Jadavpur University</h1>
	<h4>Registration Form</h4>
	<form action="reg_confirmation.jsp" method="_POST" >
		<label>RollNo </label><input type="text" name="rollno" placeholder="e.g 14"><br><br>
		<label>Password </label><input type="Password" name="password"><br><br>
		<input type="submit" value="Register">
	</form>
</body>
</html>