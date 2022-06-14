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
public class Employee extends Human{
    private int id,bcode;
    private double salary;
    private String cnic,fname,lname,email,contact_no;

    public Employee(int id, int bcode, double salary, String cnic, String fname, String lname, String email, String contact_no) {
        this.id = id;
        this.bcode = bcode;
        this.salary = salary;
        this.cnic = cnic;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.contact_no = contact_no;
    }

    public Employee() {
    }

    public int getId() {
        return id;
    }

    public int getBcode() {
        return bcode;
    }

    public double getSalary() {
        return salary;
    }

    public String getCnic() {
        return cnic;
    }

    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public String getEmail() {
        return email;
    }

    public String getContact_no() {
        return contact_no;
    }
}
