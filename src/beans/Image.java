package beans;
import java.sql.Blob;

public class Image {

	private int id;
	private String titre;
	private Blob img;
	
	public Image(int id, String titre, Blob img) {
		super();
		this.id = id;
		this.titre = titre;
		this.img = img;
	}

	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public Blob getImg() {
		return img;
	}

	public void setImg(Blob img) {
		this.img = img;
	}
	
	
	
	
}
