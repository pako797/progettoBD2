package Beans;

public class Admin {
	
	private String user;
	private String password;
	
	public Admin(String user, String password) {
		this.user=user;
		this.password=password;
		// TODO Auto-generated constructor stub
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
