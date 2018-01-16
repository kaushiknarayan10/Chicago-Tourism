package chicago.tourism;

import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
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
 * Servlet implementation class Loginservlet
 */
@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet implements Serializable{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		PrintWriter out = response.getWriter();
		
		Map<String,ArrayList<String>> users = new HashMap<String,ArrayList<String>>();
		ArrayList<String> info = new ArrayList<String>();		
		
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
		
		System.out.println(users.size());
		
		if(users.containsKey(username)){
			info = users.get(username);
			String var1 = info.get(2);
			if(info.get(2).toString().equals(pwd)){
				
				response.setContentType("text/html");
				request.getRequestDispatcher("Index.jsp").include(request, response);
				HttpSession session=request.getSession();  
		        session.setAttribute("username",username);
		        //out.print("Welcome, "+uname); 
				response.sendRedirect("Index.jsp");
			}
			else{
				out.println("<html><head>");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Invalid UserName/Password.');");
				out.println("location = 'Login.jsp';");
				out.println("</script>");
				out.println("</head><body></body></html>");
			}
		}
		else{
			out.println("<html><head>");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Invalid UserName/Password.');");
			out.println("location = 'Login.jsp';");
			out.println("</script>");
			out.println("</head><body></body></html>");
		}
	}

}
