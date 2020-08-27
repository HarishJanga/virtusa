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


@WebServlet("/floor4servlet")
public class floor4servlet extends HttpServlet {
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
		String shsc1=request.getParameter("shsc1");
		String shsc2=request.getParameter("shsc2");
		String shmc1=request.getParameter("shmc1");
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
		String mbc2=request.getParameter("mbc2");
try {
			
			String query="Update floor4 SET total= ?,available = ? where typeofshop=?";
			stmt = con.prepareStatement(query);
			stmt.setString(1,shsc1);
			stmt.setString(2, shsc2);
			stmt.setString(3, "shop-small");
			stmt.executeUpdate();
			String query1="Update floor4 SET total= ?,available = ? where typeofshop=?";
			stmt = con.prepareStatement(query1);
			stmt.setString(1,shmc1);
			stmt.setString(2, shmc2);
			stmt.setString(3, "shop-medium");
			stmt.executeUpdate();
			String query2="Update floor4 SET total= ?,available = ? where typeofshop=?";
			stmt = con.prepareStatement(query2);
			stmt.setString(1,shlc1);
			stmt.setString(2, shlc2);
			stmt.setString(3, "shop-large");
			stmt.executeUpdate();
			String query3="Update floor4 SET total= ?,available = ? where typeofshop=?";
			stmt = con.prepareStatement(query3);
			stmt.setString(1,anwc1);
			stmt.setString(2, anwc2);
			stmt.setString(3, "atrium-nw");
			stmt.executeUpdate();
			String query4="Update floor4 SET total= ?,available = ? where typeofshop=?";
			stmt = con.prepareStatement(query4);
			stmt.setString(1,asc1);
			stmt.setString(2, asc2);
			stmt.setString(3, "atrium-s");
			stmt.executeUpdate();
			String query5="Update floor4 SET total= ?,available = ? where typeofshop=?";
			stmt = con.prepareStatement(query5);
			stmt.setString(1,ctc1);
			stmt.setString(2, ctc2);
			stmt.setString(3, "theatre");
			stmt.executeUpdate();
			String query6="Update floor4 SET total= ?,available = ? where typeofshop=?";
			stmt = con.prepareStatement(query6);
			stmt.setString(1,mbc1);
			stmt.setString(2, mbc2);
			stmt.setString(3, "marketingbanner");
			stmt.executeUpdate();
			stmt.close();
			con.close();
	}catch(Exception e) {System.out.println(e);}

	}

}
