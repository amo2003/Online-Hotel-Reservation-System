package admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import UserPackage.UserModel;
import feedback.feedbackModel;

public class adminController {
    
    // Connection DB
 private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert Data Function
    public static boolean insertdata(String name, String gmail, String password, String phone) {
        boolean isSuccess = false;
        try {
            con = DBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "INSERT INTO admin VALUES (0, '" + name + "', '" + gmail + "', '" + password + "', '" + phone + "')";
            int rs = stmt.executeUpdate(sql);
            isSuccess = rs > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
    
    // Login Validate Function
    public static List<adminModel> loginValidate(String gmail, String password) {
        ArrayList<adminModel> admin = new ArrayList<>();
        try {
            con = DBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM admin WHERE gmail = '" + gmail + "' AND password = '" + password + "'";
            rs = stmt.executeQuery(sql); // FIXED: executeQuery instead of executeUpdate

            while (rs.next()) {
            	 int id =rs.getInt(1);
                 String name =rs.getString(2);
                 String email =rs.getString(3);
                 String pass =rs.getString(4);
                 String phone=rs.getString(5);
                 
                 adminModel u =new adminModel(id,name,email,pass,phone);
                 admin.add(u);
                 
                 
               }
               
         }catch(Exception e) {
           e.printStackTrace();
         }
         return admin;
         
       }
}
