//
//  InterfaceController.swift
//  CountriesWatch Extension
//
//  Created by Apple on 10/21/16.
//  Copyright © 2016 CCG. All rights reserved.
//
//


//from http://www.appcoda.com/selectable-table-watchkit/



import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var tableView: WKInterfaceTable!
    var countries = ["Belgium", "USA", "UK", "India", "China", "Australia"]    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        setupTable()
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func setupTable() {
        tableView.setNumberOfRows(countries.count, withRowType: "CountryRow")
        
        for var i = 0; i < countries.count; ++i {
            if let row = tableView.rowControllerAtIndex(i) as? CountryRow {
                row.countryName.setText(countries[i])
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        self.pushControllerWithName("showDetails", context: countries[rowIndex])
    }

}
