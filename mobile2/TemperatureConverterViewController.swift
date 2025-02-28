//
//  TemperatureConverterViewController.swift
//  mobile2
//
//  Created by ITIT2 on 05/02/25.
//

import UIKit

class TemperatureConverterViewController: UIViewController {

    @IBOutlet weak var temperature: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func convertir(result:Double)-> Double{
       var fahren = result * (9/5)+32
        
        if fahren<=32{
            image.image=UIImage(named: "nieve")
        }
        else if fahren>32 && fahren < 86{
            image.image=UIImage(named:"playa")
        }
        else{
            image.image=UIImage(named:"sol")

        }
        return (fahren)
        
    }
 
    @IBAction func convert(_ sender: Any) {
        var celsius=Double(temperature.text ?? "0.0") ?? 0.0
        
        label.text = "El resultado es: \(convertir(result:celsius))"
        
    
        
    }
    
    @IBAction func reset(_ sender: Any) {
        image.image=UIImage(named:"prueba")
        temperature.text=""
        label.text=""
        
    }
    
}
