

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


@WebServlet("/costservlet")
public class costservlet extends HttpServlet {
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
		String shs1=request.getParameter("shs1");
		String shs2=request.getParameter("shs2");
		String shs3=request.getParameter("shs3");
		String shm1=request.getParameter("shm1");
		String shm2=request.getParameter("shm2");
		String shm3=request.getParameter("shm3");
		String shl1=request.getParameter("shl1");
		String shl2=request.getParameter("shl2");
		String shl3=request.getParameter("shl3");
		String anw1=request.getParameter("anw1");
		String anw2=request.getParameter("anw2");
		String anw3=request.getParameter("anw3");
		String as1=request.getParameter("as1");
		String as2=request.getParameter("as2");
		String as3=request.getParameter("as3");
		String ct1=request.getParameter("ct1");
		String ct2=request.getParameter("ct2");
		String ct3=request.getParameter("ct3");
		String mb1=request.getParameter("mb1");
		String mb2=request.getParameter("mb2");
		String mb3=request.getParameter("mb3");
		try {
			
			String query="Update cost SET costwd= ?,costwe = ?,costph=? where spacetype=?";
			stmt = con.prepareStatement(query);
			stmt.setString(1,shs1);
			stmt.setString(2, shs2);
			stmt.setString(3, shs3);
			stmt.setString(4, "shop-small");
			stmt.executeUpdate();
			String query1="Update cost SET costwd= ?,costwe = ?,costph=? where spacetype=?";
			stmt = con.prepareStatement(query1);
			stmt.setString(1,shm1);
			stmt.setString(2, shm2);
			stmt.setString(3, shm3);
			stmt.setString(4, "shop-medium");
			stmt.executeUpdate();
			String query2="Update cost SET costwd= ?,costwe = ?,costph=? where spacetype=?";
			stmt = con.prepareStatement(query2);
			stmt.setString(1,shl1);
			stmt.setString(2, shl2);
			stmt.setString(3, shl3);
			stmt.setString(4, "shop-large");
			stmt.executeUpdate();
			String query3="Update cost SET costwd= ?,costwe = ?,costph=? where spacetype=?";
			stmt = con.prepareStatement(query3);
			stmt.setString(1,anw1);
			stmt.setString(2, anw2);
			stmt.setString(3, anw3);
			stmt.setString(4, "Atrium-nw");
			stmt.executeUpdate();
			String query4="Update cost SET costwd= ?,costwe = ?,costph=? where spacetype=?";
			stmt = con.prepareStatement(query4);
			stmt.setString(1,as1);
			stmt.setString(2, as2);
			stmt.setString(3, as3);
			stmt.setString(4, "Atrium-s");
			stmt.executeUpdate();
			String query5="Update cost SET costwd= ?,costwe = ?,costph=? where spacetype=?";
			stmt = con.prepareStatement(query5);
			stmt.setString(1,ct1);
			stmt.setString(2, ct2);
			stmt.setString(3, ct3);
			stmt.setString(4, "Theatre");
			stmt.executeUpdate();
			String query6="Update cost SET costwd= ?,costwe = ?,costph=? where spacetype=?";
			stmt = con.prepareStatement(query6);
			stmt.setString(1,mb1);
			stmt.setString(2, mb2);
			stmt.setString(3, mb3);
			stmt.setString(4, "marketingbanner");
			stmt.executeUpdate();
	}catch(Exception e) {System.out.println(e);}

}
	}
