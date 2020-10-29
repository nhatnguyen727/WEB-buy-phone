package Models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.temporal.ChronoField;

import javax.sql.DataSource;

public class DAO {
	private static DataSource dataSource;

	public DAO(DataSource theDataSource) {
		dataSource = theDataSource;
	}
	
	public Boolean Login( String username,String password) throws SQLException {
		Connection conn=null;
		PreparedStatement state=null;
		ResultSet myRs = null;
		conn=dataSource.getConnection();
		String sql="Select count (*) as dem from Customers where Username=? and Password=?";
		state =conn.prepareStatement(sql);
		state.setString(1,username);
		state.setString(2,password);
		
		myRs = state.executeQuery();
		while (myRs.next()) {
			if(myRs.getString("dem").equals("1")) {
				return true;
			}
		}
		
		conn.close();
		state.close();
		return false;
	}
	
	public void Register(String Username,String Password,String Name,String Phone,String Email,String Address
			,String Birthday,String Passport,Boolean Sex) throws SQLException {
		Connection conn=null;
		PreparedStatement state=null;
		conn=dataSource.getConnection();
		LocalDateTime now = LocalDateTime.now();
		int year = now.getYear();
		int month = now.getMonthValue();
		int day = now.getDayOfMonth();
		int hour = now.getHour();
		int minute = now.getMinute();
		int second = now.getSecond();
		int millis = now.get(ChronoField.MICRO_OF_SECOND);
		String id ="CUS-" + String.valueOf(day+"-"+month+"-"+year+" "+hour+":"+minute+":"+second+":"+millis);
		String sql="Insert Into Customers values(?,?,?,?,?,?,?,?,?,?)";
		state=conn.prepareStatement(sql);
		state.setString(1,id);
		state.setString(2,Username);
		state.setString(3,Password);
		state.setString(4,Phone);
		state.setString(5,Name);
		state.setString(6,Email);
		state.setString(7,Birthday);
		state.setBoolean(8,Sex);
		state.setString(9,Address);
		state.setString(10,Passport);
		state.execute();
		conn.close();
		state.close();
	}
	public void UpdateLogin(Object user,String password) throws SQLException{
		Connection conn=null;
		PreparedStatement state=null;
		conn=dataSource.getConnection();
		String sql="Update login set password=? where username=?";
		state=conn.prepareStatement(sql);
		state.setString(1,password);
		state.setObject(2,user);
		state.execute();
		conn.close();
		state.close();
	}

}