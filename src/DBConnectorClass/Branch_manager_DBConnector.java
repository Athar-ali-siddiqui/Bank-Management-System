/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnectorClass;

import java.sql.*;
import EntityClass.Branch_Manager;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Ather Ali Siddiqui
 */
public class Branch_manager_DBConnector extends DBConnecter{
    
    public Branch_Manager fetch(String pw,String fname , String lname){
        Branch_Manager bm = null;
        String queryStr = "select * from branch_manager where fname = ? and lname = ? and BINARY password = ?";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, pw);

            rs = ps.executeQuery();
            
            while(rs.next()){
                bm = new Branch_Manager(
                rs.getInt("bm_id"),rs.getInt("bcode"),rs.getDouble("salary"),rs.getString("cnic"),rs.getString("fname") 
                        , rs.getString("lname"),rs.getString("email"),rs.getString("contact_no"));

            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bm;
    }

}
