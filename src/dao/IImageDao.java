package dao;
import java.util.List;

import beans.Image;
public interface IImageDao {
	
	public List<Image> listeImages();
	public Image getImage(int id) ;
	public void updateImage(Image img);


}
