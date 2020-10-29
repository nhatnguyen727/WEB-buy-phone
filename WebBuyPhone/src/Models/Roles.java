package Models;

import javafx.beans.property.BooleanProperty;
import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleBooleanProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Roles {
	private StringProperty Id_Customer;
	private StringProperty Username;
	private IntegerProperty Role_Value;
	private BooleanProperty C_Register;
	private BooleanProperty R_Register;
	private BooleanProperty U_Register;
	private BooleanProperty D_Register;
	private StringProperty Test_Value;
	public String getTest_Value() {
		return Test_Value.get();
	}
	public void setTest_Value(String Test_Value) {
		this.Test_Value=new SimpleStringProperty(Test_Value);
	}
	public String getId_Customer() {
		return Id_Customer.get();
	}
	public void setId_Customer(String Id_Customer) {
		this.Id_Customer=new SimpleStringProperty(Id_Customer);
	}
	public Integer getRole_Value() {
		return Role_Value.get();
	}
	public void setRole_Value(Integer Role_Value) {
		this.Role_Value=new SimpleIntegerProperty(Role_Value);
	}
	public String getUsername() {
		return Username.get();
	}
	public void setUsername(String Username) {
		this.Username=new SimpleStringProperty(Username);
	}
	public Boolean getC_Register() {
		return C_Register.get();
	}
	public void setC_Register(Boolean C_Register) {
		this.C_Register=new SimpleBooleanProperty(C_Register);
	}
	public Boolean getR_Register() {
		return R_Register.get();
	}
	public void setR_Register(Boolean R_Register) {
		this.R_Register=new SimpleBooleanProperty(R_Register);
	}
	public Boolean getU_Register() {
		return U_Register.get();
	}
	public void setU_Register(Boolean U_Register) {
		this.U_Register=new SimpleBooleanProperty(U_Register);
	}
	public Boolean getD_Register() {
		return D_Register.get();
	}
	public void setD_Register(Boolean D_Register) {
		this.D_Register=new SimpleBooleanProperty(D_Register);
	}
}
	
