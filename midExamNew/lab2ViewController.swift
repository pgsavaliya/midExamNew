//
//  lab2ViewController.swift
//  midExamNew
//
//  Created by Pavan savaliya on 2024-02-27.
//

import UIKit

class lab2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //here is the lab 2 code
    var displayNumber = 0
    var incrementValue = 1
    @IBOutlet weak var displayLabel: UILabel!
    //this function for decrease value
    @IBAction func btnDecrease(_ sender: Any) {
        displayNumber = displayNumber - incrementValue
        displayLabel.text = String(displayNumber)
    }
    //this function for increase value
    @IBAction func btnIncrease(_ sender: Any) {
        displayNumber = displayNumber + incrementValue
        displayLabel.text = String(displayNumber)
    }
    //this function for reset button
    @IBAction func btnReset(_ sender: Any) {
        displayNumber = 0
        incrementValue = 1
        displayLabel.text = String(0)
    }
    //this function for step 2 button
    @IBAction func btnStep2(_ sender: Any) {
        incrementValue = 2
    }

}
