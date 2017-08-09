//
//  CalcUtils.swift
//  WattDBConversion
//
//  Created by John Diczhazy on 6/18/17.
//  Copyright © 2017 John Diczhazy. All rights reserved.
//

import UIKit

class CalcUtils {
   
        class func isNumeric (input: String) -> Bool{
        if (Float(input) != nil){
            return true
        }else{
            return false
        }
    }
    

    class func calculate (input: String, mode: String) -> String{
        var watts: Float = 0
        var dBm: Float = 0
        
        //Convert from Watts to dBm
        if mode == "dBm"{
            watts =   Float(input)!
            dBm = 10*(log10(watts))+30
            return String(dBm)
        }
            
            //Convert from dBm to Watts
        else {
            dBm = Float(input)!
            watts = (pow(10,(dBm/10)))/1000
            return String(watts)
        }
    }
    

}
