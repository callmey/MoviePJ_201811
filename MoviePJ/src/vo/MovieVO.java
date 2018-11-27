package vo;

public class MovieVO {
	private int id;
	private String name;
	private String outline;
	private String director;
	private String actor;
	private String filmrate;
	private String highlight;
	private String summary;
	private String image;

	public MovieVO(int id, String name, String outline, String director, String actor, String filmrate,
			String highlight, String summary, String image) {
		super();
		this.id = id;
		this.name = name;
		this.outline = outline;
		this.director = director;
		this.actor = actor;
		this.filmrate = filmrate;
		this.highlight = highlight;
		this.summary = summary;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOutline() {
		return outline;
	}

	public void setOutline(String outline) {
		this.outline = outline;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getFilmrate() {
		return filmrate;
	}

	public void setFilmrate(String filmrate) {
		this.filmrate = filmrate;
	}

	public String getHighlight() {
		return highlight;
	}

	public void setHighlight(String highlight) {
		this.highlight = highlight;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
}
