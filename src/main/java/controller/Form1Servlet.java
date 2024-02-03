package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GasCalculate;

/**
 * Servlet implementation class Form1Servlet
 */
@WebServlet("/Form1Servlet")
public class Form1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Form1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
    	    String mpgStr = request.getParameter("mpg");
    	    String distanceStr = request.getParameter("distance");

    	    double mpg = Double.parseDouble(mpgStr);
    	    double distance = Double.parseDouble(distanceStr);

    	    // Calculate daily gas usage
    	    double dailyGasUsage = GasCalculate.calculateDailyGasUsage(mpg, distance);

    	    // Create GasCalculate object and set DailyGasUsage
    	    GasCalculate gasCalculate = new GasCalculate();
    	    gasCalculate.setDailyGasUsage(dailyGasUsage);

    	    // Set GasCalculate object as a request attribute
    	    request.setAttribute("gasCalculator", gasCalculate);

    	    // Forward to result1
    	    getServletContext().getRequestDispatcher("/result1.jsp").forward(request, response);
    	} catch (NumberFormatException e) {
    	    request.setAttribute("error", "Invalid input. Please enter numeric values.");
    	    getServletContext().getRequestDispatcher("/form1.jsp").forward(request, response);
    	}
    }
}
