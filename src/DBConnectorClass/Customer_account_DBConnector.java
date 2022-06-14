/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnectorClass;

import EntityClass.Customer_Account;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ather Ali Siddiqui
 */
public class Customer_account_DBConnector extends DBConnecter{
    public void addCustomerAccount( int c_id, int a_id, int bt_id, String date_created, double balance ){
        String query = "INSERT INTO `customer_account`(`c_id`, `a_id`, `bt_id`, `date_created`, `balance`) VALUES (?,?,?,?,?);";
        try {                                       
            ps = con.prepareStatement(query);
//            fname,  lname,  cnic,   email,  contact_no,  salary, grade,password, bcode
            ps.setInt(1, c_id);ps.setInt(2, a_id);ps.setInt(3, bt_id);ps.setString(4, date_created);
            ps.setDouble(5, balance);
            ps.executeUpdate();
        
        } catch (SQLException ex) {
            Logger.getLogger(Bank_teller_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<Customer_Account> fetchAllbyEmployeeId(int id){
        ArrayList<Customer_Account> list = new ArrayList<>();
        String queryStr = "select c.c_id c_id, c.fname fname , c.lname lname, c.cnic cnic, c.email email , ca.date_created date_created " +
        ", ca.balance balance ,a.name account_name" +
        " from customer c INNER JOIN customer_account ca on c.c_id = ca.c_id INNER JOIN account a on ca.a_id = a.a_id  where ca.bt_id = ?";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(new Customer_Account(
                rs.getInt("c_id"),rs.getString("fname"),rs.getString("lname"),rs.getString("cnic"),rs.getString("account_name") 
                        ,rs.getString("email"), rs.getString("date_created"),rs.getDouble("balance"))
                );
            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
