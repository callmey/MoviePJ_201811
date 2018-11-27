package vo;

public class MovieScreenVO {
	private int id;
	private int m_id;
	private int s_id;
	private String date;
	private String time;
	
	public MovieScreenVO(int id, int m_id, int s_id, String date, String time) {
		super();
		this.id = id;
		this.m_id = m_id;
		this.s_id = s_id;
		this.date = date;
		this.time = time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getM_id() {
		return m_id;
	}

	public void setM_id(int m_id) {
		this.m_id = m_id;
	}

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
}
