package Payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserPackage.UserController;
import UserPackage.UserModel;

@WebServlet("/displayAllPayment")
public class displayAllPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     List <paymentModel> Payments = paymentController.getAllpayment();
       request.setAttribute("Payments",Payments);
       
       RequestDispatcher dispatcher = request.getRequestDispatcher("displaypayment.jsp");
       dispatcher.forward(request, response);
}
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request,response);

     }
 

}
