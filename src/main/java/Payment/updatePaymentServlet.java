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


@WebServlet("/updatePaymentServlet")
public class updatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String id= request.getParameter("id");
		  String fullName= request.getParameter("fullName");
		  String email= request.getParameter("email");
		  String cardNumber= request.getParameter("cardNumber");
		  String expDate= request.getParameter("expDate");
		  String cvv= request.getParameter("cvv");
		  String amount= request.getParameter("amount");

		  
		  boolean isTrue;
		  isTrue = paymentController.updatepayment(id, fullName, email, cardNumber, expDate, cvv, amount);
		  
		  if(isTrue==true) {
		   List<paymentModel> paymentdetails = paymentController.getById(id);
		   request.setAttribute("paymentdetails", paymentdetails);
		   
		   String alertMessage = "Data Update Successful";
		   response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='displayAllPayment'</script>");
		  }
		  else {
		   RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
		      dis2.forward(request, response);
		  }
	}

}
