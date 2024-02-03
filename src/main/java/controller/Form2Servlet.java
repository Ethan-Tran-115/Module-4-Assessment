package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GasCalculate;

/**
 * Servlet implementation class Form2Servlet
 */
@WebServlet("/Form2Servlet")
public class Form2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Form2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
    	    String workDaysStr = request.getParameter("workDays");
    	    String gasPriceStr = request.getParameter("gasPrice");
    	    String dailyGasUsageStr = request.getParameter("dailyGasUsage");

    	    int workDaysPerMonth = Integer.parseInt(workDaysStr);
    	    double gasPrice = Double.parseDouble(gasPriceStr);
    	    double dailyGasUsage = Double.parseDouble(dailyGasUsageStr);

    	    // Calculate monthly gas payment
    	    double monthlyGasPayment = GasCalculate.calculateMonthlyGasPayment(gasPrice, workDaysPerMonth, dailyGasUsage);

    	    // Create GasCalculate object and set MonthlyGasPayment
    	    GasCalculate gasCalculateResult2 = new GasCalculate();
    	    gasCalculateResult2.setMonthlyGasPayment(monthlyGasPayment);

    	    // Set GasCalculate object as a request attribute
    	    request.setAttribute("gasCalculatorResult2", gasCalculateResult2);

    	    // Forward to result2
    	    getServletContext().getRequestDispatcher("/result2.jsp").forward(request, response);
    	    return; 
    	} catch (NumberFormatException e) {
    	    request.setAttribute("error", "Invalid input. Please enter numeric values.");
    	    getServletContext().getRequestDispatcher("/form2.jsp").forward(request, response);
    	}

    	request.setAttribute("error", "An unexpected error occurred. Please try again.");
    	getServletContext().getRequestDispatcher("/form2.jsp").forward(request, response);
    }
}
