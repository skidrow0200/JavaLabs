package domain;

public class Services {
	private Long id;
	 private String serviceName;
	 private Integer price;
	 private Long duration;
	 private Long idMaster;
	 private Masters master;
	 
	 public Services() {
	}

	 public Services(String serviceName, Integer price, Long duration, Masters master) {
		 this.serviceName = serviceName;
		 this.price = price;
		 this.duration = duration;
		 this.master = master;
	 }

	 public Services(String serviceName, Integer price, Long duration, Long idMaster, Masters master) {
		 this.serviceName = serviceName;
		 this.price = price;
		 this.duration = duration;
		 this.idMaster = idMaster;
		 this.master = master;
	 }

	 public Services(Long id, String serviceName, Integer price, Long duration, Long idMaster, Masters master) {
	 this.id = id;
	 this.serviceName = serviceName;
	 this.price = price;
	 this.duration = duration;
	 this.idMaster = idMaster;
	 this.master = master;
	 }


	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	
	public Integer getPrice() {
	return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Long getDuration() {
		return duration;
	}
	public void setDuration(Long duration) {
	this.duration = duration;
	}


	
	public Masters master () {
		return master;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public String getMaster() {
	return master.getMasterName();
	}
	public void setMaster(Masters master) {
	this.master = master;
	}
	public Long getIdMaster() {
	return idMaster;
	}
	public void setIdMaster(Long idMaster) {
	this.idMaster = idMaster;
	}
	
	@Override
	public String toString() {
	return "Service {" + "Id = " + id +
	", serviceName = " + serviceName +
	", price = " + price +
	", duration = " + duration +
	", idMaster = " + idMaster +
	", masterName = " + getMaster() +
	"}";
	}
}
