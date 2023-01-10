//
//  ViewController.swift
//  sahara_prework
//
//  Created by Sahara Farah Abdi on 1/9/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var educationLevelTextField: UITextField!
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!).I am a \(educationLevelTextField.text!) student currently in my \(year!) year. I own \(numberOfPetsLabel.text!) pets.  It is \(morePetsSwitch.isOn) that I want more pets."
// Creates the alert where we pass in our message, which our introduction.
let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
// A way to dismiss the box once it pops up
let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
// Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
present(alertController, animated: true, completion: nil)
        
        
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

