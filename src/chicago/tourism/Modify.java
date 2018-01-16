package chicago.tourism;

import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
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
 * Servlet implementation class Modify
 */
@WebServlet("/Modify")
public class Modify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Modify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		Map<String,ArrayList<String>> users = new HashMap<String,ArrayList<String>>();
		ArrayList<String> info = new ArrayList<String>();		
		
		HttpSession session = request.getSession();
		
		String uname = (String)session.getAttribute("username");
		String place = (String)session.getAttribute("place");
		String newEmail = request.getParameter("modifyemail");
		String newUname = request.getParameter("modifyusername");
		String newPwd = request.getParameter("modifypwd");
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
		
		info = users.get(uname);
		
		if(request.getParameter("modifybtn")!= null){
			if(newEmail.length()<1 || !newEmail.contains("@")){
				out.println("<html><head>");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Invalid Email ID.');");
				out.println("location = 'Register.jsp';");
				out.println("</script>");
				out.println("</head><body></body></html>");
			}
			else{
				info.set(5,newEmail);
				users.put(uname, info);
			}
		}
		
		else if(request.getParameter("unamebtn")!= null){
			System.out.println(newUname);
			info.set(3,newUname);
			users.put(newUname, info);
			users.remove(uname);
			uname=newUname;
//			System.out.println("uname change");
			//mu++;
		}
		else if(request.getParameter("pwdbtn")!= null){

			info.set(2, newPwd);
			users.put(uname, info);
		}
		
		//users.put(uname, info);
		
		FileOutputStream fout1 = null;
		ObjectOutputStream oos1 = null;
		
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
		
		
		session.setAttribute("username", uname);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Index.jsp");
		dispatcher.forward(request, response);
	}

}
