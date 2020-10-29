package Controllers;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.DataSource;

import Functions.MD5Encrypt;
import Functions.Mail;
import javax.servlet.annotation.MultipartConfig;
import Models.DaoPageAdmin;
import Models.Manufacturer;
import Models.Products;
import Models.Roles;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
/**
 * Servlet implementation class ServletPageAdmin
 */
@WebServlet("/ServletPageAdmin")
@MultipartConfig (fileSizeThreshold=1024*1024*2,
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*50)
public class ServletPageAdmin extends HttpServlet {
	private static final String SAVE_DIR ="Image";
	private static final long serialVersionUID = 1L;
	private DaoPageAdmin daoPageAdmin;
	private Cookie theCookie;
	@Resource(name="JDBC/WebBuyPhone")
	private DataSource dataSource;
    /**
     * @see HttpServlet#HttpServlet()
     */
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		daoPageAdmin = new DaoPageAdmin(dataSource);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoadAllNameManufacturer(request,response);
		Cookie[] theCookieLoop=request.getCookies();
		boolean checkLoginAdmin=false;
		if(theCookieLoop !=null) {
			for(Cookie tempCookie:theCookieLoop) {
				if("checkLoginPageAdmin".equals(tempCookie.getName())) {
					checkLoginAdmin=true;
					break;
				}
			}
		}
		
		if(!checkLoginAdmin) {
			theCookie =new Cookie("checkLoginPageAdmin","false");
			theCookie.setMaxAge(60*60*24*365);
			response.addCookie(theCookie);
		}
		
		
		theCookieLoop=request.getCookies();//tạo một cái mảng cookie có 
		boolean check=false;					//có tên là theCookieloop sau đó lấy ra các đối tượng trong mảng Cookie
		if(theCookieLoop !=null) {
			for(Cookie tempCookie:theCookieLoop)//dùng để duyệt qu các mảng cookie 
				{
				if("tagProduct".equals(tempCookie.getName())) {
					check=true;
					break;
				}
			}
		}
		//nếu tagProduct chưa dc tạo thì ta phải tạo một tagProduct ở bên dưới
		if(!check) {
			theCookie =new Cookie("tagProduct","null");
			theCookie.setMaxAge(60*60*24*365);
			response.addCookie(theCookie);
		}
		
		theCookieLoop=request.getCookies();//tạo một cái mảng cookie có 
		boolean checkUser=false;					//có tên là theCookieloop sau đó lấy ra các đối tượng trong mảng Cookie
		if(theCookieLoop !=null) {
			for(Cookie tempCookie:theCookieLoop)//dùng để duyệt qu các mảng cookie 
				{
				if("UserLoginAdmin".equals(tempCookie.getName())) {
					checkUser=true;
					break;
				}
			}
		}
		//nếu tagProduct chưa dc tạo thì ta phải tạo một tagProduct ở bên dưới
		if(!checkUser) {
			theCookie =new Cookie("UserLoginAdmin","null");
			theCookie.setMaxAge(60*60*24*365);
			response.addCookie(theCookie);
		}
		
		theCookieLoop=request.getCookies();//tạo một cái mảng cookie có 
		boolean checkIdManufacturer=false;					//có tên là theCookieloop sau đó lấy ra các đối tượng trong mảng Cookie
		if(theCookieLoop !=null) {
			for(Cookie tempCookie:theCookieLoop)//dùng để duyệt qu các mảng cookie 
				{
				if("idManufacturer".equals(tempCookie.getName())) {
					checkIdManufacturer=true;
					break;
				}
			}
		}
		//nếu tagProduct chưa dc tạo thì ta phải tạo một tagProduct ở bên dưới
		if(!checkIdManufacturer) {
			theCookie =new Cookie("idManufacturer","null");
			theCookie.setMaxAge(60*60*24*365);
			response.addCookie(theCookie);
		}
		
		String theCommand = request.getParameter("command");
		
		// if the command is missing, then default to listing students
		if (theCommand == null) {
			theCommand = "home";
		}
		
		// route to the appropriate method
		switch (theCommand) {
		case "LoadPageRole":
			try {
				LoadPageRole(request, response);
			} catch (SQLException e4) {
				// TODO Auto-generated catch block
				e4.printStackTrace();
			}
			break;
		case "loadtagProduct":
			LoadAllNameManufacturer(request,response);
			home(request, response);
			break;
		case "LoadPageHome":
			home(request, response);
			break;
		case "registerAdmin":
			try {
				RegisterAdmin(request, response);
			} catch (SQLException e3) {
				// TODO Auto-generated catch block
				e3.printStackTrace();
			}
			break;
		case "LoadPageRegister":
			LoadPageRegister(request, response);
			break;
		case "home":
			home(request, response);
			break;
		case "loginPageAdmin":
			try {
				loginAdmin(request, response);
			} catch (SQLException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
			break;
		case "logout":
			logout(request, response);
			break;	
		case "pageManufacturer":
			pageManufacturer(request, response);
			break;	
		case "addManufacturer":
			try {
				addManufacturer(request, response);
			} catch (SQLException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
			break;	
		case "productPhone":
			try {
				theCookieLoop=request.getCookies();
				if(theCookieLoop !=null) {
					for(Cookie tempCookie:theCookieLoop)//dùng để duyệt qua các mảng cookie 
						{
						if("tagProduct".equals(tempCookie.getName())) {
							tempCookie.setValue(request.getParameter("nameManufacturer"));
							response.addCookie(tempCookie);
							break;
						}
					}
					for(Cookie tempCookie:theCookieLoop)//dùng để duyệt qua các mảng cookie 
					{
						if("idManufacturer".equals(tempCookie.getName())) {
							tempCookie.setValue(request.getParameter("idManufacturer"));
							response.addCookie(tempCookie);
							break;
						}
					}
				}
				pageProduct(request, response);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			break;
		case "addProduct":
			try {
				addProduct(request, response);
			} catch (NumberFormatException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "LoadProduct":
			try {
				listProduct(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case"Update":
			try {
				updateProduct(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case"delete":
			try {
				deleteProduct(request,response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		default:
			home(request, response);
		}
	}

	private void LoadPageRole(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		ObservableList<Roles> list_Roles = FXCollections.observableArrayList();
		list_Roles = daoPageAdmin.getAllRoles();
		request.getSession().setAttribute("List_Roles", list_Roles);
		response.sendRedirect("/WebBuyPhone/admin/ListRole.jsp");
	}
	private void LoadPageRegister(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.sendRedirect("/WebBuyPhone/admin/RegisterAdmin.jsp");
	}
	private void RegisterAdmin(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		boolean Sex = false;
		if(request.getParameter("Sex").equals("Male")) {
			Sex=true;
		}
		String user = request.getParameter("userName");
		String pass = request.getParameter("password");
		String passHash =MD5Encrypt.hashPass(pass);
		try {
			Mail.send_Email_Without_Attach(request.getParameter("email"),"Account Login", "Username: "+user + " password: "+pass);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		daoPageAdmin.Register(user, passHash,
			request.getParameter("fullName"), request.getParameter("phone"), 
				request.getParameter("email"), request.getParameter("Address"),  request.getParameter("birthday"),
			request.getParameter("Passport"),Sex);
		response.sendRedirect("/WebBuyPhone/admin/RegisterAdmin.jsp");
		
	}
	private void addManufacturer(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		daoPageAdmin.Add_Manufacturer(request.getParameter("NameManufacturer"));
		LoadAllNameManufacturer(request,response);
		response.sendRedirect("/WebBuyPhone/admin/PageManufacturer.jsp");
		
	}
	private void pageManufacturer(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("/WebBuyPhone/admin/PageManufacturer.jsp");
	}
	private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
	Cookie[] theCookieLoop=request.getCookies();
			if(theCookieLoop !=null) {
				for(Cookie tempCookie:theCookieLoop) {
					if("checkLoginPageAdmin".equals(tempCookie.getName())) {
						tempCookie.setValue("false");
						response.addCookie(tempCookie);
						break;
					}
				}
			}
			response.sendRedirect("admin/loginPageAdmin.jsp");
	}
	private void LoadAllNameManufacturer(HttpServletRequest request,HttpServletResponse response) {
		ObservableList<Manufacturer> list_Manufacturer= FXCollections.observableArrayList();
		try {
			list_Manufacturer = daoPageAdmin.getAllNameManufacturer();
			request.getSession().setAttribute("List_Manufacturer", list_Manufacturer);
		} catch (SQLException e3) {
			// TODO Auto-generated catch 
			e3.printStackTrace();
		}
	}
	private void loginAdmin(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String pass = request.getParameter("password");
		Cookie[] theCookieLoop=request.getCookies();
		
		if(username.equals("admin") && pass.equals("123456")) {
			if(theCookieLoop !=null) {
				for(Cookie tempCookie:theCookieLoop) {
					if("checkLoginPageAdmin".equals(tempCookie.getName())) {
						tempCookie.setValue("true");
						response.addCookie(tempCookie);
						break;
					}
				}
				for(Cookie tempCookie:theCookieLoop) {
					if("UserLoginAdmin".equals(tempCookie.getName())) {
						tempCookie.setValue(request.getParameter("username"));
						response.addCookie(tempCookie);
						break;
					}
				}
			}
			response.sendRedirect("/WebBuyPhone/admin/darkboard.jsp");
		}
		boolean check;
		check=daoPageAdmin.LoginPageAdmin(request.getParameter("username"),MD5Encrypt.hashPass(request.getParameter("password")));
		if(check) {
			theCookieLoop=request.getCookies();
			if(theCookieLoop !=null) {
				for(Cookie tempCookie:theCookieLoop) {
					if("checkLoginPageAdmin".equals(tempCookie.getName())) {
						tempCookie.setValue("true");
						response.addCookie(tempCookie);
						break;
					}
				}
				for(Cookie tempCookie:theCookieLoop) {
					if("UserLoginAdmin".equals(tempCookie.getName())) {
						tempCookie.setValue(request.getParameter("username"));
						response.addCookie(tempCookie);
						break;
					}
				}
			}
			theCookie =new Cookie("userLoginPageAdmin",request.getParameter("username"));
			theCookie.setMaxAge(60*60*24*365);
			response.addCookie(theCookie);
			response.sendRedirect("/WebBuyPhone/admin/darkboard.jsp");
		}
	}
	private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		// TODO Auto-generated method stub
		String theProduct=request.getParameter("deleteProduct");
		daoPageAdmin.DeleteProduct(theProduct);
		loadProduct(request, response);
	}
	private void listProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		
		Products info =new Products();
		try {
			
			Cookie[] theCookieLoop=request.getCookies();//tạo một cái mảng cookie có 
			boolean check=false;
								//có tên là theCookieloop sau đó lấy ra các đối tượng trong mảng Cookie
				if(theCookieLoop !=null) {
					for(Cookie tempCookie:theCookieLoop)//dùng để duyệt qu các mảng cookie 
						{
						if("ID".equals(tempCookie.getName())) {
							check=true;
							tempCookie.setValue(request.getParameter("idProduct"));
							response.addCookie(tempCookie);
							break;
						}
					}
				}
				if(!check) {
					theCookie=new Cookie("ID",request.getParameter("idProduct"));
					theCookie.setMaxAge(60*60*24*365);
					response.addCookie(theCookie);
				}
			info=daoPageAdmin.getProductWithId(request.getParameter("idProduct"));
			
			
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		request.getSession().setAttribute("LIST_PRODUCTS", info);
		response.sendRedirect("/WebBuyPhone/admin/Update.jsp");
	}
	
	private void pageProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
		// TODO Auto-generated method stub
		loadProduct(request, response);
		
	}
	
	private void addProduct(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, SQLException, ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Cookie[] theCookieLoop=request.getCookies();//tạo một cái mảng cookie có 
		String idManufacturer =null;
						//có tên là theCookieloop sau đó lấy ra các đối tượng trong mảng Cookie
		if(theCookieLoop !=null) {
			for(Cookie tempCookie:theCookieLoop)//dùng để duyệt qu các mảng cookie 
				{
				if("idManufacturer".equals(tempCookie.getName())) {
					idManufacturer=tempCookie.getValue();
					break;
				}
		}
		Part part = request.getPart("linkImage");
		String fileName = extractFileName(part);
		String savePath = "G:\\java\\WebBuyPhoneJavaFull\\WebBuyPhone\\WebContent\\admin" +File.separator + SAVE_DIR;
		part.write(savePath + File.separator + fileName);
		String location="Image/"+fileName;
		daoPageAdmin.Add_Product(request.getParameter("IdProduct"), request.getParameter("NameProduct")
				,idManufacturer, Double.parseDouble(request.getParameter("PriceProduct")), location,
				 request.getParameter("Newfeature"), request.getParameter("DetailsProduct"),request.getParameter("Screen"), request.getParameter("Operating"),
				 request.getParameter("FrontCamera"), request.getParameter("RearCamera"),request.getParameter("CPU"), request.getParameter("RAM"),
				 request.getParameter("InternalMemory"), request.getParameter("MemoryStick"),request.getParameter("SIM"), request.getParameter("BatteryCapacity"));
		loadProduct(request, response);
		}
		
	}
	private void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("/WebBuyPhone/admin/darkboard.jsp");
	}
	private void loadProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		
		// TODO Auto-generated method stub
		Cookie[] theCookieLoop=request.getCookies();//tạo một cái mảng cookie có 
		String manufacturer=null;

							//có tên là theCookieloop sau đó lấy ra các đối tượng trong mảng Cookie
			if(theCookieLoop !=null) {
				for(Cookie tempCookie:theCookieLoop)//dùng để duyệt qu các mảng cookie 
					{
					if("tagProduct".equals(tempCookie.getName())) {
						manufacturer=tempCookie.getValue();
						break;
					}
				}
			}
		ObservableList<Products> list_products = FXCollections.observableArrayList();
		String idManufacture= daoPageAdmin.getIdManufacturerWithName(manufacturer);
		list_products = daoPageAdmin.getAllProducts(idManufacture);
		request.getSession().setAttribute("LIST_PRODUCTS", list_products);
		response.sendRedirect("/WebBuyPhone/admin/viewProduct.jsp");
	}
	private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		Cookie[] theCookieLoop=request.getCookies();//tạo một cái mảng cookie có 
		String idProduct=null;
							//có tên là theCookieloop sau đó lấy ra các đối tượng trong mảng Cookie
			if(theCookieLoop !=null) {
				for(Cookie tempCookie:theCookieLoop)//dùng để duyệt qu các mảng cookie 
				{
					if("ID".equals(tempCookie.getName())) {
						idProduct=tempCookie.getValue();
						break;
					}
				}
			}
		
			
			String location =request.getParameter("linkIMG");
			if(location.equals("false"))  {
				Part part = request.getPart("linkImage");
				String fileName = extractFileName(part);
				String savePath = "G:\\java\\WebBuyPhoneJavaFull\\WebBuyPhone\\WebContent\\admin" +File.separator + SAVE_DIR;
				part.write(savePath + File.separator + fileName);
				location="Image/"+fileName;
			}
				daoPageAdmin.UpdateProduct(idProduct, request.getParameter("NameProduct")
						, Double.parseDouble(request.getParameter("PriceProduct")), location,
						 request.getParameter("Newfeature"), request.getParameter("DetailsProduct"),request.getParameter("Screen"), request.getParameter("Operating"),
						 request.getParameter("FrontCamera"), request.getParameter("RearCamera"),request.getParameter("CPU"), request.getParameter("RAM"),
						 request.getParameter("InternalMemory"), request.getParameter("MemoryStick"),request.getParameter("SIM"), request.getParameter("BatteryCapacity"));
			
			
		loadProduct(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for(String s : items) {
			if(s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=")+2,s.length() -1 );
			}
		}
		return "";
	}
}
