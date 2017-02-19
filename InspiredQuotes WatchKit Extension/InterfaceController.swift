//
//  InterfaceController.swift
//  InspiredQuotes WatchKit Extension
//
//  Created by Jack Ngai on 2/16/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var button: WKInterfaceButton!
    @IBOutlet var label: WKInterfaceLabel!
    let quote = Quotes()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        showQuote()
        button.setBackgroundColor(.gray)
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
    
    func showQuote() {
        let quoteIndex = quote.dictionary.count.random()
        label.setText(quote.dictionary[quoteIndex])
    }

    @IBAction func tappedButton() {
        showQuote()
    }
}
