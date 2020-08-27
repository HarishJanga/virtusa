import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/srservlet")
public class srservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;
	Statement stmt=null;
	public void init() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cdetails", "root", "manager");
			stmt=con.createStatement();
		}catch(Exception e) {System.out.println(e);}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String pass=request.getParameter("upass");
		try {
			ResultSet rs=stmt.executeQuery("select srmail,srpass from srdetails");
			while(rs.next()) {
				String dbuname = rs.getString("srmail");
		        String dbpass =  rs.getString("srpass");
		        if(dbuname.contentEquals(uname)) {
		        	if(dbpass.contentEquals(pass)) {
		        	HttpSession s=request.getSession();
		        	s.setAttribute("uid", uname);
		        	response.sendRedirect("srmonitor.jsp");
		        	
		        	break;
		        }
		        }
		        else {
		        	continue;
		        }
			}
			PrintWriter out=response.getWriter();
			   out.println("<script type=\"text/javascript\">");
			   out.println("alert('incorrect username or password');");
			   out.println("location='srlogin.html';");
			   out.println("</script>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	}
