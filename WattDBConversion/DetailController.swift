//
//  DetailController.swift
//  WattDBConversion
//
//  Created by John Diczhazy on 6/19/17.
//  Copyright © 2017 John Diczhazy. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    var destValue = " "
    
   

    @IBAction func backButton(_ sender: UIButton) {
    self.performSegue(withIdentifier: "backSegue", sender:sender)    }
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var stringOfWords = [String]()
        stringOfWords = destValue.components(separatedBy: " ")
        titleLabel.text = stringOfWords[0] + " " + stringOfWords[1] + " is equal to:"
        valueLabel.text = stringOfWords[2] + " " + stringOfWords[3]

        // Do any additional setup after loadng the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
