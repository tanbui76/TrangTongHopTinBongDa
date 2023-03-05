package modal;

public class News {
	private int id;
	private String images;
	private String title;
	private String content;
	
	public News() {
		// TODO Auto-generated constructor stub
	}

	
	public News(int id, String images, String title, String content) {
		this.id = id;
		this.images = images;
		this.title = title;
		this.content = content;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}
