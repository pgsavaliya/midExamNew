//
//  lab3ViewController.swift
//  midExamNew
//
//  Created by Pavan savaliya on 2024-02-27.
//

import UIKit

class lab3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    //here is lab 3 code
    @IBOutlet weak var txtFname: UITextField!
    @IBOutlet weak var txtSname: UITextField!
    @IBOutlet weak var txtCountry: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var lblInvisible: UILabel!
    @IBOutlet weak var btnSubmitOutlet: UIButton!
    @IBAction func btnAdd(_ sender: Any) {
        let fName = txtFname.text
        let sName = txtSname.text
        let country = txtCountry.text
        let age = txtAge.text
        if(fName != "" || sName != "")
        {
            txtView.text = "Your Name: " + (fName ?? "") + " " + (sName ?? "") + "\n"
        }
        if(country != "")
        {
            txtView.text! += "Country: " + (country ?? "") + "\n"
        }
        if(age != "")
        {
            txtView.text! += "Age: " + (age ?? "")
        }
    }
    @IBAction func btnSubmit(_ sender: Any) {
        let fName = txtFname.text
        let sName = txtSname.text
        let country = txtCountry.text
        let age = txtAge.text
        lblInvisible.text = ""
        if(fName != "" && sName != "" && country != "" && age != ""){
            btnSubmitOutlet.setTitle("Data Submitted", for: .normal)
            btnSubmitOutlet.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 19)
        }else{
            var count:Int = 0
            if(fName == "")
            {
                lblInvisible.text = "FirstName "
                count = 1
            }
            if(sName == "")
            {
                lblInvisible.text! += "Second Name "
                count = 1
            }
            if(country == "")
            {
                lblInvisible.text! += "Country "
                count = 1
            }
            if(age == "")
            {
                lblInvisible.text! += "Age "
                count = 1
            }
            if(count == 1){
                lblInvisible.text! += " is missing."
                lblInvisible.textColor = UIColor.red
            }
        }
    }
    
    
    @IBAction func btnClear(_ sender: Any) {
        txtFname.text = ""
        txtSname.text = ""
        txtCountry.text = ""
        txtAge.text = ""
        txtView.text = ""
        lblInvisible.text = ""
        btnSubmitOutlet.setTitle("Submit", for: .normal)
        btnSubmitOutlet.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 19)
    }
    @IBOutlet weak var txtView: UITextView!

    

}
