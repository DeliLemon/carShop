package user;

public class Car {
	public int getCarID() {
		return carID;
	}
	public void setCarID(int carID) {
		this.carID = carID;
	}
	public String getCarLevel() {
		return carLevel;
	}
	public void setCarLevel(String carLevel) {
		this.carLevel = carLevel;
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public double getCarPrice() {
		return carPrice;
	}
	public void setCarPrice(double carPrice) {
		this.carPrice = carPrice;
	}
	public String getCarImageurl() {
		return carImageurl;
	}
	public void setCarImageurl(String carImageurl) {
		this.carImageurl = carImageurl;
	}
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	private int carID;
	private String carName;
	private String carLevel;
	private String carType;
	private double carPrice;
	private String carImageurl;
	public Car () {
	}
	public Car(int carID, String carName, String carLevel, String carType, double carPrice, String carImageurl) {
		super();
		this.carID = carID;
		this.carName = carName;
		this.carLevel = carLevel;
		this.carType = carType;
		this.carPrice = carPrice;
		this.carImageurl = carImageurl;
	}
	public String toString() {
		return ""+carID+"#"+carName+"#"+carLevel+"#"+carType+"#"+carPrice+"#"+carImageurl;
	}
}
