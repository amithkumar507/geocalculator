//
//  FirstViewController.swift
//  Geocalculator
//
//  Created by Amith Kumar Aellanki on 5/19/16.
//  Copyright © 2016 Amith Kumar Aellanki. All rights reserved.
//

import UIKit
import CoreLocation
import Foundation


class FirstViewController: UIViewController {

    @IBOutlet weak var Enterlatitude1: DecimalMinusTextField!
    
    
    @IBOutlet weak var Enterlatitude2: DecimalMinusTextField!
    
    
    @IBOutlet weak var EnterLongitude1: DecimalMinusTextField!

    
    @IBOutlet weak var EnterLongitude2: DecimalMinusTextField!
    
    @IBOutlet weak var distresult: UILabel!
    
    
    @IBOutlet weak var bearresult: UILabel!
    
    @IBAction func Tocalculate(sender: AnyObject) {
        let lat1 :CLLocationDegrees = Double(self.Enterlatitude1.text!)!
        let long1 :CLLocationDegrees = Double(self.EnterLongitude1.text!)!
        let lat2 :CLLocationDegrees = Double(self.Enterlatitude2.text!)!
        let long2 :CLLocationDegrees = Double(self.EnterLongitude2.text!)!
        
        let p1 = CLLocation(latitude: lat1, longitude: long1)
        let p2 = CLLocation(latitude: lat2, longitude: long2)
        
        let a = p1.distanceFromLocation(p2)
        let b = p1.bearingToPoint(p2)
        
        self.distresult.text = "\(Double(round(100*a)/100)/1000) Kilometers"
        self.bearresult.text = "\(Double(round(100*b)/100)) Degrees"
        
        
    }
    
    @IBAction func Toclear(sender: AnyObject) {
        view.endEditing(true)
        
        self.Enterlatitude1.text = " "
        
        self.EnterLongitude1.text = " "
        
        self.Enterlatitude2.text = " "
        
        self.EnterLongitude2.text = " "
        
        self.distresult.text = " "
        
        self.bearresult.text = " "
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

