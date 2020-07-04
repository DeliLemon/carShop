package user;

public class Cartshop {
	int identifier;
	public int getIdentifier() {
		return identifier;
	}
	public void setIdentifier(int identifier) {
		this.identifier = identifier;
	}
	String carName;
	double price;
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	int count;
	public Cartshop(String name,int count,double price,int id) {
		this.carName=name;
		this.count=count;
		this.price=price;
		this.identifier=id;
	}
	public Cartshop() {
		
	}
	public String toString() {
		return getIdentifier()+"#"+getCarName()+"#"+getCount()+"#"+getPrice();
	}
}
