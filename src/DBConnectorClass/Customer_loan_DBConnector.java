/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnectorClass;

import EntityClass.Customer_Loan;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ather Ali Siddiqui
 */
public class Customer_loan_DBConnector extends DBConnecter{
    public ArrayList<Customer_Loan> fetchAllbyEmployeeId(int id){
        ArrayList<Customer_Loan> list = new ArrayList<>();
        String queryStr = "select c.c_id c_id, c.fname fname , c.lname lname, c.cnic cnic, l.name loan_name, cl.availed_amount availed_amount" +
" ,cl.monthly_repay monthly_repay  , cl.date_availed date_availed " +
" from customer c INNER JOIN customer_loan cl on c.c_id = cl.c_id INNER JOIN loan l on cl.l_id = l.l_id  where cl.lo_id  =?";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(new Customer_Loan(
                rs.getInt("c_id"),rs.getString("fname"),rs.getString("lname"),rs.getString("cnic"),rs.getString("loan_name") 
                        , rs.getString("date_availed"),rs.getDouble("availed_amount"),rs.getDouble("monthly_repay"))
                );
            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
