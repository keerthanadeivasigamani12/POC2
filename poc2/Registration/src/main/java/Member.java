
public class Member {
private String fname,lname, uname, password, phone;

	
	public Member() {
		super();
	}

	public Member(String fname,String lname,String uname, String password, String phone) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.uname = uname;
		this.password = password;
		this.phone = phone;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}