///Volumes/USB DRIVE/Xcode Files/WattDBConversion/WattDBConversion/ViewController.swift
//  ViewController.swift
//  WattDBConversion
//
//  Created by John Diczhazy on 6/15/17.
//  Copyright © 2017 John Diczhazy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var sourceValue = " "
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let data = Data()
                if let destinationController = segue.destination as? DetailController {
            destinationController.destValue = sourceValue
        }
    }
    
    
      @IBAction func buttonPressed(_ sender: AnyObject) {
        guard let button = sender as? UIButton else {
            return
        }
        
            switch button.tag{
        case 0:
            //Call calulate() method
            if CalcUtils.isNumeric(input: wattsField.text!){
            dBmField.text = CalcUtils.calculate(input: (wattsField.text)!,mode: "dBm")
                alertLabel.text = " "
                sourceValue = wattsField.text! + " Watt(s) " + dBmField.text! + " dBm"
                self.performSegue(withIdentifier: "detailSegue", sender:sender)
                
            }else{
                alert(input: "Watts entry must be numeric!")
                }
                
        case 1:
            //Call calulate() method
            if CalcUtils.isNumeric(input: dBmField.text!){
            wattsField.text = CalcUtils.calculate(input: (dBmField.text)!,mode: "watts")
                alertLabel.text = " "
                sourceValue = dBmField.text! + " dBm " + wattsField.text! + " Watt(s)"
                self.performSegue(withIdentifier: "detailSegue", sender:sender)
            }else{
            alert(input: "dBm entry must be numeric!")
                    }
                
          default: break

        }
    }
    
    @IBOutlet weak var wattsField: UITextField!
    
    @IBOutlet weak var dBmField: UITextField!
    
    @IBOutlet weak var alertLabel: UILabel!
    
        
    func alert (input: String){
        alertLabel.text = input
        let alertController = UIAlertController(title: input, message: "dBm entry must be numeric!", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
        
    }

    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

