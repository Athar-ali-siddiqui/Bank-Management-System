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
public class Loan_Officer  extends Employee{

    public Loan_Officer(int id, int bcode, double salary, String cnic, String fname, String lname, String email, String contact_no,String grade) {
        super(id, bcode, salary, cnic, fname, lname, email, contact_no);
        this.grade = grade;
    }
    
    private String grade;

    public String getGrade() {
        return grade;
    }

    
    
}
