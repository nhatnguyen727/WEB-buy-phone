package Models;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.temporal.ChronoField;

import javax.sql.DataSource;

import Functions.GetRoleBinary;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class DaoPageAdmin {
	private static DataSource dataSource;

	public DaoPageAdmin(DataSource theDataSource) {
		dataSource = theDataSource;
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
		String id ="CUS-" + String.valueOf(day+"-"+month+"-"+year+"-"+hour+":"+minute+":"+second+":"+millis);
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
		String query="Insert Into Roles(Id_Customer,Username,Value_Role) values(?,?,?)";
		state=conn.prepareStatement(query);
		state.setString(1,id);
		state.setString(2,Username);
		state.setInt(3,0);
		state.execute();
		conn.close();
		state.close();
	}
	public void Add_Product(String Id, String Name,String Manufacturer,Double Price,
			String Img,String NewFeature,String Details,String Screen,String Operating,
			String FrontCamera,String RearCamera,String CPU,String RAM,String InternalMemory,
			String MemoryStick,String SIM,String Battery) throws SQLException {
		Connection conn = null;
		PreparedStatement state = null;
		conn = dataSource.getConnection();
		String sql = "Insert Into Products values(?,?,?,?,?,?,"
				+ "?,?,?,?,?,?,"
				+ "?,?,?,?,?,?)";
		
		state = conn.prepareStatement(sql);
		state.setString(1, Id);
		state.setString(2, Name);
		state.setString(3, Manufacturer);
		state.setDouble(4, Price);
		state.setString(5, Img);
		state.setBoolean(6, true);
		state.setString(7, NewFeature);
		state.setString(8, Screen);
		state.setString(9, Operating);
		state.setString(10, FrontCamera);
		state.setString(11, RearCamera);
		state.setString(12, CPU);
		state.setString(13, RAM);
		state.setString(14, InternalMemory);
		state.setString(15, MemoryStick);
		state.setString(16, SIM);
		state.setString(17, Battery);
		state.setString(18, Details);
	
		state.executeUpdate();
		conn.close();
		state.close();
	}
	public void Add_Manufacturer(String Name) throws SQLException {
		Connection conn = null;
		PreparedStatement state = null;
		conn = dataSource.getConnection();
		String sql = "Insert Into Manufacturers values(?,?,?)";
		LocalDateTime now = LocalDateTime.now();
		int year = now.getYear();
		int month = now.getMonthValue();
		int day = now.getDayOfMonth();
		int hour = now.getHour();
		int minute = now.getMinute();
		int second = now.getSecond();
		int millis = now.get(ChronoField.MICRO_OF_SECOND);
		String id ="MNF-" + String.valueOf(day+"-"+month+"-"+year+"-"+hour+":"+minute+":"+second+":"+millis);
		state = conn.prepareStatement(sql);
		state.setString(1, id);
		state.setString(2, Name);
		state.setBoolean(3, true);
		state.executeUpdate();
		conn.close();
		state.close();
	}
	public ObservableList<Products> getAllProducts(String manufacturer) throws SQLException {
		ObservableList<Products> listProduct = FXCollections.observableArrayList();
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		myConn = dataSource.getConnection();
		String sql = "select * from Products where Manufacturer_Product='"+manufacturer+"' and Active=1";
		myStmt = myConn.createStatement();
		myRs = myStmt.executeQuery(sql);
		while (myRs.next()) {
			Products product = new Products();
			product.setID(myRs.getString("ID_Product"));
			product.setName(myRs.getString("Name_Product"));
			product.setManufacturer(myRs.getString("Manufacturer_Product"));
			product.setPrice(myRs.getDouble("Price_Product"));
			product.setImage(myRs.getString("Img_Product"));
			product.setNewFeature(myRs.getString("Newfeature"));
			product.setDetails(myRs.getString("Details"));
			product.setInternalMemory(myRs.getString("InternalMemory"));
			product.setMemoryStick(myRs.getString("MemoryStick"));
			product.setOperating(myRs.getString("Operating"));
			product.setFrontCamera(myRs.getString("FrontCamera"));
			product.setRearCamera(myRs.getString("RearCamera"));
			product.setRAM(myRs.getString("RAM"));
			product.setCPU(myRs.getString("CPU"));
			product.setSIM(myRs.getString("SIM"));
			product.setScreen(myRs.getString("Screen"));
			product.setBattery(myRs.getString("Battery"));
			listProduct.add(product);
		}
		myConn.close();
		myRs.close();
		myStmt.close();
		return listProduct;
		
	}

	public Products getProductWithId(String theProduct) throws SQLException {
		// TODO Auto-generated method stub
		
		//ObservableList<Products> listProduct = FXCollections.observableArrayList();
		Products product = new Products();
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		myConn = dataSource.getConnection();
		String sql = "select * from Products where ID_Product='"+theProduct+"'";
		myStmt = myConn.createStatement();
		myRs = myStmt.executeQuery(sql);
		while (myRs.next()) {
			product.setID(myRs.getString("ID_Product"));
			product.setName(myRs.getString("Name_Product"));
			product.setManufacturer(myRs.getString("Manufacturer_Product"));
			product.setPrice(myRs.getDouble("Price_Product"));
			product.setImage(myRs.getString("Img_Product"));
			product.setNewFeature(myRs.getString("Newfeature"));
			product.setDetails(myRs.getString("Details"));
			product.setInternalMemory(myRs.getString("InternalMemory"));
			product.setMemoryStick(myRs.getString("MemoryStick"));
			product.setOperating(myRs.getString("Operating"));
			product.setFrontCamera(myRs.getString("FrontCamera"));
			product.setRearCamera(myRs.getString("RearCamera"));
			product.setRAM(myRs.getString("RAM"));
			product.setCPU(myRs.getString("CPU"));
			product.setSIM(myRs.getString("SIM"));
			product.setScreen(myRs.getString("Screen"));
			product.setBattery(myRs.getString("Battery"));
			
		}
		myConn.close();
		myRs.close();
		myStmt.close();
		return product;
		
	}

	public void UpdateProduct(String Id, String Name,Double Price,
			String Img,String NewFeature,String Details,String Screen,String Operating,
			String FrontCamera,String RearCamera,String CPU,String RAM,String InternalMemory,
			String MemoryStick,String SIM,String Battery) throws SQLException{
		Connection conn=null;
		PreparedStatement state=null;
		conn=dataSource.getConnection();
		String sql="Update Products set Name_Product=?,Price_Product=?,Img_Product=?,Newfeature=?,Screen=?"
				+ ",Operating=?,FrontCamera=?,RearCamera=?,CPU=?,RAM=?,InternalMemory=?,MemoryStick=?,"
				+ "SIM=?,Battery=?,Details=? where ID_Product=?";
		state=conn.prepareStatement(sql);
		
		state.setString(1, Name);
		state.setDouble(2, Price);
		state.setString(3, Img);
		state.setString(4, NewFeature);
		state.setString(5, Screen);
		state.setString(6, Operating);
		state.setString(7, FrontCamera);
		state.setString(8, RearCamera);
		state.setString(9, CPU);
		state.setString(10, RAM);
		state.setString(11, InternalMemory);
		state.setString(12, MemoryStick);
		state.setString(13, SIM);
		state.setString(14, Battery);
		state.setString(15, Details);
		state.setString(16,Id);
		state.execute();
		conn.close();
		state.close();
	}

	public void DeleteProduct(String theProduct) throws SQLException {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement state=null;
		conn=dataSource.getConnection();
		String sql="Update Products set Active=0 where ID_Product=?";
		state=conn.prepareStatement(sql);
		state.setString(1,theProduct);
		state.execute();
		state.close();
		conn.close();
		
	}

	public boolean LoginPageAdmin(String username, String password) throws SQLException {
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
	
	public ObservableList<Manufacturer> getAllNameManufacturer() throws SQLException {
		ObservableList<Manufacturer> listNameManufacturer= FXCollections.observableArrayList();
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		myConn = dataSource.getConnection();
		String sql = "select * from Manufacturers where Active=1";
		myStmt = myConn.createStatement();
		myRs = myStmt.executeQuery(sql);
		while (myRs.next()) {
			Manufacturer MNF = new Manufacturer();
			MNF.setName_Manufacturer(myRs.getString("Name_Manufacturer"));
			MNF.setId_Manufacturer(myRs.getString("Id_Manufacturer"));
			listNameManufacturer.add(MNF);
		}
		myConn.close();
		myRs.close();
		myStmt.close();
		return listNameManufacturer;
	}
	
	
	
	public String getIdManufacturerWithName(String nameManufacturer) throws SQLException {
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		String idManufacturer = null;
		myConn = dataSource.getConnection();
		String sql = "select Id_Manufacturer from "
				+ "Manufacturers where Name_Manufacturer='"+nameManufacturer+"' and Active = 1";
		myStmt = myConn.createStatement();
		myRs = myStmt.executeQuery(sql);
		while (myRs.next()) {
			idManufacturer=myRs.getString("Id_Manufacturer");
		}
		myConn.close();
		myRs.close();
		myStmt.close();
		return idManufacturer;
		
	}
	public ObservableList<Roles> getAllRoles() throws SQLException {
		ObservableList<Roles> listRoles = FXCollections.observableArrayList();
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		myConn = dataSource.getConnection();
		String sql = "select * from Roles";
		myStmt = myConn.createStatement();
		myRs = myStmt.executeQuery(sql);
		while (myRs.next()) {
			Roles role = new Roles();
			role.setId_Customer(myRs.getString("Id_Customer"));
			role.setUsername(myRs.getString("Username"));
			role.setRole_Value(Integer.parseInt(myRs.getString("Value_Role")));
			String binary=GetRoleBinary.getBinary(Integer.parseInt(myRs.getString("Value_Role")));
			role.setC_Register(false);
			role.setR_Register(false);
			role.setU_Register(false);
			role.setD_Register(false);
			role.setTest_Value(binary);
			if(String.valueOf(binary.charAt(0)).equals("1")) {
				role.setC_Register(true);
			}
			if(String.valueOf(binary.charAt(1)).equals("1")) {
				role.setR_Register(true);
			}
			if(String.valueOf(binary.charAt(2)).equals("1")) {
				role.setU_Register(true);
			}
			if(String.valueOf(binary.charAt(3)).equals("1")) {
				role.setD_Register(true);
			}
			listRoles.add(role);
		}
		myConn.close();
		myRs.close();
		myStmt.close();
		return listRoles;
	}

}
