package chicago.tourism;

import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet implements Serializable{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String cpwd = request.getParameter("cpwd");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		//String place = "none";
		String reviewCount = String.valueOf(0);
		//String review = "none";
		
		Map<String,ArrayList<String>> users = new HashMap<String,ArrayList<String>>();
		ArrayList<String> info = new ArrayList<String>();
		
//		Map<String,ArrayList<String>> reviews = new HashMap<String,ArrayList<String>>();
//		ArrayList<String> reviewInfo = new ArrayList<String>();
		
		PrintWriter out = response.getWriter();
		
		ObjectInputStream ois1 = null;
		try {
			FileInputStream fis1 = new FileInputStream("/Users/Kaushik/Music/Userinfo.ser");
			ois1 = new ObjectInputStream(fis1);
			users =(Map<String,ArrayList<String>>)ois1.readObject();
		}  catch (EOFException eof){
			System.out.println("caught exception");
		}catch (IOException e) {
			System.err.println("Nothing to restore.\n");

			e.printStackTrace();
		} 
		catch (ClassNotFoundException e) {
			System.err.println("ClassNotFoundException caught in restoreadvertiser()");
			e.printStackTrace();
		}
			finally {
			if (ois1 != null) {
				ois1.close();
			} 
		}
		
		info.add(fname);
		info.add(lname);
		info.add(pwd);
		info.add(uname);
		info.add(gender);
		info.add(email);
//		info.add(place);
		info.add(reviewCount);
//		info.add(review);
		
		if(users.containsKey("username")){
			out.println("<html><head>");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('User Name already exists.');");
			out.println("location = 'Register.jsp';");
			out.println("</script>");
			out.println("</head><body></body></html>");
		}
		
		if(fname.length()<1 || lname.length()<1){
			
			out.println("<html><head>");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('First Name / Last Name missing.');");
			out.println("location = 'Register.jsp';");
			out.println("</script>");
			out.println("</head><body></body></html>");
			
		}
		else if(!pwd.toString().equals(cpwd)){

			out.println("<html><head>");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Passwords do not match.');");
			out.println("location = 'Register.jsp';");
			out.println("</script>");
			out.println("</head><body></body></html>");
			
		}
		else if(email.length()<1 || !email.contains("@")){

			out.println("<html><head>");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Invalid Email ID.');");
			out.println("location = 'Register.jsp';");
			out.println("</script>");
			out.println("</head><body></body></html>");
			
		}
		else{
		
		users.put(uname, info);
		
		
		FileOutputStream fout1 = null;
		ObjectOutputStream oos1 = null;
		
//		FileOutputStream fout2 = null;
//		ObjectOutputStream oos2 = null;

		
		try{
			fout1 = new FileOutputStream("/Users/Kaushik/Music/Userinfo.ser");
			oos1 = new ObjectOutputStream(fout1);
			
//			fout2 = new FileOutputStream("/Users/Kaushik/Music/Reviewinfo.ser");
//			oos2 = new ObjectOutputStream(fout2);
			
			oos1.writeObject(users);
//			oos2.writeObject(reviews);
		}catch (IOException e) {
	        e.printStackTrace();
	} finally {
		if(oos1 != null) {
			oos1.close();
			//oos2.close();
		}
	}
		response.sendRedirect("Login.jsp");
		}
	}

}
