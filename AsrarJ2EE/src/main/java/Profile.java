

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class Profile
 */
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String rfname="",rlname="",rmail="",rdob="",rphone="",nam="",uname="";
		 PrintWriter pw=response.getWriter();
		 Cookie[]c2=request.getCookies();
			for(int i=0;i<c2.length;i++){
				nam=c2[i].getValue();
			}
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost/asrar","root","Jothi@30");
			PreparedStatement s=con.prepareStatement("select * from userregister where User_name=?");
			s.setString(1,nam);
			ResultSet rs=s.executeQuery();
			while(rs.next()) {
				rfname=rs.getString(1);
				rlname=rs.getString(2);
				rdob=rs.getString(3);
				rmail=rs.getString(4);
				rphone=rs.getString(5);
				uname=rs.getString(6);
			}
		}
		catch(Exception e){
			pw.print(e);
			RequestDispatcher r=request.getRequestDispatcher("Rcheck");
			r.include(request, response);
		}
		response.setContentType("text/html");
		pw.println("<h3>First Name : "+rfname+" </h3>"+
				"<h3>Last Name : "+rlname+" </h3>"+
				"<h3>Date-Of-Birth : "+rdob+" </h3>"+
				"<h3>Mail Id : "+rmail+" </h3>"+
				"<h3>Mobile Number : "+rphone+" </h3>"+
				"<h3>UserName : "+uname+" </h3>");
		
		
	}

}
