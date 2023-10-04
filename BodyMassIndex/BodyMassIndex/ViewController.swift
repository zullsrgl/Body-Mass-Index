//
//  ViewController.swift
//  BodyMassIndex
//
//  Created by Zülal Sarıoğlu on 4.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var resaultText: UITextField!
    
    @IBOutlet weak var resaultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    
    @IBAction func calculateButton(_ sender: Any) {
        if let userHeight = Double(heightText.text!), let userWeight = Double(weightText.text!){
            let heightInMeters = userHeight / 100.0
            let resault = userWeight / ( heightInMeters * heightInMeters)
            
            resaultText.text = String(resault)
            
            
            if resault >= 0.0 && resault <= 18.4 {
                resaultLabel.text = "Underweight"
            }else if resault >= 18.5 && resault <= 24.9{
                resaultLabel.text = "Normal Weight"
            }
            else if resault >= 25.0 && resault <= 29.9{
                resaultLabel.text =  "Overweight"
            }
            else if resault >= 30.0 && resault <= 34.9{
                resaultLabel.text = "Obesity Class I"
            }
            else if resault >= 35.0 && resault <= 44.9{
                resaultLabel.text = "Obesity Class II"
            }
            else {
                resaultLabel.text = "Obesity Class III"
            }
                
            }
            
        }

    }
    
    
