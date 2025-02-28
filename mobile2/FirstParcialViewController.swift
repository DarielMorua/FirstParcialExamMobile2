//
//  FirstParcialViewController.swift
//  mobile2
//
//  Created by ITIT2 on 26/02/25.
//

import UIKit

class FirstParcialViewController: UIViewController {
    
    var patientStatus: String?
    
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    
    override func viewDidLoad() {
        self.title = "IMC Calculator"
        super.viewDidLoad()
        
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        let height = Double(height.text ?? "0.0") ?? 0.0
        let weight = Double(weight.text ?? "0.0") ?? 0.0
        
        let imc = ((weight)/(height * height))
        
        print(imc)
        if (imc >= 19 && imc <= 24.9){
            patientStatus = "The patient is at a healthy weight."
            
        }
        else {
            patientStatus = "The patient is NOT at a healthy weight"
        }
        let alert = UIAlertController(title: "Health",
                                      message: patientStatus,
                                      preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "Close",
                                   style: UIAlertAction.Style.default) { _ in
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            print("Shaked")
            patientStatus = ""
            height.text = ""
            weight.text = ""
        }
        
        
    }
}
