/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnectorClass;

import java.sql.*;
import EntityClass.Bank_Teller;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Ather Ali Siddiqui
 */
public class Bank_teller_DBConnector extends DBConnecter {
    public void addBankTeller(int bcode, double salary, String cnic, String fname, String lname, String email, String contact_no,String grade,String password){
        String queryStr = "insert into bank_teller (   fname,  lname,  cnic,   email,  contact_no,  salary, grade,password, bcode) VALUES (?,?,?,?,?,?,?,?,?);";
        try {                                       
            ps = con.prepareStatement(queryStr);
//            fname,  lname,  cnic,   email,  contact_no,  salary, grade,password, bcode
            ps.setString(1, fname);ps.setString(2, lname);ps.setString(3, cnic);ps.setString(4, email);
            ps.setString(5, contact_no);ps.setDouble(6, salary);ps.setString(7, grade);ps.setInt(9, bcode);ps.setString(8, password);
            ps.executeUpdate();
        
        } catch (SQLException ex) {
            Logger.getLogger(Bank_teller_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<Bank_Teller> fetchAll(int bcode){
        ArrayList<Bank_Teller> list = new ArrayList<>();
        String queryStr = "select * from bank_teller where bcode = ?";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setInt(1, bcode);
            rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(new Bank_Teller(
                rs.getInt("bt_id"),rs.getInt("bcode"),rs.getDouble("salary"),rs.getString("cnic"),rs.getString("fname") 
                        , rs.getString("lname"),rs.getString("email"),rs.getString("contact_no"),rs.getString("grade"))
                );
            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public Bank_Teller fetch(String pw,String fname , String lname){
        Bank_Teller bt = null;
        String queryStr = "select * from bank_teller where fname = ? and lname = ? and BINARY password = ?";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, pw);

            rs = ps.executeQuery();
            
            while(rs.next()){
                bt = new Bank_Teller(                rs.getInt("bt_id"),
                        rs.getInt("bcode"),rs.getDouble("salary"),rs.getString("cnic"),rs.getString("fname") 
                        , rs.getString("lname"),rs.getString("email"),rs.getString("contact_no"),rs.getString("grade"));

            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bt;
    }
    public Bank_Teller fetchByBCode(int id,int bcode){
        Bank_Teller bt = null;
        String queryStr = "select * from bank_teller where bt_id = ? and bcode = ?";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setInt(1, id);
            ps.setInt(2, bcode);

            rs = ps.executeQuery();
            
            while(rs.next()){
                bt = new Bank_Teller(                rs.getInt("bt_id"),
                        rs.getInt("bcode"),rs.getDouble("salary"),rs.getString("cnic"),rs.getString("fname") 
                        , rs.getString("lname"),rs.getString("email"),rs.getString("contact_no"),rs.getString("grade"));

            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bt;
    }
}
