package kr.co.mlec.member;

public class MemberVO {

	private String id;
	private String password;
	
	public MemberVO() {
		
	}
	

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + "]";
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
