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
public class Customer_Account extends Human {
     private int c_id;  
     private String fname,lname,cnic,account_name,email,date_created;
     private double balance;

    public Customer_Account(int c_id, String fname, String lname, String cnic, String account_name, String email, String date_created, double balance) {
        this.c_id = c_id;
        this.fname = fname;
        this.lname = lname;
        this.cnic = cnic;
        this.account_name = account_name;
        this.email = email;
        this.date_created = date_created;
        this.balance = balance;
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

    public String getAccount_name() {
        return account_name;
    }

    public String getEmail() {
        return email;
    }

    public String getDate_created() {
        return date_created;
    }

    public double getBalance() {
        return balance;
    }
     
}
