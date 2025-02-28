//
//  SumViewController.swift
//  mobile2
//
//  Created by ITIT2 on 11/02/25.
//

import UIKit

class SumViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    
    
    @IBOutlet weak var num2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       // let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
       // view.addGestureRecognizer(tap)
    }
    
    

    @IBAction func buttonAction(_ sender: Any) {
        print("boton")
            let num1 = Int(num1.text ?? "0") ?? 0
            let num2 = Int(num2.text ?? "0") ?? 0
            
            let sum = (num1+num2)
            print(sum)
                let alert = UIAlertController(title: "Result",
                                              message: "The sum is: \(sum) ",
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
            print("Why u shake bruh")
        }
    }
    
    
}
