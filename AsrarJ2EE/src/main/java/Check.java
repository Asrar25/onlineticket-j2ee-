

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
/**
 * Servlet implementation class Check
 */
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name="",pass="",dpass="";
	   PrintWriter pw=response.getWriter();
		name=request.getParameter("un");
		pass=request.getParameter("pwd");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost/asrar","root","Jothi@30");
			PreparedStatement p=con.prepareStatement("select Password from userregister where User_name=?");
			p.setString(1,name);
			ResultSet rs=p.executeQuery();
			while(rs.next()){
				dpass=rs.getString(1);
			}	
		}catch(Exception e){
				pw.print(e);
			}
		
		
		if(pass.equals(dpass)){
			Cookie c1=new Cookie("username",name);
			response.addCookie(c1);
			RequestDispatcher r=request.getRequestDispatcher("main.jsp");
			r.forward(request, response);
		}else{
			response.setContentType("text/html");
			pw.print("<h3 style='position:relative;left:600px;color:#cafaf9;'>Invalid Password</h3>");
			RequestDispatcher r=request.getRequestDispatcher("login.jsp");
		    r.include(request,response);
		}
		

}
}
