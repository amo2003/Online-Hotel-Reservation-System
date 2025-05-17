package Payment;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class paymentController {
   //Connect DB
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    
  //Insert Data Function
    public static boolean insertdata (String fullName, String email, String cardNumber, String expDate, String cvv, String amount) {
       
     boolean isSuccess = false;
     try {
      //DB CONNECTION CALL
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      //SQL QUERY
      String sql= "insert into payment values(0,'"+fullName+"','"+email+"','"+cardNumber+"','"+expDate+"','"+cvv+"','"+amount+"')";
      int rs = stmt.executeUpdate(sql);
      if(rs>0) {
       isSuccess = true;
      }
      else {
       isSuccess = false;
      }
      }catch(Exception e) 
     {
       e.printStackTrace();
      }
     return isSuccess;
     }
    
   

 //GetById
    
    public static List<paymentModel> getById (String Id){
     int convertedID = Integer.parseInt(Id);
     
     ArrayList <paymentModel> payment = new ArrayList<>();
     
     try {
     //DBConnection
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      
      //Query
      String sql = "select * from payment where id '"+convertedID+"'";
      
      rs = stmt.executeQuery(sql);
      
      while(rs.next()) {
      int id = rs.getInt(1);
      String fullName = rs.getString(2);
      String email = rs.getString(3);
      String cardNumber= rs.getString(4);
      String expDate = rs.getString(5);
      String cvv = rs.getString(6);
      String amount = rs.getString(7);

   
       
       
       paymentModel p = new paymentModel(id,fullName,email,cardNumber,expDate,cvv,amount);
       payment.add(p);
      }
      
     }
     catch(Exception e) {
      e.printStackTrace();
     }
     return payment;
     
    
    }
    
    
    //GetAll Data
    public static List<paymentModel> getAllpayment(){
     ArrayList <paymentModel> Payments = new ArrayList<>();
     try {
      //DBConnection
       con=DBConnection.getConnection();
       stmt=con.createStatement();
       
       //Query
       String sql = "select * from payment";
       
       rs = stmt.executeQuery(sql);
       
       while(rs.next()) {
        int id = rs.getInt(1);
        String fullName =rs.getString(2);
        String email =rs.getString(3);
        String cardNumber =rs.getString(4);
        String expDate =rs.getString(5);
        String cvv =rs.getString(6);
        String amount =rs.getString(7);

        
        paymentModel p = new paymentModel(id,fullName,email,cardNumber,expDate,cvv,amount);
        Payments.add(p);
       }
       
      }
      catch(Exception e) {
       e.printStackTrace();
      }
      return Payments;
    }
    
    
      
    //User Profile Update
    
    public static boolean updatepayment(String id,String fullName ,String email ,String cardNumber,String expDate,String cvv,String amount) {
     try {
      //DBConnection
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      
      //SQL Query
      String sql = "update payment set fullName='"+fullName+"',email='"+email+"',cardNumber='"+cardNumber+"',expDate='"+expDate+"',cvv='"+cvv+"',amount='"+amount+"'"
                      +"where id='"+id+"'";
      
      int rs = stmt.executeUpdate(sql);
      if(rs>0) {
       isSuccess = true;
      }
      else {
       isSuccess = false;
      }
      
      
     } 
      catch(Exception e) {
       e.printStackTrace();
       
      }
     return isSuccess;
     }
    
    
    // Delete Data
    public static boolean deleteAccount(String id) {
     int convID = Integer.parseInt(id);
     try {
      //DBConnection
      con=DBConnection.getConnection();
      stmt=con.createStatement();
      String sql = "delete from payment where id='"+convID+"'";
    int rs = stmt.executeUpdate(sql);
    
    if(rs > 0) {
     isSuccess = true;
    }
    else {
     isSuccess = false;
    }
    
     }
     catch(Exception e) {
      e.printStackTrace();
     }
     return isSuccess;
     
    }
    
    
    
}
