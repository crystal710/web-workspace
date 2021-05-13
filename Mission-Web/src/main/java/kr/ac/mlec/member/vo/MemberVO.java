package kr.ac.mlec.member.vo;

public class MemberVO {

	private String id;
	private String name;
	private String password;
	private String email;
	private String post;
	private String regDate;
	
	public MemberVO() {

	}

	public MemberVO(String id, String name, String regDate) {
		super();
		this.id = id;
		this.name = name;
		this.regDate = regDate;
	}






	public MemberVO(String id, String name, String password, String email, String post,
			String regDate) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.post = post;
		this.regDate = regDate;
	}




	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", post="
				+ post + ", regDate=" + regDate + "]";
	}




	public String getId() {
		return id;
	}




	public void setId(String id) {
		this.id = id;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getPost() {
		return post;
	}




	public void setPost(String post) {
		this.post = post;
	}




	public String getRegDate() {
		return regDate;
	}




	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}



	
	
}
