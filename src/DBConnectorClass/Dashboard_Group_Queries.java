/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnectorClass;

import EntityClass.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ather Ali Siddiqui
 */
public class Dashboard_Group_Queries extends DBConnecter{
    public ArrayList<Integer> fetchBankTellerStats(int id){
        ArrayList<Integer> list = new ArrayList<>();
        
        String queryStr = "select bt_id ,count(*) num , Sum(balance) sum from " +
" customer_account  where bt_id = ?;";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(rs.getInt("num"));
                list.add(rs.getInt("sum"));
            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
        
    }
    public ArrayList<Integer> fetchLoanOfficerStats(int id){
        ArrayList<Integer> list = new ArrayList<>();
        
        String queryStr = "select lo_id ,count(*) num , Sum(availed_amount) sum from " +
" customer_loan  where lo_id = ? ;";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(rs.getInt("num"));
                list.add(rs.getInt("sum"));
            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
        
    }
    public ArrayList<Integer> fetchAllBankTeller(int id){
        ArrayList<Integer> list = new ArrayList<>();
        
        String queryStr = "select count(*) num, sum(ca.balance) sum from bank_teller bt INNER JOIN customer_account ca ON bt.bt_id = ca.bt_id where bt.bcode = ? GROUP BY bcode;";
        String queryStr2 = " select count(*) count from bank_teller where bcode = ? group by bcode";
         try {
            ps = con.prepareStatement(queryStr2);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(rs.getInt("count"));
                
            }
            ps = con.prepareStatement(queryStr);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            rs.next();
            list.add(rs.getInt("num"));
            list.add(rs.getInt("sum"));
            
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
         System.out.println("list fetchAllLoanOfficer = " + list);
        return list;
        
    }
    public ArrayList<Integer> fetchAllLoanOfficer(int id){
        ArrayList<Integer> list = new ArrayList<>();
        
        String queryStr = "select count(*) num, sum(cl.availed_amount) sum from loan_officer lo INNER JOIN customer_loan cl ON lo.lo_id = cl.lo_id where lo.bcode = ? GROUP BY bcode;";
        String queryStr2 = " select count(*) count from loan_officer where bcode = ? group by bcode";
        try {
            ps = con.prepareStatement(queryStr2);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(rs.getInt("count"));
                
            }
            ps = con.prepareStatement(queryStr);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            rs.next();
            list.add(rs.getInt("num"));
            list.add(rs.getInt("sum"));
            
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Branch_manager_DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("list fetchAllLoanOfficer = " + list);
        return list;
        
    }
    public ArrayList<Integer> fetchAllEmployees(int id){
        ArrayList<Integer> list = new ArrayList<>();
        try {
            
            
            String queryStr1 = "select sum(cl.availed_amount) sum from loan_officer lo INNER JOIN customer_loan cl ON lo.lo_id = cl.lo_id where lo.bcode = ? ;";
            String queryStr2 = "select sum(ca.balance) sum from bank_teller bt INNER JOIN customer_account ca ON bt.bt_id = ca.bt_id where bt.bcode = ? ;";
            String queryStr3 = " select count(*) count from loan_officer where bcode = ? ";
            String queryStr4 = "select count(*) count from bank_teller where bcode = ? ";
           
            ps = con.prepareStatement(queryStr3);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            rs.next();
            list.add(rs.getInt("count"));
                
            
            ps = con.prepareStatement(queryStr4);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            rs.next();
            list.set(0,list.get(0) + rs.getInt("count"));
            
            ps = con.prepareStatement(queryStr2);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            rs.next();
            list.add(rs.getInt("sum"));
            
            ps = con.prepareStatement(queryStr1);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            rs.next();
            list.add(rs.getInt("sum"));
            
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Dashboard_Group_Queries.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return list;
        
    }
}
