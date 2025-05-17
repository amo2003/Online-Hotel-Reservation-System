package HotelManagement;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddNewHotelServlet")
public class AddNewHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String name= request.getParameter("name");
	      String location= request.getParameter("location");
	      String rooms= request.getParameter("rooms");
	      String category= request.getParameter("category");
	      String price= request.getParameter("price");
	      
	      
	      boolean isTrue;
	      
	      isTrue = HotelController.insertdata(name, location, rooms, category, price);
	      
	      if(isTrue==true) {
	       String alertMessage = "Data Insert Successful";
	       response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllServlet'</script>");
	      }
	      else {
	       RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
	          dis2.forward(request, response);
	      }
		
		
	}

}
