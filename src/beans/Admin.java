package beans;

public class Admin {
	private int idAdmin;
	private String email;
	private String password;
	private String nom; 
	
	
	
	public Admin(int idAdmin, String email, String password, String nom) {
		super();
		this.idAdmin = idAdmin;
		this.email = email;
		this.password = password;
		this.nom = nom;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getIdAdmin() {
		return idAdmin;
	}
	public void setIdAdmin(int idAdmin) {
		this.idAdmin = idAdmin;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	
	

}
