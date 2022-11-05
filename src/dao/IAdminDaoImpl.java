package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Admin;


public class IAdminDaoImpl implements IAdminDAO {

	@Override
	public Admin getAdmin(String login, String pwd) {
		Connection connection= DAOFACTORY.getConnection();
		Admin c  = new Admin();
		try {
			PreparedStatement ps = connection.prepareStatement 
					("SELECT *  FROM admin  WHERE Email=? and Password=?");	
			ps.setString(1, login);
			ps.setString(2, pwd);
            ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				c.setEmail(rs.getString("Email"));
				c.setPassword(rs.getString("Password"));	
				c.setNom(rs.getString("nom"));
			}			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c;
	}

	@Override
	public boolean login(String login, String pwd) {
		boolean a=false;		
		Connection connection = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps  = connection.prepareStatement("SELECT Password FROM admin WHERE Email=? ");
			ps.setString(1, login);
			ResultSet rs = ps.executeQuery();
			if(rs.next() && (rs.getString("Password")).equals(pwd) ){
				a=true;	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}

	@Override
	public Admin chercherAdmin(String loginAdmin) {
		Admin ad = null ; 
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps = connexion.prepareStatement( 
					" select * from admin where Email=? ");
			ps.setString(1, loginAdmin);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				ad  = new Admin();
				ad.setIdAdmin(rs.getInt("idAdmin"));
				ad.setEmail(rs.getString("Email"));
				ad.setPassword(rs.getString("Password"));
				ad.setNom(rs.getString("nom"));
				
			}
			  ps.close();


		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ad;
	
	}

	@Override
	public void modifierAdmin(Admin ad) {
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement("update admin \r\n" + 
					"set  Email=? , Password=? ;");
			
			ps.setString(1, ad.getEmail());
			ps.setString(2, ad.getPassword());
			
			
			ps.executeUpdate();
	        ps.close();
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}
	}
	
	////
	@Override
	public void ajouterAdmin(Admin ca) {
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement(" insert into admin(email,password,nom)  values(?,?,?)"); 
			ps.setString(1, ca.getEmail());
			ps.setString(2, ca.getPassword());
			ps.setString(3, ca.getNom());
			ps.executeUpdate();
	        ps.close();
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("error");
	}
	}

	
	@Override
	public List<Admin> listeAdmin() {
		List<Admin> Categories = new ArrayList<Admin>();
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement("select * from admin ");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Admin ca=new Admin();
				ca.setIdAdmin(rs.getInt("id"));
				ca.setNom(rs.getString("nom"));
				ca.setEmail(rs.getString("email"));
				ca.setPassword(rs.getString("password"));
				Categories.add(ca);
			}
			ps.close();
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}
		return Categories;
	}

	@Override
	public void supprimerAdmin(int numCa) {
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement("delete  from admin where  Id=? ; ");
			ps.setInt(1, numCa);
			ps.executeUpdate();
	        ps.close();
			
		
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("error");
	}
	}

}
