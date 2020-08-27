import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/csignupservlet")
public class csignupservlet extends HttpServlet {
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
		String uname=request.getParameter("uname");
		String upass=request.getParameter("upass");
		String uphn=request.getParameter("uphn");
		try {
		String query=" insert into cldetails(cmail, cpass, cphn)"+" values (?, ?, ?)";
		stmt = con.prepareStatement(query);
		stmt.setString(1, uname);
		stmt.setString(2, upass);
		stmt.setString(3, uphn);
		stmt.execute();
		response.sendRedirect("signupsucss.html");
		stmt.close();
		con.close();

		}catch(Exception e) {
			System.out.println(e);
			PrintWriter out=response.getWriter();
			   out.println("<script type=\"text/javascript\">");
			   out.println("alert('You are already an existing user');");
			   out.println("location='clogin.html';");
			   out.println("</script>");
			System.out.println(e);
			}
	}

}
