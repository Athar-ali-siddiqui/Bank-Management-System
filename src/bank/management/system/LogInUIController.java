/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bank.management.system;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import DBConnectorClass.*;
import EntityClass.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.ComboBox;
import javafx.stage.Stage;
/**
 *
 * @author Ather Ali Siddiqui
 */
public class LogInUIController implements Initializable {
    
    
    
    @FXML
    private TextField firstNameLabel;
    @FXML
    private TextField lastNameLabel;
    @FXML
    private PasswordField passwordLabel;
    @FXML
    private Label validationLabel;
    @FXML
    private ComboBox userComboBox;
    @FXML
    private Button loginButton;
    
   
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        ObservableList<String> comboBoxElement = FXCollections.observableArrayList("Branch Manager","Bank Teller","Loan Officer");
        userComboBox.setItems(comboBoxElement);
    }    

    @FXML
    private void loginButtonAction(ActionEvent event) {
        validationLabel.setVisible(false);
        String str = userComboBox.getSelectionModel().getSelectedItem().toString();
        if(str.equals("Branch Manager")){
            Branch_manager_DBConnector bm_con = new Branch_manager_DBConnector();
            Branch_Manager bm = bm_con.fetch(passwordLabel.getText(), firstNameLabel.getText(),lastNameLabel.getText());
            if(bm == null) {
                validationLabel.setText("invalid Branch Manager");
                validationLabel.setVisible(true);
            }
            else{
                validationLabel.setText(bm.getCnic());
                validationLabel.setVisible(true);
                
                try {
                    FXMLLoader loader = new FXMLLoader(getClass().getResource("BranchManagerUI.fxml"));
                    Parent root = loader.load();
                    BranchManagerUIController mc = loader.getController();
                    mc.dataInit(bm);

                    Scene scene = new Scene(root);
                    
                    Stage stage = new Stage();
                    
                    stage.setScene(scene);
                    
                    stage.show();
                    closeWindow();
                } catch (IOException ex) {
                    Logger.getLogger(LogInUIController.class.getName()).log(Level.SEVERE, null, ex);
                }
                    
            }
        }
        else if(str.equals("Bank Teller")){
            Bank_teller_DBConnector bt_con = new Bank_teller_DBConnector();
            Bank_Teller bt = bt_con.fetch(passwordLabel.getText(), firstNameLabel.getText(),lastNameLabel.getText());
            if(bt == null) {
                validationLabel.setText("invalid Bank Teller");
                validationLabel.setVisible(true);
            }
            else{
                validationLabel.setText(bt.getCnic());
                validationLabel.setVisible(true);
                try {
                    FXMLLoader loader = new FXMLLoader(getClass().getResource("BankTellerUI.fxml"));
                    Parent root = loader.load();
                    BankTellerUIController mc = loader.getController();
                    mc.dataInit(bt);

                    Scene scene = new Scene(root);
                    
                    Stage stage = new Stage();
                    
                    stage.setScene(scene);
                    
                    stage.show();
                    closeWindow();
                } catch (IOException ex) {
                    Logger.getLogger(LogInUIController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        else if(str.equals("Loan Officer")){
            Loan_officer_DBConnector lo_con = new Loan_officer_DBConnector();
            Loan_Officer lo = lo_con.fetch(passwordLabel.getText(), firstNameLabel.getText(),lastNameLabel.getText());
            if(lo == null) {
                validationLabel.setText("Invalid Loan Officer");
                validationLabel.setVisible(true);
            }
            else{
                validationLabel.setText(lo.getCnic());
                validationLabel.setVisible(true);
            }
        }
        else{
            validationLabel.setText("Select User");
            validationLabel.setVisible(true);
        }
        
        
    }
    private void closeWindow(){
        Stage stage = (Stage)loginButton.getScene().getWindow();
        stage.close();
    }
    
}
