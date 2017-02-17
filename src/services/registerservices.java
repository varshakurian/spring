package services;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import Connection.DbConnection;

import com.Beans.RegisterBean;


public class registerservices extends DbConnection {
	//Connection con=DbConnection.getConnection();

	public boolean login(RegisterBean registerbean) {
		// TODO Auto-generated method stub
		
		System.out.println("inside insert");
		String sql="insert into regi(f,l,a,g,e,c,d,p,i) values(?,?,?,?,?,?,?)";
		//Connection con=null;
		try {
			//@SuppressWarnings("null")
			PreparedStatement ps=super.getConnections().prepareStatement(sql);
			System.out.println(sql);
			ps.setString(1,registerbean.getFirstname());
			ps.setString(2,registerbean.getLastname());
			ps.setString(3,registerbean.getAddress());
			ps.setString(4,registerbean.getGender());
			ps.setString(5,registerbean.Email());
			ps.setInt(6,registerbean.getContact());
			ps.setString(7,registerbean.getDistrict());
			ps.setString(7,registerbean.getPlace());
			ps.setString(7,registerbean.getFilename());
			
			boolean i= ps.execute();
			return i;
			 
			
		}
		 catch (SQLException e) 
		 {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		
		return false;

}
}