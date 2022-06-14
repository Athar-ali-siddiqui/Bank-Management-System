/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EntityClass;

/**
 *
 * @author Ather Ali Siddiqui
 */
public class Customer_Loan  extends Human{
     private int c_id;  
     private String fname,lname,cnic,loan_name,date_availed;
     private double availed_amount,  monthly_repay;

    public Customer_Loan(int c_id, String fname, String lname, String cnic, String loan_name, String date_availed, double availed_amount, double monthly_repay) {
        this.c_id = c_id;
        this.fname = fname;
        this.lname = lname;
        this.cnic = cnic;
        this.loan_name = loan_name;
        this.date_availed = date_availed;
        this.availed_amount = availed_amount;
        this.monthly_repay = monthly_repay;
    }

    public int getC_id() {
        return c_id;
    }

    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public String getCnic() {
        return cnic;
    }

    public String getLoan_name() {
        return loan_name;
    }

    public String getDate_availed() {
        return date_availed;
    }

    public double getAvailed_amount() {
        return availed_amount;
    }

    public double getMonthly_repay() {
        return monthly_repay;
    }
     
}
