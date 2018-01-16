package chicago.tourism;

import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Usersettings
 */
@WebServlet("/Usersettings")
public class Usersettings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Usersettings() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Map<String,ArrayList<String>> users = new HashMap<String,ArrayList<String>>();
		ArrayList<String> info = new ArrayList<String>();
		
		HttpSession session = request.getSession();
		
		String uname = (String)session.getAttribute("username");
		
		ObjectInputStream ois = null;
		try {
			FileInputStream fis = new FileInputStream("/Users/Kaushik/Music/Userinfo.ser");
			ois = new ObjectInputStream(fis);
			users =(Map<String,ArrayList<String>>)ois.readObject();
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
			if (ois != null) {
				ois.close();
			} 
		}
		System.out.println("coming here...");
		info = users.get(uname);
		String fname = info.get(0);
		String lname = info.get(1);
		String gender = info.get(4);
		String email = info.get(5);
		//String place = info.get(6);
		String count = info.get(6);
		String file = (String)session.getAttribute("file");
		
		
		
		request.setAttribute("username",uname);
		request.setAttribute("fname",fname);
		request.setAttribute("lname",lname);
		request.setAttribute("gender",gender);
		request.setAttribute("email",email);
		//request.setAttribute("place",place);
		request.setAttribute("count",count);
		request.setAttribute("file", file);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Users.jsp");
		dispatcher.forward(request, response);
		
		
		//response.sendRedirect("Users.jsp");
	}

}
