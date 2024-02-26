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
.overall{
			height:600px;
			width:700px;
			padding:60px;
			
			}
</style>
</head>
<body style="background-color:brown;">
<%!
		String pic2,pic3,pic4,pic5,pic6,pic7;
		%>
		<%
		
		pic2="images/pla1.jpeg";
		pic3="images/pla2.jpeg";
		pic4="images/pla3.jpeg";
		pic5="images/pla1.jpeg";
		pic6="images/pla2.jpeg";
		pic7="images/pla3.jpeg";
			%>
<div class="overall">
<h2 style="background-color:black;height:30px;width:1000px;color:yellow;border-radius:16px;text-indent:20px">Recently Party</h2>
<table >
<tr><td colspan="5"><img src="<%=pic2%>"><figcaption> Celebrate Party</figcaption></td>
				<td colspan="5"><img src="<%=pic3%>"><figcaption>Birthday Party</figcaption></td>
				<td colspan="5"><img src="<%=pic4%>"><figcaption>Celebrate Party</figcaption></td>
				<td colspan="5"><img src="<%=pic5%>"><figcaption>New Year Celebrate Party</figcaption></td>
			</tr></table>
<h2 style="background-color:black;height:30px;width:1000px;color:yellow;border-radius:16px;text-indent:20px">Upcoming Party</h2>
<table>
<tr><td colspan="5"><img src="<%=pic6%>" style="width:200px;height:200px;"><figcaption>New Year Celebrate Party</figcaption></td>
				<td colspan="5"><img src="<%=pic7%>" style="width:200px;height:200px;"><figcaption>Birthday Party</figcaption></td>
			</tr></table>
</div>

</body>
</html>