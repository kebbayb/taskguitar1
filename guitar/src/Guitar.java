

public class Guitar {
	//Guitar灞炴��
	private String ID;
	private String builder;
	private String type;
	private String backWood;
	
	private String price;
	
	public Guitar() {
	}
	
	public Guitar(String ID, String builder, String type, String backWood, String topWood,
			String price) {
		super();
		this.setID(ID);
		this.setBuilder(builder);
		this.setType(type);
		this.setBackWood(backWood);
		
		this.setPrice(price);
	}

	


	public String getBuilder() {
		return builder;
	}

	public void setBuilder(String builder) {
		this.builder = builder;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBackWood() {
		return backWood;
	}

	public void setBackWood(String backWood) {
		this.backWood = backWood;
	}

	

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}
	
}
