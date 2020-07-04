package user;

public class User {
	private String UserID,userName,userRealName,userSex,userHome,userEMail,userPhone,password;

	public User(String userID, String userName, String userRealName, String userSex, String userHome, String userEMail,
			String userPhone, String password) {
		super();
		UserID = userID;
		this.userName = userName;
		this.userRealName = userRealName;
		this.userSex = userSex;
		this.userHome = userHome;
		this.userEMail = userEMail;
		this.userPhone = userPhone;
		this.password = password;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserID() {
		return UserID;
	}

	public void setUserID(String userID) {
		UserID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserRealName() {
		return userRealName;
	}

	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserHome() {
		return userHome;
	}

	public void setUserHome(String userHome) {
		this.userHome = userHome;
	}

	public String getUserEMail() {
		return userEMail;
	}

	public void setUserEMail(String userEMail) {
		this.userEMail = userEMail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public User() {
		
	}
	public String toString() {
		return ""+UserID+userName+userRealName+userHome+userEMail+userPhone+userSex;
	}
}
