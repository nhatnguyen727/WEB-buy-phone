package Models;

import javafx.beans.property.BooleanProperty;
import javafx.beans.property.SimpleBooleanProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Manufacturer {
	private StringProperty Id_Manufacturer;
	private StringProperty Name_Manufacturer;
	private BooleanProperty Active;
	public String getId_Manufacturer() {
		return Id_Manufacturer.get();
	}

	public void setId_Manufacturer(String Id_Manufacturer) {
		this.Id_Manufacturer = new SimpleStringProperty(Id_Manufacturer);
	}

	public String getName_Manufacturer() {
		return Name_Manufacturer.get();
	}

	public void setName_Manufacturer(String Name_Manufacturer) {
		this.Name_Manufacturer = new SimpleStringProperty(Name_Manufacturer);
	}
	public Boolean getActive() {
		return Active.get();
	}

	public void setActive(Boolean Active) {
		this.Active = new SimpleBooleanProperty(Active);
	}
}
