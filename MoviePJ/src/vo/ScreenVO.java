package vo;

public class ScreenVO {
	private int id;
	private int t_id;
	private int scrrennum;
	private int seatnum;
	
	public ScreenVO(int id, int t_id, int scrrennum, int seatnum) {
		super();
		this.id = id;
		this.t_id = t_id;
		this.scrrennum = scrrennum;
		this.seatnum = seatnum;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getT_id() {
		return t_id;
	}

	public void setT_id(int t_id) {
		this.t_id = t_id;
	}

	public int getScrrennum() {
		return scrrennum;
	}

	public void setScrrennum(int scrrennum) {
		this.scrrennum = scrrennum;
	}

	public int getSeatnum() {
		return seatnum;
	}

	public void setSeatnum(int seatnum) {
		this.seatnum = seatnum;
	}
}
