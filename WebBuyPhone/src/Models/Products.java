package Models;

import javafx.beans.property.BooleanProperty;
import javafx.beans.property.DoubleProperty;
import javafx.beans.property.SimpleBooleanProperty;
import javafx.beans.property.SimpleDoubleProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class Products {
	private StringProperty ID;
	private StringProperty Name;
	private StringProperty Manufacturer;
	private DoubleProperty Price;
	private StringProperty Image;
	private StringProperty NewFeature;
	private StringProperty Details;
	private StringProperty Screen;
	private StringProperty Operating;
	private StringProperty FrontCamera;
	private StringProperty RearCamera;
	private StringProperty CPU;
	private StringProperty RAM;
	private StringProperty InternalMemory;
	private StringProperty MemoryStick;
	private StringProperty SIM;
	private StringProperty Battery;
	private BooleanProperty Active;

	public Products() {
	}

	public String getScreen() {
		return Screen.get();
	}

	public void setScreen(String Screen) {
		this.Screen = new SimpleStringProperty(Screen);
	}
	
	
	public String getOperating() {
		return Operating.get();
	}

	public void setOperating(String Operating) {
		this.Operating = new SimpleStringProperty(Operating);
	}
	
	public String getFrontCamera() {
		return FrontCamera.get();
	}

	public void setFrontCamera(String FrontCamera) {
		this.FrontCamera = new SimpleStringProperty(FrontCamera);
	}
	
	public String getRearCamera() {
		return RearCamera.get();
	}

	public void setRearCamera(String RearCamera) {
		this.RearCamera = new SimpleStringProperty(RearCamera);
	}
	
	public String getCPU() {
		return CPU.get();
	}

	public void setCPU(String CPU) {
		this.CPU = new SimpleStringProperty(CPU);
	}
	
	public String getRAM() {
		return RAM.get();
	}

	public void setRAM(String RAM) {
		this.RAM = new SimpleStringProperty(RAM);
	}
	
	public String getInternalMemory() {
		return InternalMemory.get();
	}

	public void setInternalMemory(String InternalMemory) {
		this.InternalMemory = new SimpleStringProperty(InternalMemory);
	}

	public String getMemoryStick() {
		return MemoryStick.get();
	}

	public void setMemoryStick(String MemoryStick) {
		this.MemoryStick = new SimpleStringProperty(MemoryStick);
	}

	public String getSIM() {
		return SIM.get();
	}

	public void setSIM(String SIM) {
		this.SIM = new SimpleStringProperty(SIM);
	}

	public String getBattery() {
		return Battery.get();
	}

	public void setBattery(String Battery) {
		this.Battery = new SimpleStringProperty(Battery);
	}

	public Boolean getActive() {
		return Active.get();
	}

	public void setActive(Boolean Active) {
		this.Active = new SimpleBooleanProperty(Active);
	}

	public String getNewFeature() {
		return NewFeature.get();
	}

	public void setNewFeature(String NewFeature) {
		this.NewFeature = new SimpleStringProperty(NewFeature);
	}

	public String getDetails() {
		return Details.get();
	}

	public void setDetails(String Details) {
		this.Details = new SimpleStringProperty(Details);
	}

	public Double getPrice() {
		return Price.get();
	}

	public void setPrice(Double Price) {
		this.Price = new SimpleDoubleProperty(Price);
	}

	public String getID() {
		return ID.get();
	}

	public void setID(String ID) {
		this.ID = new SimpleStringProperty(ID);
	}

	public String getManufacturer() {
		return Manufacturer.get();
	}

	public void setManufacturer(String Manufacturer) {
		this.Manufacturer = new SimpleStringProperty(Manufacturer);
	}

	public String getImage() {
		return Image.get();
	}

	public void setImage(String Image) {
		this.Image = new SimpleStringProperty(Image);
	}

	public String getName() {
		return Name.get();
	}

	public void setName(String Name) {
		this.Name = new SimpleStringProperty(Name);
	}
}
