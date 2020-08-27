

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/complaintservlet")
public class complaintservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;
	PreparedStatement stmt=null;
	public void init(ServletConfig config) throws ServletException {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cdetails","root","manager");   
			
		}catch(Exception e){ System.out.println(e);}
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s=request.getSession();
		String un=s.getAttribute("uid").toString();
		String type=request.getParameter("complaint");
		String txt=request.getParameter("txt");
		try {
		String query=" insert into complaints(cmail, shoptype, complaint, statusc)"+" values (?, ?, ?, ?)";
		stmt = con.prepareStatement(query);
		stmt.setString(1,un);
		stmt.setString(2, type);
		stmt.setString(3, txt);
		stmt.setString(4, "In progress");
		stmt.execute();
		response.sendRedirect("cmpltsucss.html");
		/*stmt.close();
		con.close();*/

		}catch(Exception e) {System.out.println(e);}

}
	}
