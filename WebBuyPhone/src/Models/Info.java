package Models;

import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Info {
	private IntegerProperty ID;
	private StringProperty username;
	private StringProperty password;

public Integer getID() {
	return ID.get();
}

public void setID(Integer ID) {
	this.ID = new SimpleIntegerProperty(ID);
}

public String getusername() {
	return username.get();
}

public void setusername(String username) {
	this.username = new SimpleStringProperty(username);
}

public String getpassword() {
	return password.get();
}

public void setpassword(String password) {
	this.password = new SimpleStringProperty(password);
}
}