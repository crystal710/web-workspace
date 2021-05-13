package kr.ac.mlec.login.vo;
// alt+shift+s -> c, o, r, s 
public class LoginVO {

	private String id;
	private String name;
	private String password;
	private String type;
	
	public LoginVO() {
		super();
	}

	public LoginVO(String id, String name, String password, String type) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.type = type;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", name=" + name + ", password=" + password + ", type=" + type + "]";
	}

	
}
