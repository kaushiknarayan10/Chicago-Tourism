package chicago.tourism;

import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
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
 * Servlet implementation class Readreview
 */
@WebServlet("/Readreview")
public class Readreview extends HttpServlet implements Serializable{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Readreview() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		Map<String,ArrayList<String>> users = new HashMap<String,ArrayList<String>>();
//		ArrayList<String> info = new ArrayList<String>();
		
		Map<String,ArrayList<String>> reviews = new HashMap<String,ArrayList<String>>();
		ArrayList<String> reviewinfo = new ArrayList<String>();
		
		HttpSession session = request.getSession();
		
		String uname = (String)session.getAttribute("username");
		String place = (String)session.getAttribute("place");
		
		
		ObjectInputStream ois = null;
		try {
			FileInputStream fis = new FileInputStream("/Users/Kaushik/Music/Reviewinfo.ser");
			ois = new ObjectInputStream(fis);
			reviews =(Map<String,ArrayList<String>>)ois.readObject();
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
		
		
		
//		ArrayList<String> data = new ArrayList<String>();
//		ArrayList<String> temp = new ArrayList<String>();
//		temp = (ArrayList<String>)info.get(8);
	//	data.addAll(info.get(8).split("\\~"));
//		data.add(info.get(8));
//		String []result = new String[30];
//		for(int i=0; i<data.length; i++){
//			result[i] = data[i];
////			result = result+"\t\t";
////			result = result+"-"+uname;
////			result = result+"\n";
//			System.out.println(result);
//			
//		}
//		//System.out.println(result);
//		System.out.println(data.length);
//		String data = "none";
//		
//		if(reviewinfo.get(0).equalsIgnoreCase(place)){
//			data = reviewinfo.get(1);
//		}
		
		if(reviews.containsKey(place)){
			reviewinfo = reviews.get(place);
			session.setAttribute("result",reviewinfo);
			String file = (String)session.getAttribute("file");
			request.setAttribute("file",file);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Readreview.jsp");
			dispatcher.forward(request, response);
		}
		else{
			System.out.println("Coming here....");
			reviewinfo.add("No Reviews Yet! Be the First one to Add a Review.");
			session.setAttribute("result",reviewinfo);
			String file = (String)session.getAttribute("file");
			request.setAttribute("file",file);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Readreview.jsp");
			dispatcher.forward(request, response);
		}
		
		//request.setAttribute("result",reviewinfo);
//		System.out.println(reviewinfo.size());
//		if(reviewinfo.size()<1){
//			reviewinfo.add("No Reviews Yet! Be the First one to Add a Review.");
//			session.setAttribute("result",reviewinfo);
//			String file = (String)session.getAttribute("file");
//			request.setAttribute("file",file);
//			
//			RequestDispatcher dispatcher = request.getRequestDispatcher("Readreview.jsp");
//			dispatcher.forward(request, response);
//		}
		
	}

}
