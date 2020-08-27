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
@WebServlet("/asrservlet")
public class asrservlet extends HttpServlet {
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
		String srname=request.getParameter("srname");
		String srpass=request.getParameter("srpass");
		try {
		String query=" insert into srdetails(srmail, srpass)"+" values (?, ?)";
		stmt = con.prepareStatement(query);
		stmt.setString(1, srname);
		stmt.setString(2, srpass);
		stmt.execute();
		response.sendRedirect("asrsucss.html");
		stmt.close();
		con.close();

		}catch(Exception e) {
			PrintWriter out=response.getWriter();
			   out.println("<script type=\"text/javascript\">");
			   out.println("alert('User already exists');");
			   out.println("location='asupervisor.jsp';");
			   out.println("</script>");
			System.out.println(e);
			}
	}

}
