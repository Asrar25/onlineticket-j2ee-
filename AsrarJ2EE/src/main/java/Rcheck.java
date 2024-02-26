

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class Rcheck
 */
public class Rcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rcheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String rname,rpass,rfname,rlname,rmail,rdob,rphone;
		
		   PrintWriter pw=response.getWriter();
		   rname=request.getParameter("run");
			rpass=request.getParameter("rpwd");
			rfname=request.getParameter("rfn");
			rlname=request.getParameter("rln");
			rmail=request.getParameter("rmail");
			rdob=request.getParameter("rdob");
			rphone=request.getParameter("rphone");
			
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con =DriverManager.getConnection("jdbc:mysql://localhost/asrar","root","Jothi@30");
				PreparedStatement p=con.prepareStatement("insert into userregister values(?,?,?,?,?,?,?)");
				p.setString(1,rfname);
				p.setString(2,rlname);
				p.setString(3,rdob);
				p.setString(4,rmail);
				p.setString(5,rphone);
				p.setString(6,rname);
				p.setString(7,rpass);
				int r=p.executeUpdate();
				if(r==1){
					response.setContentType("text/html");
					pw.print("<h3 style='position:relative;left:600px;color:#cafaf9;'>Registration Successfull<h3>");
					RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
				    rd.include(request,response);
				}
			}
			catch(Exception e){
				pw.print(e);
				RequestDispatcher r=request.getRequestDispatcher("Rcheck");
				r.include(request, response);
			}

}}
