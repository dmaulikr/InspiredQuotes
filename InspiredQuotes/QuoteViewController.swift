//
//  QuoteViewController.swift
//  InspiredQuotes
//
//  Created by Jack Ngai on 2/16/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//


// How do I display the changes that a user made using persistence?

// Issue: When user hides a quote, it shows as grayed out, but if user
// leaves the app and relaunches, the hidden quote is no longer shown
// as grayed out. 

// To resolve: Keep another array of bools, it goes from 0 - 99, every time
// the user hides a quote, the corresponding row becomes true, but how do I
// read from this array to change the colors of the table?

// it might be easier to use Core Data for this whole project. Read the
// quotes from a plist into Core Data (if this is first app launch), then 
// every time the user hides a quote, save it into Core Data. To address
// the color issue, each quote becomes an object, and the quote is a string
// in the object and the "hidden" becomes a bool. Still doesn't quite
// address how to change the color, but there's gotta be a way. In addition,
// this makes sure the hidden field is linked up to the quote unlike an
// extra array of bools.

// Instead of doing all this, just let user delete the quotes, add a restore
// button that will restore all quotes. 


import UIKit

class QuoteViewController: UITableViewController {

    let quotes = Quotes()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func changeRowTextColor(cellForRowAt indexPath: IndexPath) {
        
    }

}

extension QuoteViewController{
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quoteCell")!
        cell.textLabel?.text = quotes.dictionary[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.dictionary.count
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {

    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let cell = tableView.cellForRow(at: indexPath)
        if cell?.textLabel?.textColor == .black{
            let hideAction = UITableViewRowAction(style: .normal, title: "Hide from Watch") { _ in
                let cell = tableView.cellForRow(at: indexPath)
                cell?.textLabel?.textColor = .gray
                tableView.setEditing(false, animated: true)
                // TODO: Delete quote from stored version of quote dictionary
                
                
                guard let quote = cell?.textLabel?.text else {
                    // TODO: Add error message that you can't hide quote
                    return
                }
            
                let tempArray = [quote]
                var customQuotesDictionary = UserDefaults.standard.array(forKey: "customQuotes")
                
                // TODO: Add guard statements so you don't force unwrap
                
                customQuotesDictionary = customQuotesDictionary?.filter { !tempArray.contains($0 as! String) }
                
                UserDefaults.standard.set(customQuotesDictionary, forKey: "customQuotes")
                
                // TEST
                print("\(customQuotesDictionary)")
                
            }
            hideAction.backgroundColor = .orange
            return [hideAction]
        } else {
            let unhideAction = UITableViewRowAction(style: .normal, title: "Unhide from Watch") { _ in
                let cell = tableView.cellForRow(at: indexPath)
                cell?.textLabel?.textColor = .black
                tableView.setEditing(false, animated: true)
                // TODO: Add quote into stored version of quote dictionary
                
                var customQuotesDictionary = UserDefaults.standard.array(forKey: "customQuotes")
                
                customQuotesDictionary?.append(cell?.textLabel?.text as Any)
                
                UserDefaults.standard.set(customQuotesDictionary, forKey: "customQuotes")
                
                
                // TEST
                print("\(customQuotesDictionary)")
                
            }
            unhideAction.backgroundColor = .green
            return [unhideAction]
        }
    }
    
    
}
