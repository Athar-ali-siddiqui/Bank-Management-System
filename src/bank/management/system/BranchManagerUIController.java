/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bank.management.system;

import EntityClass.*;
import DBConnectorClass.*;
import java.io.IOException;
import java.net.URL;
import java.util.*;
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
import javafx.scene.control.PasswordField;
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
public class BranchManagerUIController implements Initializable {
    Branch_Manager bm = new Branch_Manager();
    Branch b = new Branch();
    ArrayList<Bank_Teller> bank_teller_list = new ArrayList<>();
    ArrayList<Loan_Officer> loan_officer_list = new ArrayList<>();
    @FXML
    private Label branchNameLabel;
    @FXML
    private Label branchLocLabel;
    @FXML
    private Label managerNameLabel;
    @FXML
    private Label managerIdLabel;
    @FXML
    private TableColumn<Human, Integer> empId;
    @FXML
    private TableColumn<Human, String> empFname;
    @FXML
    private TableColumn<Human, String> empLname;
    @FXML
    private TableColumn<Human, String> empEmail;
    @FXML
    private TableColumn<Human, String> empCnic;
    @FXML
    private TableColumn<Human, Double> empSalary;
    @FXML
    private TableColumn<Human, String> empGrade;
    @FXML
    private TableColumn<Human, String> empContact;
    @FXML
    private ComboBox employeeTypeCombo;
    @FXML
    private TableView<Human> empTable;
    @FXML
    private Label empTypeLabel;
    @FXML
    private Label managerNameLabel2;
    @FXML
    private TextField empIdTextField;
    @FXML
    private Label empsLabel;
    @FXML
    private Label noOfEmpsLabel;
    @FXML
    private Label accLoanLabel;
    @FXML
    private Label noOfAccLoanLabel;
    @FXML
    private Label cashLoanLabel;
    @FXML
    private Label totalCashLoanLabel;
    @FXML
    private TextField addEmpfnameText;
    @FXML
    private TextField addEmplnameText;
    @FXML
    private TextField addEmpCnicText;
    @FXML
    private TextField addEmpEmailText;
    @FXML
    private TextField addEmpSalaryText;
    @FXML
    private TextField addEmpGradeText;
    @FXML
    private TextField addEmpContactText;
    @FXML
    private PasswordField addEmpPasswordText;
    @FXML
    private ComboBox addEmpTypeCombo;
    @FXML
    private Label addEmpValidLabel;
    @FXML
    private Button logOutBtn;
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        ObservableList<String> comboBoxElement = FXCollections.observableArrayList("Bank Teller","Loan Officer","All");
        employeeTypeCombo.setItems(comboBoxElement);
        
        ObservableList<String> comboBoxElement2 = FXCollections.observableArrayList("Bank Teller","Loan Officer");
        addEmpTypeCombo.setItems(comboBoxElement2);
        
        
    }    
    public void dataInit(Branch_Manager bb){
        bm = bb;
        b = new Branch_DBConnector().fetch(bm.getBcode());
        bank_teller_list = new Bank_teller_DBConnector().fetchAll(bm.getBcode());
        loan_officer_list = new Loan_officer_DBConnector().fetchAll(bm.getBcode());
        
        managerNameLabel.setText(bm.getFname() +" "+ bm.getLname());
        managerIdLabel.setText(bm.getId()+"");
        branchNameLabel.setText(b.getName());
        branchLocLabel.setText(b.getLocation());
        
        empTableColumnDefault();
        
//        UTtableCurrencyName.setCellValueFactory(new PropertyValueFactory<Asset, String>("currencyName"));
//        UTtableCurrencyQtn.setCellValueFactory(new PropertyValueFactory<Asset, Double>("quantity"));
//        
        
        
    }
    private void empTableColumnDefault(){
        empEmail.setText("EMAIL");
        empSalary.setText("SALARY");empGrade.setText("GRADE");empContact.setText("CONTACT");
        empId.setCellValueFactory(new PropertyValueFactory<Human, Integer>("id"));
        empFname.setCellValueFactory(new PropertyValueFactory<Human, String>("fname"));
        empLname.setCellValueFactory(new PropertyValueFactory<Human, String>("lname"));
        empEmail.setCellValueFactory(new PropertyValueFactory<Human, String>("email"));
        empCnic.setCellValueFactory(new PropertyValueFactory<Human, String>("cnic"));
        empSalary.setCellValueFactory(new PropertyValueFactory<Human, Double>("salary"));
        empGrade.setCellValueFactory(new PropertyValueFactory<Human, String>("grade"));
        empContact.setCellValueFactory(new PropertyValueFactory<Human, String>("contact_no"));
        
        bank_teller_list = new Bank_teller_DBConnector().fetchAll(bm.getBcode());
        loan_officer_list = new Loan_officer_DBConnector().fetchAll(bm.getBcode());
        ObservableList<Human> emps =FXCollections.observableArrayList(bank_teller_list);
        emps.addAll(loan_officer_list);
        empTable.setItems(emps);
    }

    
    @  FXML
    private void addEmpAction(ActionEvent event) {
        addEmpValidLabel.setText("");
        String type = addEmpTypeCombo.getSelectionModel().getSelectedItem().toString();
        int bcode = bm.getBcode();
        double salary = Double.parseDouble(addEmpSalaryText.getText());
        String cnic = addEmpCnicText.getText(),fname=addEmpfnameText.getText(),lname=addEmplnameText.getText(),email = addEmpEmailText.getText(),contact_no= addEmpContactText.getText();
        String password = addEmpPasswordText.getText();
        if(!cnic.isEmpty() && !fname.isEmpty() && !lname.isEmpty() && !email.isEmpty() && !contact_no.isEmpty() && !type.isEmpty()){
            if(type.equals("Bank Teller")){
                new Bank_teller_DBConnector().addBankTeller(bcode, salary, cnic, fname, lname, email, contact_no, lname, password);
                addEmpValidLabel.setText("Bank Teller is Added");
                empTableColumnDefault();
            }
            else if(type.equals("Loan Officer")){
                new Loan_officer_DBConnector().addLoanOfficer(bcode, salary, cnic, fname, lname, email, contact_no, lname, password);
                addEmpValidLabel.setText("Loan Officer is Added");
                empTableColumnDefault();
            }
            else addEmpValidLabel.setText("Something is wrong !!");
        }
        else addEmpValidLabel.setText("Fill all form !!");
    }
    
    @FXML
    private void searchEmpAction(ActionEvent event) {
        empTypeLabel.setText(" ");
        String combo = employeeTypeCombo.getSelectionModel().getSelectedItem().toString();
        String text = empIdTextField.getText();
        Dashboard_Group_Queries dash = new Dashboard_Group_Queries();
        if( text.isEmpty()){
            empTypeLabel.setText(combo);
    //        "Bank Teller","Loan Officer","All"
            empTableColumnDefault();
            if(combo.equals("Bank Teller")) {
                empTable.setItems(FXCollections.observableArrayList(bank_teller_list));
                ArrayList<Integer> list = dash.fetchAllBankTeller(bm.getBcode());
                empsLabel.setText("No. of Bank Teller : ");
                noOfEmpsLabel.setText(list.get(0)+"");
                accLoanLabel.setText("No. of Account : ");
                noOfAccLoanLabel.setText(list.get(1)+"");
                cashLoanLabel.setText("Total Cash Deposited : ");
                totalCashLoanLabel.setText(list.get(2)+"");
            }
            else if(combo.equals("Loan Officer")) {
                empTable.setItems(FXCollections.observableArrayList(loan_officer_list));
                ArrayList<Integer> list = dash.fetchAllLoanOfficer(bm.getBcode());
                empsLabel.setText("No. of Loan Officer : ");
                noOfEmpsLabel.setText(list.get(0)+"");
                accLoanLabel.setText("No. of loans : ");
                noOfAccLoanLabel.setText(list.get(1)+"");
                cashLoanLabel.setText("Total Cash Given : ");
                totalCashLoanLabel.setText(list.get(2)+"");
            }
            else {
                ObservableList<Human> emps =FXCollections.observableArrayList(bank_teller_list);
                emps.addAll(loan_officer_list);
                empTable.setItems(emps);
                ArrayList<Integer> list = dash.fetchAllEmployees(bm.getBcode());
                empsLabel.setText("No. of Employees : ");
                noOfEmpsLabel.setText(list.get(0)+"");
                accLoanLabel.setText("Total Cash Deposited : ");
                noOfAccLoanLabel.setText(list.get(1)+"");
                cashLoanLabel.setText("Total Cash Given : ");
                totalCashLoanLabel.setText(list.get(2)+"");
            }
        }
        else if( !combo.isEmpty() && text.charAt(0) - '9' <= 0){
//            empTypeLabel.setText(text);
            if(combo.equals("Bank Teller")) {
                Bank_Teller bt = new Bank_teller_DBConnector().fetchByBCode(Integer.parseInt(text) , bm.getBcode() );
                empTypeLabel.setText("Bank Teller : " + bt.getFname() + " " +bt.getLname());
                
                empId.setCellValueFactory(new PropertyValueFactory<Human, Integer>("c_id"));empSalary.setCellValueFactory(new PropertyValueFactory<Human, Double>("date_created"));empGrade.setCellValueFactory(new PropertyValueFactory<Human, String>("balance"));empContact.setCellValueFactory(new PropertyValueFactory<Human, String>("account_name"));
                empEmail.setText("EMAIL");empSalary.setText("DATE");empGrade.setText("BALANCE");empContact.setText("ACCOUNT NAME");
                empTable.setItems(FXCollections.observableArrayList(new Customer_account_DBConnector().fetchAllbyEmployeeId(bt.getId())));
                
                ArrayList<Integer> list = dash.fetchBankTellerStats(bt.getId());
                empsLabel.setText("Bank Teller ID: ");
                noOfEmpsLabel.setText(bt.getId()+"");
                accLoanLabel.setText("No. of accounts : ");
                noOfAccLoanLabel.setText(list.get(0)+"");
                cashLoanLabel.setText("Cash deposited : ");
                totalCashLoanLabel.setText(list.get(1)+"");
            }
            else if(combo.equals("Loan Officer")){
                Loan_Officer lo = new Loan_officer_DBConnector().fetchByBCode(Integer.parseInt(text) , bm.getBcode());
                empTypeLabel.setText("Loan Officer : " + lo.getFname() + " " +lo.getLname());
                
                empId.setCellValueFactory(new PropertyValueFactory<Human, Integer>("c_id"));empEmail.setCellValueFactory(new PropertyValueFactory<Human, String>("loan_name"));empSalary.setCellValueFactory(new PropertyValueFactory<Human, Double>("availed_amount"));empGrade.setCellValueFactory(new PropertyValueFactory<Human, String>("monthly_repay"));empContact.setCellValueFactory(new PropertyValueFactory<Human, String>("date_availed"));
                empEmail.setText("LOAN NAME");empSalary.setText("AMOUNT");empGrade.setText("MONTH REPAY");empContact.setText("DATE AVAILED");
                empTable.setItems(FXCollections.observableArrayList(new Customer_loan_DBConnector().fetchAllbyEmployeeId(lo.getId())));
                
                ArrayList<Integer> list = dash.fetchLoanOfficerStats(lo.getId());
                empsLabel.setText("Loan Officer ID: ");
                noOfEmpsLabel.setText(lo.getId()+"");
                accLoanLabel.setText("No. of loans : ");
                noOfAccLoanLabel.setText(list.get(0)+"");
                cashLoanLabel.setText("Cash Given : ");
                totalCashLoanLabel.setText(list.get(1)+"");
            
            }
            
        }else{
            empTypeLabel.setText("Wrong Id");
        }
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

    
    
}
