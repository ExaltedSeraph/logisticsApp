package dao;

import java.util.List;

import beans.Admin;


public interface IAdminDAO {

	public Admin getAdmin(String email, String pwd);	
	public boolean login(String email, String pwd);
	public Admin chercherAdmin(String loginAdmin);
	public void modifierAdmin(Admin ad);
	void ajouterAdmin(Admin ad);
	List<Admin> listeAdmin();
	void supprimerAdmin(int idAdmin);
}
