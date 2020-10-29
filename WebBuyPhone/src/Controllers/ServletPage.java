package Controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import Models.DAO;
import Models.DaoPageAdmin;
import Models.Manufacturer;
import Models.Products;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/ServletPage")

public class ServletPage extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private DAO dao;
	private DaoPageAdmin daoAdmin;
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
		dao = new DAO(dataSource);
		daoAdmin = new DaoPageAdmin(dataSource);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LoadManufacturer(request,response);
		Cookie[] theCookieLoop=request.getCookies();
		boolean check=false;
		if(theCookieLoop !=null) {
			for(Cookie tempCookie:theCookieLoop) {
				if("checklogin".equals(tempCookie.getName())) {
					check=true;
					break;
				}
			}
		}
		
		if(!check) {
			theCookie =new Cookie("checklogin","false");
			theCookie.setMaxAge(60*60*24*365);
			response.addCookie(theCookie);
		}
		try {
			// read the "command" parameter
			String theCommand = request.getParameter("command");
			
			// if the command is missing, then default to listing students
			if (theCommand == null) {
				theCommand = "home";
			}
			
			// route to the appropriate method
			switch (theCommand) {
			case "home":
				LoadManufacturer(request,response);
				home(request,response);
				break;
			case "login":
				LoadManufacturer(request,response);
				login(request, response);
				break;
			case "pageRegister":
				LoadManufacturer(request,response);
				pageRegister(request, response);
				break;
			case "pageLogin":
				LoadManufacturer(request,response);
				pageLogin(request, response);
				break;
			case "logout":
				LoadManufacturer(request,response);
				logout(request, response);
				break;
			case "change":
				LoadManufacturer(request,response);
				change(request, response);
				break;
			case "submit":
				LoadManufacturer(request,response);
				submit(request, response);
				break;
			case "register":
				LoadManufacturer(request,response);
				register(request, response);
				break;
			case "viewProduct":
				LoadManufacturer(request,response);
				viewProducts(request, response);
				break;
			default:
				LoadManufacturer(request,response);
				home(request, response);
			}
				
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}

	private void viewProducts(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		ObservableList<Products> list_products = FXCollections.observableArrayList();
		list_products = daoAdmin.getAllProducts(request.getParameter("nameManufacturer"));
		request.getSession().setAttribute("LIST_PRODUCTS", list_products);
		response.sendRedirect("viewProduct.jsp");
	}
	private void pageLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.sendRedirect("Login.jsp");
	}
	private void register(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		boolean Sex = false;
		if(request.getParameter("Sex").equals("Male")) {
			Sex=true;
		}
		dao.Register(request.getParameter("userName"), request.getParameter("password"),
			request.getParameter("fullName"), request.getParameter("phone"), 
				request.getParameter("email"), request.getParameter("Address"),  request.getParameter("birthday"),
			request.getParameter("Passport"),Sex);
		home(request, response);
	}
	private void submit(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		// TODO Auto-generated method stub
		dao.UpdateLogin(request.getAttribute("usernameLogin"),request.getParameter("password") );
		home(request, response);
	}
	private void change(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("/change.jsp");
		dispatcher.forward(request, response);
	}
	private void pageRegister(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		// TODO Auto-generated method stub
		//
		response.sendRedirect("register.jsp");
	}
	private void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("home.jsp");
	}
	private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
		
		Cookie[] theCookieLoop=request.getCookies();
		if(theCookieLoop !=null) {
			for(Cookie tempCookie:theCookieLoop) {
				if("checklogin".equals(tempCookie.getName())) {
					tempCookie.setValue("false");
					response.addCookie(tempCookie);
					break;
				}
			}
		}
		home(request, response);
		
		
	}
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		// TODO Auto-generated method stub
		boolean check;
		check=dao.Login(request.getParameter("username"),request.getParameter("password"));
		if(check) {
			Cookie[] theCookieLoop=request.getCookies();
			if(theCookieLoop !=null) {
				for(Cookie tempCookie:theCookieLoop) {
					if("checklogin".equals(tempCookie.getName())) {
						tempCookie.setValue("true");
						response.addCookie(tempCookie);
						break;
					}
				}
			}
			theCookie =new Cookie("userlogin",request.getParameter("username"));
			theCookie.setMaxAge(60*60*24*365);
			response.addCookie(theCookie);
			RequestDispatcher di=request.getRequestDispatcher("home.jsp");
			di.forward(request,response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void LoadManufacturer(HttpServletRequest request, HttpServletResponse response) {
		ObservableList<Manufacturer> list_Manufacturer= FXCollections.observableArrayList();
		try {
			list_Manufacturer = daoAdmin.getAllNameManufacturer();
			request.getSession().setAttribute("List_Manufacturer", list_Manufacturer);
		} catch (SQLException e3) {
			// TODO Auto-generated catch 
			e3.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}