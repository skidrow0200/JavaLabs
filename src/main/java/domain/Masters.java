package domain;

public class Masters {
	private Long id;
	private String masterName;
	private String position;
	private String phone;

	
	 private Masters master;
	 	public Masters() {
	}

	 public Masters(String masterName, String position, String phone) {
		 this.masterName = masterName;
		 this.position = position;
		 this.phone = phone;
	 }

	 public Masters(Long id, String masterName, String position, String phone) {
		 this.id = id;
		 this.masterName = masterName;
		 this.position = position;
		 this.phone = phone;
	 }


	public String getMasterName() {
		return masterName;
	}
	public void setMasterName(String masterName) {
		this.masterName = masterName;
	}
	
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
	this.position = position;
	}
	public String getPhone() {
	return phone;
	}
	public void setPhone(String phone) {
	this.phone = phone;
	}

	public Long getId() {
	return id;
	}
	public void setId(Long id) {
	this.id = id;
	}

	
	@Override
	public String toString() {
	return "Masters {" + "Id = " + id +
	", masterName = " + masterName +
	", position = " + position +
	", phone = " + phone +
	"}";
	}
}
