package model;

/**
 * @author Phuoc Tran - ptran9@dmacc.edu
 * CIS175 - Spring 2024
 * Feb 2, 2024
 */
public class GasCalculate {
	private double dailyGasUsage;
    private double monthlyGasPayment;
	
    //Default no-arg
	public GasCalculate() {
		super();
	}

	public GasCalculate(double dailyGasUsage, double monthlyGasPayment) {
		super();
		this.dailyGasUsage = dailyGasUsage;
		this.monthlyGasPayment = monthlyGasPayment;
	}
	
	//Getter and setter
	public double getDailyGasUsage() {
		return dailyGasUsage;
	}

	public void setDailyGasUsage(double dailyGasUsage) {
		this.dailyGasUsage = dailyGasUsage;
	}

	public double getMonthlyGasPayment() {
		return monthlyGasPayment;
	}

	public void setMonthlyGasPayment(double monthlyGasPayment) {
		this.monthlyGasPayment = monthlyGasPayment;
	}
    
	//Calculate daily gas usage
	public static double calculateDailyGasUsage(double mpg, double distance) {
        return (2 * distance) / mpg;
    }
	
	//Calculate monthly gas payment
    public static double calculateMonthlyGasPayment(double gasPrice, int workDaysPerMonth, double dailyGasUsage) {
        return gasPrice * workDaysPerMonth * dailyGasUsage;
    }

	@Override
	public String toString() {
		return "GasCalculate [dailyGasUsage=" + dailyGasUsage + ", monthlyGasPayment=" + monthlyGasPayment + "]";
	}
    
}
