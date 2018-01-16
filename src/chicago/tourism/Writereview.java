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
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Writereview
 */
@WebServlet("/Writereview")
public class Writereview extends HttpServlet implements Serializable{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Writereview() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String uname = (String)session.getAttribute("username");
		String place = (String)session.getAttribute("place");
		String content = request.getParameter("review");
		PrintWriter out = response.getWriter();
		Map<String,ArrayList<String>> userinfo = new HashMap<String,ArrayList<String>>();
		ArrayList<String> info = new ArrayList<String>();
		
		Map<String,ArrayList<String>> reviews = new HashMap<String,ArrayList<String>>();
		ArrayList<String> reviewinfo = new ArrayList<String>();
		
		
		
		ObjectInputStream ois = null;
		
		//FileInputStream fis = new FileInputStream("/Users/Kaushik/Music/Reviewinfo.ser");
		
		//FileOutputStream fout = null;
		
		//ObjectOutputStream oos = null;
		ObjectInputStream ois1 = null;
		
		try {
			
			FileInputStream fis1 = new FileInputStream("/Users/Kaushik/Music/Userinfo.ser");
			ois1 = new ObjectInputStream(fis1);
			userinfo =(Map<String,ArrayList<String>>)ois1.readObject();
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
			if (ois1!= null) {
				//ois.close();
				ois1.close();
				} 
			}
		
		
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
			if (ois!= null) {
				ois.close();
				} 
			}
		//StringBuffer text = new StringBuffer();
		if(reviews.containsKey(place)){
			reviewinfo = reviews.get(place);
			reviewinfo.add(content+" -"+uname);
			reviews.put(place, reviewinfo);
		}
		else{
			reviewinfo.add(content+" -"+uname);
			reviews.put(place, reviewinfo);
		}
		
//		
//		
//		if(reviews.size()>0){
//			reviewinfo = reviews.get(place);
//			//reviewinfo.add("\n");
//			//text.append(uname).append('\n');
//			reviewinfo.add(content+" -"+uname);
//			reviews.put(place, reviewinfo);
//		}
//		else{
//			reviewinfo.add(content+" -"+uname);
//			reviews.put(place, reviewinfo);
//		}
		
		info = userinfo.get(uname);
		int count = Integer.parseInt(info.get(6));
		System.out.println(count);
		
		count++;
		info.set(6, String.valueOf(count));
		
		userinfo.put(uname, info);
		
		
		
		
//		if(reviewinfo.size()<1){
		
		
	
//		reviewinfo.add(place);
//		reviewinfo.add(content);
//		reviewinfo.add(String.valueOf(1));
		
		
			
//		}
//		else{
//			String tempPlace = reviewinfo.get(0);
//			String tempContent = reviewinfo.get(1);
//			String tempPlace = reviewinfo.get(0);
//			
//		}
		
		//String tempcontent = info.get(8);
		//String tempplace = info.get(6);
		//info.set(6, place.toString());
//		System.out.println(info.get(6));
		
//		if(info.get(6).equalsIgnoreCase("none")){
//			info.set(6, place+"\n");
//		}
//		else{
//			info.set(6, tempplace+"\n"+place);
//		}
//		
//		info.set(6, info.get(6)+"\n"+place);
//		info.set(7, String.valueOf(info.get(7)+1));
//		if(info.get(8).equalsIgnoreCase("none")){
//			info.set(8, content+" -"+uname+"\n");
//		}
//		else{
//			info.set(8, tempcontent+content+" -"+uname+"\n");	
//		}
//		
//		
//		System.out.println(info.get(8).toString());
//		userinfo.put(uname, info);
		
//		System.out.println(reviewinfo.get(0));
//		System.out.println(place);
		
//		reviews.put(uname, reviewinfo);
		
		ObjectOutputStream oos1 = null;
		ObjectOutputStream oos = null;
		try{
			
		//	fout = new FileOutputStream("/Users/Kaushik/Music/Reviewinfo.ser");
			FileOutputStream fout1 = null;
			
			fout1 = new FileOutputStream("/Users/Kaushik/Music/Userinfo.ser");
			//oos = new ObjectOutputStream(fout);
			oos1 = new ObjectOutputStream(fout1);
		//	oos.writeObject(reviews);			
			oos1.writeObject(userinfo);
		}catch (IOException e) {
	        e.printStackTrace();
	} finally {
		if(oos1 != null) {
			//oos.close();
			oos1.close();
		}
	}
		
		
		try{
			
			FileOutputStream fout = null;
			fout = new FileOutputStream("/Users/Kaushik/Music/Reviewinfo.ser");
			oos = new ObjectOutputStream(fout);
			oos.writeObject(reviews);			
			}catch (IOException e) {
		        e.printStackTrace();
		} finally {
			if(oos != null) {
				oos.close();
			}
		}
		session.setAttribute("Status", "Success");
		response.sendRedirect((String)session.getAttribute("file"));
		
	}

}
