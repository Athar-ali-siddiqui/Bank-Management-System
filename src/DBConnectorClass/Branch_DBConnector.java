/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnectorClass;

import EntityClass.Branch;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ather Ali Siddiqui
 */
public class Branch_DBConnector extends DBConnecter{
    public Branch fetch(int id){
        Branch b = null;
        String queryStr = "select * from branch where bcode = ?";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setInt(1, id);

            rs = ps.executeQuery();
            
            while(rs.next()){
                b = new Branch(
                rs.getInt("bcode"),rs.getString("name"),rs.getString("location"));

            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return b;
    }
}
