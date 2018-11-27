package vo;

public class ReserveVO {
	private int ms_id;
	private int s_id;
	private int m_id;
	
	public ReserveVO(int ms_id, int s_id, int m_id) {
		super();
		this.ms_id = ms_id;
		this.s_id = s_id;
		this.m_id = m_id;
	}

	public int getMs_id() {
		return ms_id;
	}

	public void setMs_id(int ms_id) {
		this.ms_id = ms_id;
	}

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public int getM_id() {
		return m_id;
	}

	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
}
