package HotelManagement;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HotelController {
	// Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// Insert Data Function
	public static boolean insertdata(String name, String location, String rooms, String category, String price) {

		boolean isSuccess = false;

		try {
			// DB CONNECTION CALL
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			// SQL QUERY
			String sql = "insert into addnewhotel values(0,'" + name + "','" + location + "','" + rooms + "','"
					+ category + "','" + price + "')";
			int rs = stmt.executeUpdate(sql);
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	// GetById
	public static List<HotelModel> getById(String Id) {
		int convertedID = Integer.parseInt(Id);
		ArrayList<HotelModel> hotel = new ArrayList<>();

		try {
			// DBConnection
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			// Query
			String sql = "select * from addnewhotel where id '" + convertedID + "' ";

			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String location = rs.getString(3);
				String rooms = rs.getString(4);
				String category = rs.getString(5);
				String price = rs.getString(6);

				HotelModel NewHotel = new HotelModel(id, name, location, rooms, category, price);
				hotel.add(NewHotel);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return hotel;
	}

	// GetAll data
	public static List<HotelModel> getAllHotel() {
		ArrayList<HotelModel> hotels = new ArrayList<>();
		try {
			// DBConnection
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			// Query
			String sql = "select * from addnewhotel ";

			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String location = rs.getString(3);
				String rooms = rs.getString(4);
				String category = rs.getString(5);
				String price = rs.getString(6);

				HotelModel NewHotel = new HotelModel(id, name, location, rooms, category, price);
				hotels.add(NewHotel);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return hotels;
	}

	// Update Data
	public static boolean updatedata(String id, String name, String location, String rooms, String category,
			String price) {
		try {
			// DBConnection
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			// SQL Query
			String sql = "Update addnewhotel set name ='" + name + "',location='" + location + "',  rooms= '" + rooms
					+ "', category= '" + category + "',price='" + price + "' " + "where id='" + id + "' ";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;

	}

	// Delete Data
	public static boolean deletedata(String id) {
		int convID = Integer.parseInt(id);
		try {
			// DBConnection
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "delete from addnewhotel where id ='" + convID + "'";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;

	}

}
