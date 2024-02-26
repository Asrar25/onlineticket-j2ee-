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
<tr><td colspan="2"><h1>User Login</h1></td></tr>
<form action="Check" method="post">
<tr><td><label>Enter UserName:</label></td><td><input type="text" name="un" required placeholder="enter username"></td></tr>
<tr><td><label>Enter Password:</label></td><td><input type="password" name="pwd" required placeholder="enter password"></td></tr>
<tr><td colspan="2"><input type="submit" value="login" class="btn"></td></tr>
</form>

<tr><td colspan="2"><p >Don't have account?<a href="register.jsp">Register here</a></p></td></tr>
</table>
</body>
</html>