package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Image;

public final class IImageDaomImpl implements IImageDao {

	@Override
	public List<Image> listeImages() {
		List<Image> Images = new ArrayList<Image>();
		Connection connexion = DAOFACTORY.getConnection();
		try {
			PreparedStatement ps=connexion.prepareStatement("select * from data ");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Image ca=new Image();
				ca.setId(rs.getInt("id"));
				ca.setTitre(rs.getString("title"));
				ca.setImg(rs.getBlob("image"));
				Images.add(ca);
			}
			ps.close();
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}
		return Images;
	}


	@Override
	public Image getImage(int id) {

		Connection conn = DAOFACTORY.getConnection();
		Image s = null;
		try {
			PreparedStatement ps = conn.prepareStatement("SELECT * from data WHERE id=? ;");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();


			if(rs.next()) {
				s= new Image();
				s.setId(rs.getInt(1));
				s.setImg(rs.getBlob("image"));
				s.setTitre(rs.getString("title"));
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(s==null)throw new RuntimeException("Image "+id+" inexistante");

		return s;	
	}


	@Override
	public void updateImage(Image img) {
		Connection conn = DAOFACTORY.getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement("update data set image=?,title=? where id=?");

			ps.setBlob(1, img.getImg());
			ps.setString(2, img.getTitre());
			ps.setInt(3, img.getId());

			ps.executeUpdate();
			ps.close();

		} catch (SQLException e1) {
			e1.printStackTrace();
			System.out.println("Error updating Image");
		}
	}





}
