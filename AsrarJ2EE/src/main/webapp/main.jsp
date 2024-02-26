<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticku</title>
<link href="mysite.jpg" rel="icon">
<link href="sitestyle.css" rel="stylesheet">
</head>
<body>
<div>
		<header><h2><span>T</span>ic<span>k</span>u</h2><div class="w"><input class="i" type="text"></input><button class="b1" type="submit">Search</button> </div>
			<select name="loc"><option>Chennai</option><option>Bangalore</option><option>Pune</option></select>
			</header>
		<div class="p"><h3 align="center" style="font-family:Bookman,URW Bookman L,serif;font-size:30px;position:relative;top:10px;">Welcome All</h3>
		<div style="width:1100px;height:60px;"><p style="font-family:Courier,monospace;color:black;font-style:italic;text-indent:50px;position:relative;left:250px;">Ticku is a platform for booking tickets for movies, plays, sports,
		events and cinemas in India. Find the latest showtimes, reviews, trailers, offers 
		and more for your favorite genres and discover the latest movies and book your tickets online with Ticku, India's leading entertainment platform. 
		Browse through genres, languages, ratings, and reviews.</p></div>
		<%!
		String pic,nam="";
		%>
		<%
		pic="images/art.png";
		%>
		<%
		
		Cookie []c1=request.getCookies();
		for(int i=0;i<c1.length;i++){
			nam=c1[i].getValue();
		}
		
		%>
		
		<img src="<%=pic%>" class="artimg"></div>
	<table style="width:1333px;height:50px;" class="t">
	<tr><td id="f"><a href="home.jsp" target="home">Home</a></td>
		
		<td id="f"><a href="movie.jsp" target="home">Movie</a></td>
		<td id="f"><a href="party.jsp" target="home">Party</a></td>
		<td id="f"><a href="sport.jsp" target="home">Sports</a></td>
		<td id="f"><a href="event.jsp" target="home">Event</a></td>
	</tr>
	</table>	
	<div class="d">
	<aside>
		<section>
		<h4>Menu</h4><table border="0" style="height:70px;width:100px;">
		<tr><td colspan="2"><a href="Profile" style="font-size:15px;">My Account</a></td></tr>
		<tr><td colspan="2"><a href="login.jsp" style="font-size:15px;">Another Account</a></td></tr>
		<tr><td  colspan="2"><a href="login.jsp" style="font-size:15px;">LogOut</a></td></tr>
		</table>
		</section>
		<br>
		<section>
		<h4>Live Music Concert</h4>
		<ul>
			<li style="color:#c4b5a5;font-size:18px;">Anirud Concert<p style="color:white;font-size:12px;">Location-Malasiya at 4.00pm</p></li>
			<li style="color:#c4b5a5;font-size:18px;">Anirud Concert<p style="color:white;font-size:12px;">Location-Malasiya at 4.00pm</p></li>
			
		</aside>
		
		<div id="D">
		<iframe name="home" frameborder="0"></iframe>
		
		<section>
		</div>
	</div>
	<footer></footer>
</div>



</body>
</html>