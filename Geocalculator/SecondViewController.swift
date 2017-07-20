//
//  SecondViewController.swift
//  Geocalculator
//
//  Created by Amith Kumar Aellanki on 5/19/16.
//  Copyright © 2016 Amith Kumar Aellanki. All rights reserved.
//

import UIKit
import CoreLocation
import Foundation

class SecondViewController: UIViewController {

    @IBOutlet weak var Seclatitude: DecimalMinusTextField!
    
    @IBOutlet weak var Seclongtide: DecimalMinusTextField!
    
    @IBOutlet weak var SecDistance: DecimalMinusTextField!
    
    @IBOutlet weak var SecBearing: DecimalMinusTextField!

    @IBOutlet weak var SecResult: UILabel!
    
    @IBAction func SecCalculate(sender: AnyObject) {
        
        let Seclat :CLLocationDegrees = Double(self.Seclatitude.text!)!
        let Seclong :CLLocationDegrees = Double(self.Seclongtide.text!)!
        let Secdist :CLLocationDegrees = Double(self.SecDistance.text!)!
        let Secbear :CLLocationDegrees = Double(self.SecBearing.text!)!
    
        let p = CLLocation(latitude: Seclat, longitude: Seclong)
        
        let SecResult :CLLocation = p.findingPoint(Double(self.SecBearing.text!)!, atDistance: Double(self.SecDistance.text!)!)
        
        self.SecResult.text = "(\(Double(round(SecResult.coordinate.latitude*100000)/100000)), \(Double(round(SecResult.coordinate.longitude*100000)/100000))"
        
        }
    
    @IBAction func SecClear(sender: AnyObject) {
        view.endEditing(true)
        self.Seclatitude.text = " "
        self.Seclongtide.text = " "
        self.SecDistance.text = " "
        self.SecBearing.text = " "
        self.SecResult.text = " "
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

