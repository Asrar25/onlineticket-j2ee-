<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.btn{
     height:30px;
     width:200px;
     border-radius:20px;
}
input{
border-radius:20px;
border:none;
color:brown;
height:30px;
}
label{
color:white;
}
a{
text-decoration:none;
}
p{
color:sandle;
}
table{
position:relative;
left:450px;
top:100px;
height:400px;
width:500px;
border:none;
}
.btn:hover{
background-color:black;
color:white;
}
</style>
</head>
<body bgcolor="brown">
<table style="text-align:center;">
<tr><td colspan="2"><h1>User Register</h1></td></tr>
<form action="Rcheck" method="post">
<tr><td><label>First Name :</label></td><td> <input type="text" name="rfn" required placeholder="firstname"></td></tr>
<tr><td><label>Last Name:</label></td><td><input type="text" name="rln" required placeholder="lastname"></td></tr>
<tr><td><label>Enter DOB:</label></td><td><input type="text" name="rdob" required placeholder="YYYY-M-D"></td></tr>
<tr><td><label>Enter Mailid:</label></td><td><input type="text" name="rmail" required placeholder="mailid"></td></tr>
<tr><td><label>Enter Mobile no:</label></td><td><input type="text" name="rphone" required placeholder="mobileno"></td></tr>
<tr><td><label>Enter UserName:</label></td><td><input type="text" name="run" required placeholder="enter username"></td></tr>
<tr><td><label>Enter Password:</label></td><td><input type="password" name="rpwd" required placeholder="enter password"></td></tr>
<tr><td colspan="2"><input type="submit" value="Register" class="btn" ></td></tr>
<tr><td colspan="2"><p>Existing User?<a href="login.jsp">Login</a></p></td></tr>
</table>
</body>
</html>