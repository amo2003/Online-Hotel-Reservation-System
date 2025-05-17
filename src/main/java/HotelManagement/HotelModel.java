package HotelManagement;

public class HotelModel {
	
	private int id;
    private String name;
    private String location;
    private String rooms;
    private String category;
    private String price;
    
    
	public HotelModel(int id, String name, String location, String rooms, String category, String price) {
		super();
		this.id = id;
		this.name = name;
		this.location = location;
		this.rooms = rooms;
		this.category = category;
		this.price = price;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getRooms() {
		return rooms;
	}


	public void setRooms(String rooms) {
		this.rooms = rooms;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}
	
	
    
    
}
