/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bank.management.system;


import DBConnectorClass.*;
import EntityClass.*;
import java.io.IOException;
import java.net.URL;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author Ather Ali Siddiqui
 */
public class BankTellerUIController implements Initializable {
    Bank_Teller bt = new Bank_Teller();
    Branch b = new Branch();
    @FXML
    private Label branchNameLabel;
    @FXML
    private Label branchLocLabel;
    @FXML
    private Label bankTellerNameLabel;
    @FXML
    private Label bankTellerdLabel;
    @FXML
    private Button logOutBtn;
    @FXML
    private Label accountOpenedLabel;
    @FXML
    private Label totalCashDepositedLabel;
    @FXML
    private TableView<Customer_Account> table;
    @FXML
    private TableColumn<Customer_Account, Integer> idTable;
    @FXML
    private TableColumn<Customer_Account, String> fnameTable;
    @FXML
    private TableColumn<Customer_Account, String> lnameTable;
    @FXML
    private TableColumn<Customer_Account, String> cnicTable;
    @FXML
    private TableColumn<Customer_Account, String> emailTable;
    @FXML
    private TableColumn<Customer_Account, String> dateTable;
    @FXML
    private TableColumn<Customer_Account, String> typeTable;
    @FXML
    private TableColumn<Customer_Account, Double> balanceTable;
    @FXML
    private TextField createCidText;
    @FXML
    private ComboBox createTypeCombo;
    @FXML
    private TextField createOpenBalText;
    @FXML
    private Label createValidationLabel;
    @FXML
    private Label createDateLabel;
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    public void dataInit(Bank_Teller bb){
        bt = bb;
        b = new Branch_DBConnector().fetch(bt.getBcode());

        
        bankTellerNameLabel.setText(bt.getFname() +" "+ bt.getLname());
        bankTellerdLabel.setText(bt.getId()+"");
        branchNameLabel.setText(b.getName());
        branchLocLabel.setText(b.getLocation());
        createDateLabel.setText(LocalDate.now().toString());
        showTable();
        ObservableList<String> comboBoxElement = FXCollections.observableArrayList("1- Term deposit","2- Saving " , "3- Current","4- SME bank","5- Money Market");
        createTypeCombo.setItems(comboBoxElement);
        
    }
    private void showTable(){
        idTable.setCellValueFactory(new PropertyValueFactory<Customer_Account, Integer>("c_id"));
        fnameTable.setCellValueFactory(new PropertyValueFactory<Customer_Account, String>("fname"));
        lnameTable.setCellValueFactory(new PropertyValueFactory<Customer_Account, String>("lname"));
        cnicTable.setCellValueFactory(new PropertyValueFactory<Customer_Account, String>("cnic"));
        emailTable.setCellValueFactory(new PropertyValueFactory<Customer_Account, String>("email"));
        balanceTable.setCellValueFactory(new PropertyValueFactory<Customer_Account, Double>("balance"));
        dateTable.setCellValueFactory(new PropertyValueFactory<Customer_Account, String>("date_created"));
        typeTable.setCellValueFactory(new PropertyValueFactory<Customer_Account, String>("account_name"));
        ObservableList<Customer_Account> emps =FXCollections.observableArrayList(new Customer_account_DBConnector().fetchAllbyEmployeeId(bt.getId()));
        
        table.setItems(emps);
        ArrayList<Integer> list = new Dashboard_Group_Queries().fetchBankTellerStats(bt.getId());
        accountOpenedLabel.setText(list.get(0)+"");
        totalCashDepositedLabel.setText(list.get(1)+"");
    }
    @FXML
    private void logOutAction(ActionEvent event) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("LogInUI.fxml"));
            Parent root = loader.load();
            LogInUIController mc = loader.getController();


            Scene scene = new Scene(root);

            Stage stage = new Stage();

            stage.setScene(scene);

            stage.show();
            Stage stage1 = (Stage)logOutBtn.getScene().getWindow();
            stage1.close();
        } catch (IOException ex) {
            Logger.getLogger(BranchManagerUIController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @FXML
    private void createAction(ActionEvent event) {
        createValidationLabel.setText("");
        int c_id = Integer.parseInt(createCidText.getText());
        int a_id = Integer.parseInt(createTypeCombo.getSelectionModel().getSelectedItem().toString().split("-")[0]);
        int bt_id = bt.getId();
        double bal = Double.parseDouble(createOpenBalText.getText());
        new Customer_account_DBConnector().addCustomerAccount(c_id, a_id, bt_id, LocalDate.now().toString(), bal);
        showTable();
        createValidationLabel.setText("Account Created");
    }
}
