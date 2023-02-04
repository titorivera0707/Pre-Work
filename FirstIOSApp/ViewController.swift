//
//  ViewController.swift
//  FirstIOSApp
//
//  Created by Tito Rivera on 1/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var schoolNameField: UITextField!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            let year = yearSegment.titleForSegment(at: yearSegment.selectedSegmentIndex)

            let introduction = "My name is \(firstNameField.text!) \(lastNameField.text!) and I attend \(schoolNameField.text!).I am currently in my \(year!) year and I own \(petCounter.text!) dogs.It is \(morePetsSwitch.isOn) that I want more pets."
        
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
            print(introduction)
        }
    
    @IBOutlet weak var yearSegment: UISegmentedControl!
    
    @IBOutlet weak var morePets: UIStepper!
    @IBOutlet weak var petCounter: UILabel!
    @IBAction func morePets(_ sender: UIStepper) {
          petCounter.text = "\(Int(sender.value))"
      }
    
    @IBOutlet weak var petSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

