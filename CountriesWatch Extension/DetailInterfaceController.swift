//
//  DetailInterfaceController.swift
//  Countries
//
//  Created by Apple on 10/21/16.
//  Copyright © 2016 CCG. All rights reserved.
//

//import Cocoa
import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {
    
    
    @IBOutlet var countryName: WKInterfaceLabel!
    
    @IBOutlet var capital: WKInterfaceLabel!
    
    @IBOutlet var flag: WKInterfaceImage!
    
    @IBOutlet var currency: WKInterfaceLabel!
    
    let capitals = ["Belgium":"Brussels",
        "USA":"Washington DC",
        "UK":"London",
        "India":"New Delhi",
        "China":"Beijing",
        "Australia":"Canberra"]
    let currencies = ["Belgium":"EUR",
        "USA":"USD",
        "UK":"GBP",
        "India":"INR",
        "China":"CNY",
        "Australia":"AUD"]
    let flags = ["Belgium":"be",
        "USA":"us",
        "UK":"gb",
        "India":"in",
        "China":"cn",
        "Australia":"au"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        
        
        let name = context as! String
        countryName.setText(name)
        capital.setText(capitals[name]!)
        currency.setText(currencies[name]!)
        flag.setImage(UIImage(named:flags[name]!))
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
