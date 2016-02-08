package com.nandini;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;

/**
 * Servlet implementation class ClassCalculation
 */
public class ClassCalculation extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ClassCalculation() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String value=request.getParameter("mode");
		if("save".equalsIgnoreCase(value)){
		PrintWriter out=response.getWriter();
		String name=request.getParameter("namesave");
		String final1=request.getParameter("final");
		String []arr=request.getParameterValues("name[]");
		try {
			if(DaoClass.saveValue(arr, name, final1)){
				out.println("Success");
			}else{
				out.println("Error");
			}
			out.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}else if("getResult".equalsIgnoreCase(value)){
			try {
				List<String> str=DaoClass.OptionValue();
				request.setAttribute("option", str);
				RequestDispatcher rd=request.getRequestDispatcher("GetPreviousField.jsp");
				System.out.println("Re");
				rd.forward(request, response);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}else if("getOptionValue".equalsIgnoreCase(value)){
			try {
				List<String> list=DaoClass.getOptionValue(request.getParameter("name"));
				PrintWriter out=response.getWriter();
				JSONArray ja=new JSONArray();
				ja.put(0, list);
				out.print(ja.toString());
				
				out.close();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
