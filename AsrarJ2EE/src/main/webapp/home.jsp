<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
tabel{
	border:8px solid white;
	}
img{
	height:110px;
	width:220px;
	border-radius:20px;
	}
img:hover{
	border:1px solid yellow;			
			}
figcaption{
		text-align:center;
		color:#c4b5a5;
		}
p{
	color:#c4b5a5;
}
.d{
	position:relative;
	left:580px;
	bottom:350px;
}
.overall{
			height:600px;
			width:700px;
			
			}
</style>
</head>
<body style="background-color:brown;">
<div class="overall">
<h2 style="background-color:black;height:30px;width:1000px;color:yellow;border-radius:16px;text-indent:20px">Trending Concert</h2>
<%!
		String pic1,pic2,pic3,pic4,pic5,pic6,pic7,pic8,pic9,pic10,pic11,pic12,pic13,pic14;
		%>
		<%
		
		pic2="images/chris.jpg";
		pic3="images/vd.jpg";
		pic4="images/hb.jpg";
		pic5="images/hn.jpg";
		pic6="images/se1.jpg";
		pic7="images/se2.jpg";
		pic8="images/se3.jpg";
		pic9="images/se4.jpg";
		pic10="images/se5.jpg";
		pic11="images/sp5.jpeg";
		pic12="images/sp2.jpeg";
		pic13="images/sp3.jpeg";
		pic14="images/sp1.jpg";
		
		%>

<table>
<tr><td colspan="5"><img src="<%=pic14%>"><figcaption>ChristmaX Celebrate Party</figcaption></td>
				<td colspan="5"><img src="<%=pic2%>"><figcaption>Lover Valentine's Party</figcaption></td>
				<td colspan="5"><img src="<%=pic3%>"><figcaption>Person Birthday Celebrate Party</figcaption></td>
				<td colspan="5"><img src="<%=pic4%>"><figcaption>New Year Celebrate Party</figcaption></td>
			</tr></table>
<h2 style="background-color:black;height:30px;width:1000px;color:yellow;border-radius:16px;text-indent:20px">Series</h2>
<table>
<tr><td colspan="5"><img src="<%=pic5%>"  style="width:200px;height:200px;"><figcaption>ChristmaX Celebrate Party</figcaption></td>
				<td colspan="5"><img src="<%=pic6%>" style="width:200px;height:200px;"><figcaption>Lover Valentine's Party</figcaption></td>
				<td colspan="5"><img src="<%=pic7%>" style="width:200px;height:200px;"><figcaption>Person Birthday Celebrate</figcaption></td>
				<td colspan="5"><img src="<%=pic8%>" style="width:200px;height:200px;"><figcaption>New Year Celebrate</figcaption></td>
				<td colspan="5"><img src="<%=pic9%>" style="width:200px;height:200px;"><figcaption>ChristmaX Celebrate</figcaption></td>
			</tr></table>
<h2 style="background-color:black;height:30px;width:550px;color:yellow;border-radius:16px;text-indent:20px">Sports Line</h2>
<table style="width:400px;">
<tr><td colspan="2"><img src="<%=pic10%>"style="width:140px;height:90px;"></td><td><p>Ipl Tropy</p><ul><li>Start on March 2024 Still next week Auction will be Start Soon </li></ul></td></tr>
				<tr><td colspan="2"><img src="<%=pic11%>"style="width:140px;height:90px;"></td><td><p>Tennis</p><ul><li>Start on Jan 2024 Still next week Auction will be Start Soon</li></ul></td></tr>
				<tr><td colspan="2"><img src="<%=pic12%>" style="width:140px;height:90px;"></td><td><p>World Cup Tropy</p><ul><li>Start on March 2024 Still next week Auction will be Start Soon</li></ul></td></tr>
				<tr><td colspan="2"><img src="<%=pic13%>"style="width:140px;height:90px;"></td><td><p>Kabbadi</p><ul><li>Start on June 2024 Still next week Auction will be Start Soon</li></ul></td></tr>
				<tfoot align="center"><tr><td></td><td colspan="2"><br><br><button type="submit">View All</button></td></tr></tfoot>
			</table>
<div class="d">
<table border="1" rules="all" style="height:300px;width:400px;color:white">
<thead style="background-color:black"><tr><th colspan="2" >Top Search View</th></tr></thead>
<tbody><tr><td>Sports</td><td><a href="">See More</a></td></tr>
		<tr><td>Series List</td><td><a href="" >See More</a></td></tr>
		<tr><td>Cinema Movie</td><td><a href="">See More</a></td></tr>
		<tr><td>Comedies</td><td><a href="">See More</a></td></tr>
		<tr><td>Music Concrete</td><td><a href="">See More</a></td></tr>
		<tr><td>Sports</td><td><a href="">See More</a></td></tr>
		<tr><td>Series List</td><td><a href="" >See More</a></td></tr>
		<tr><td>Cinema Movie</td><td><a href="">See More</a></td></tr>
		
</tbody>
</table></div>

			
</div>

</body>
</html>