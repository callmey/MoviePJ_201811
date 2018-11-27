package vo;

public class SeatVO {
	private int id;
	private int s_id;
	private String seatname;
	private int reservation;
	
	public SeatVO(int id, int s_id, String seatname, int reservation) {
		super();
		this.id = id;
		this.s_id = s_id;
		this.seatname = seatname;
		this.reservation = reservation;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public String getSeatname() {
		return seatname;
	}

	public void setSeatname(String seatname) {
		this.seatname = seatname;
	}

	public int getReservation() {
		return reservation;
	}

	public void setReservation(int reservation) {
		this.reservation = reservation;
	}
}
