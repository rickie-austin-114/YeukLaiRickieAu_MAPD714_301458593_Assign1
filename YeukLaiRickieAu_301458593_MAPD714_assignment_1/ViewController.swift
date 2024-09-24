
// File name: YeukLaiRickieAu_301458593_MAPD714_assignment_1
// Author: Rickie Au
// Student ID: 301458593
// Date: 23 Sep 2024
// App Description: This is a simple interest rate calculator in MAPD714
// Version: 1.0.0

import UIKit

class ViewController: UIViewController {

    // Declare the variables that stores the text input of the users
    @IBOutlet weak var principleAmount: UITextField!
    @IBOutlet weak var annualInterestRate: UITextField!
    @IBOutlet weak var numberOfYears: UITextField!
    
    // Declares the labels to display the outputs
    @IBOutlet weak var principleAmountLabel: UILabel!
    @IBOutlet weak var totalInterestLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!


    // The function calculates the interests and display the outputk
    // This function is called when the calculate interest button is pressed
    @IBAction func calculateInterest(_ sender: UIButton) {
        // check whether the input is valid
        // convert datatype of input from string to double
        if let inputPrincipleAmount = principleAmount.text, let principleAmountNumber = Double(inputPrincipleAmount), let inputAnnualInterestRate = annualInterestRate.text, let annualInterestRateNumber = Double(inputAnnualInterestRate), let inputNumberOfYear = numberOfYears.text, let numberOfYearNumber = Double(inputNumberOfYear) {
            
            // calculate the total interest
            let interest = principleAmountNumber * (annualInterestRateNumber / 100) * numberOfYearNumber;
            
            // calculate the total amount
            let result = interest + principleAmountNumber;
            
            // display the result, converting the datatypes back to string
            principleAmountLabel.text = "Principal Amount: $\(principleAmountNumber)"
            totalInterestLabel.text = "Total Interest: $\(String(interest))"
            totalAmountLabel.text = "Total Amount: $\(String(result))"
        } else {
            // if input is invalid, display error message
            principleAmountLabel.text = "Principal Amount:"
            totalInterestLabel.text = "Total Interest:"
            totalAmountLabel.text = "Total Amount: Invalid input"
        }
    }
    
    // This function clears the input and output
    // This function is called when the clear button is pressed
    @IBAction func clear(_ sender: UIButton) {
        
        // remove the text in the text fields
        principleAmount.text = ""
        annualInterestRate.text = ""
        numberOfYears.text = ""
        
        // convert the labels back to default
        principleAmountLabel.text = "Principal Amount:"
        totalInterestLabel.text = "Total Interest:"
        totalAmountLabel.text = "Total Amount:"
        
    }
     

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



}

