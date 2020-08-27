

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/floorservlet")
public class floorservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;
	PreparedStatement stmt=null;
	Statement stmtt=null;
	public void init(ServletConfig config) throws ServletException {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cdetails","root","manager");   
			stmtt=con.createStatement();
		}catch(Exception e){ System.out.println(e);}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fn=request.getParameter("fn");
		String shsc1=request.getParameter("shsc1");
		String shsc2=request.getParameter("shsc2");
		/*String shmc1=request.getParameter("shmc1");
		String shmc2=request.getParameter("shmc2");
		String shlc1=request.getParameter("shlc1");
		String shlc2=request.getParameter("shlc2");
		String anwc1=request.getParameter("anwc1");
		String anwc2=request.getParameter("anwc2");
		String asc1=request.getParameter("asc1");
		String asc2=request.getParameter("asc2");
		String ctc1=request.getParameter("ctc1");
		String ctc2=request.getParameter("ctc2");
		String mbc1=request.getParameter("mbc1");
		String mbc2=request.getParameter("mbc2");*/
		try {
			stmtt.execute(" create table"+fn+"(shop varchar(15) count varchar(1) available varchar(1))");
			
		}catch(Exception e) {System.out.println(e);}
		try {
			String query1="insert into ?(shop,count,available)"+"values(?,?,?)";
			stmt = con.prepareStatement(query1);
			stmt.setString(1,fn);
			stmt.setString(2,"shop-small");
			stmt.setString(3, shsc1);
			stmt.setString(4, shsc2);
			stmt.execute();
			stmt.close();
			con.close();
		}catch(Exception e){System.out.println(e);}
}
	}
