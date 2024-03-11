//
//  quadraticFormulaViewController.swift
//  midExamNew
//
//  Created by Pavan savaliya on 2024-02-27.
//

import UIKit

class quadraticFormulaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var txtA: UITextField!
    
    @IBOutlet weak var txtB: UITextField!
     
    @IBOutlet weak var txtC: UITextField!
    
    @IBAction func btnCalculate(_ sender: Any) {
        if !(txtA.text?.isEmpty ?? true) || !(txtB.text?.isEmpty ?? true) || !(txtC.text?.isEmpty ?? true), let textA = txtA.text, let textB = txtB.text, let textC = txtC.text {
            
                if let a = Double(textA), let b = Double(textB), let c = Double(textC) {
                    let discriminant = b * b - 4 * a * c
                    
                    if discriminant < 0 {
                        txtInvisible.text = "There are no real roots since the discriminant is less than zero."
                    } else if discriminant == 0 {
                        let root = (-b + sqrt(discriminant)) / (2 * a)
                        txtInvisible.text = "There is one real root: \(root)"
                    } else {
                        let root1 = (-b + sqrt(discriminant)) / (2 * a)
                        let root2 = (-b - sqrt(discriminant)) / (2 * a)
                        txtInvisible.text = "There are two real roots: \(root1) and \(root2)"
                    }
                } else {
                    txtInvisible.text = ""
                    if Double(textA) == nil {
                        txtInvisible.text = "The value you entered for A is invalid."
                    }
                    if Double(textB) == nil {
                        txtInvisible.text += "\nThe value you entered for B is invalid."
                    }
                    if Double(textC) == nil {
                        txtInvisible.text += "\nThe value you entered for C is invalid."
                    }
                    txtInvisible.textColor = .red
                }
               
            } else {
                txtInvisible.text = "Enter a value for A , B and to find X."
                txtInvisible.textColor = .red
            }
    }
    
    
    @IBOutlet weak var txtInvisible: UITextView!
    
    
    @IBAction func btnClear(_ sender: Any) {
        txtA.text = ""
        txtB.text = ""
        txtC.text = ""
        txtInvisible.text = ""
    }
}
