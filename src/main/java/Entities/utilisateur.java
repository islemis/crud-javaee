package Entities;

public class utilisateur {

	private String name;
	private String password;
	private String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean verifierIdentifiants() {
		if(this.name.equals("admin@gmail.com")&&(this.password.equals("admin")))
			return true;
		else 
			return false;	}
	}
