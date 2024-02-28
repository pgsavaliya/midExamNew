//
//  canadaViewController.swift
//  midExamNew
//
//  Created by Pavan savaliya on 2024-02-27.
//

import UIKit

class canadaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //here is the code of country page(first page)
    @IBOutlet weak var ImageCities: UIImageView!
    
    @IBOutlet weak var lblError: UILabel!
    @IBOutlet weak var txtInputBox: UITextField!
    
    @IBAction func btnFindCity(_ sender: Any) {
        var city = txtInputBox.text
        city = city?.lowercased()
        let cityArray = ["calgary","halifax","montreal","toronto","vancouver","winnipeg"]
        var count :Bool = false
        cityArray.forEach { item in
            if(item == city){
                ImageCities.image = UIImage(named: (item+".jpeg"))
                lblError.text = ""
                count = true
            }
        }
        if(count == false){
            ImageCities.image = UIImage(named: ("canadian flag.jpeg"))
            lblError.text = "Entered city is not found!"
            lblError.textColor = UIColor.red
        }
    }

}
