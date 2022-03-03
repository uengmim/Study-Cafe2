package user;

public class UserDTO {
	
	String US_ID;
	String US_PW;
	
	public String getUserID() {
		return US_ID;
	}
	public void setUserID(String US_ID) {
		this.US_ID = US_ID;
	}
	public String getUserPassword() {
		return US_PW;
	}	
	public void setUserPassword(String US_PW) {
		this.US_PW = US_PW;
	}
	
}

