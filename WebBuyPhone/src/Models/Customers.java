package Models;

import javafx.beans.property.BooleanProperty;
import javafx.beans.property.SimpleBooleanProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Customers {
	private StringProperty ID;
	private StringProperty Username;
	private StringProperty Password;
	private StringProperty Phone;
	private StringProperty Name;
	private StringProperty Email;
	private StringProperty Birthday;
	private BooleanProperty Sex;		
	private StringProperty Address;
	private StringProperty Passport;
	
	public Customers() {
		
	}
	public String getID() {
		return ID.get();
	}
	public void setID(String ID) {
		this.ID=new SimpleStringProperty(ID);
	}
	public String getUsername() {
		return Username.get();
	}
	public void setUsername(String Username) {
		this.Username=new SimpleStringProperty(Username);
	}
	public String getPassword() {
		return Password.get();
	}
	public void setPassword(String Password) {
		this.Password=new SimpleStringProperty(Password);
	}
	public String getPhone() {
		return Phone.get();
	}
	public void setPhone(String Phone) {
		this.Phone=new SimpleStringProperty(Phone);
	}
	public String getName() {
		return Name.get();
	}
	public void setName(String Name) {
		this.Name=new SimpleStringProperty(Name);
	}
	public String getEmail() {
		return Email.get();
	}
	public void setEmail(String Email) {
		this.Email=new SimpleStringProperty(Email);
	}
	public String getBirthday() {
		return Birthday.get();
	}
	public void setBirthday(String Birthday) {
		this.Birthday=new SimpleStringProperty(Birthday);
	}
	public Boolean getSex() {
		return Sex.get();
	}
	public void setSex(Boolean Sex) {
		this.Sex=new SimpleBooleanProperty(Sex);
	}
	public String getAddress() {
		return Address.get();
	}
	public void setAddress(String Address) {
		this.Address=new SimpleStringProperty(Address);
	}
	public String getPassport() {
		return Passport.get();
	}
	public void setPassport(String Passport) {
		this.Passport=new SimpleStringProperty(Passport);
	}
}
