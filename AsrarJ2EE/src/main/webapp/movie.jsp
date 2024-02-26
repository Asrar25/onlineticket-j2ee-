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
			<%
		
		
		pic8="images/ban2.jpeg";
		pic9="images/ban3.jpeg";
		pic10="images/maari2banner.jpg";
		pic11="images/ban1.jpeg";
		pic12="images/spidermanbanner.jpg";
		%>
			
#banner{
	height:300px;
	width:950px;
	animation-name:imageslider;
	animation-duration:15s;
	animation-iteration-count:infinite;
}
@keyframes imageslider{
	0%{
		background-image:url(<%=pic8%>);
		background-size:100% 100%;
	}
	25%{
		background-image:url(<%=pic9%>);
		background-size:100% 100%;
	}
	50%{
		background-image:url(<%=pic10%>);
		background-size:100% 100%;
	}
	75%{
		background-image:url(<%=pic11%>);
		background-size:100% 100%;
	}
	100%{
		background-image:url(<%=pic12%>);
		background-size:100% 100%;
	}	
}
			
</style>
</head>
<body style="background-color:brown;">
<div class="overall">
<div id="banner"></div>
<div>
<h2 style="background-color:black;height:30px;width:1000px;color:yellow;border-radius:16px;text-indent:20px">Recommanded Cinema Movies</h2>
<%!
		String pic2,pic3,pic4,pic5,pic6,pic7,pic8,pic9,pic10,pic11,pic12;
		%>
		<%
		
		pic2="images/mv1.jpeg";
		pic3="images/mv2.jpg";
		pic4="images/mv3.jpg";
		pic5="images/mv4.jpg";
		pic6="images/mv1.jpeg";
		pic7="images/mv2.jpg";
			%>
<table>
<tr><td colspan="5"><img src="<%=pic2%>"><figcaption>Jailer</figcaption></td>
				<td colspan="5"><img src="<%=pic3%>"><figcaption>Love  Today</figcaption></td>
				<td colspan="5"><img src="<%=pic4%>"><figcaption>Thunivu</figcaption></td>
				<td colspan="5"><img src="<%=pic5%>"><figcaption>Love Today Recent</figcaption></td>
			</tr></table>
<h2 style="background-color:black;height:30px;width:1000px;color:yellow;border-radius:16px;text-indent:20px">Upcoming Movies</h2>
<table>
<tr><td colspan="5"><img src="<%=pic6%>" style="width:200px;height:200px;"><figcaption>Jailer</figcaption></td>
				<td colspan="5"><img src="<%=pic7%>" style="width:200px;height:200px;"><figcaption>Love Today</figcaption></td>
			</tr></table>
</div>
<div>

</body>
</html>