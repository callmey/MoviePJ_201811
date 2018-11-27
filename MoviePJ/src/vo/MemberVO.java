package vo;

public class MemberVO {
	private int id;
	private String memberid;
	private String memberpw;
	
	public MemberVO(int id, String memberid, String memberpw) {
		super();
		this.id = id;
		this.memberid = memberid;
		this.memberpw = memberpw;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getMemberpw() {
		return memberpw;
	}

	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
	}
}
