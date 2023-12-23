//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Deborah Alonge on 12/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextLabel: UITextField!
    @IBOutlet weak var lastNameTextLabel: UITextField!
    @IBOutlet weak var schoolNameTextLabel: UITextField!
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          numberOfPetsLabel.text = "\(Int(sender.value))"
      }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {

           // Lets us choose the title we have selected from the segmented control
           // In our example that is whether it is first, second, third or forth
           let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)

           // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstNameTextLabel.text!) \(lastNameTextLabel.text!) and I attend \(schoolNameTextLabel.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."

           print(introduction)
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
       }
}

