/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnectorClass;
import java.sql.*;
/**
 *
 * @author Ather Ali Siddiqui
 */
public abstract class DBConnecter {
    protected Connection con;
    protected Statement st;
    protected ResultSet rs;
    protected PreparedStatement ps;

    public DBConnecter() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank-management-sys","root","");
           
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();e.getCause();
        }
    }
}
