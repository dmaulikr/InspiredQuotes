//
//  QuoteViewController.swift
//  InspiredQuotes
//
//  Created by Jack Ngai on 2/16/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

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


}

extension QuoteViewController{
    
    // tableview datasource
    // tableview delegate
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quoteCell")!
        cell.textLabel?.text = quotes.dictionary[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.dictionary.count
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        //if editingStyle == .
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let hideAction = UITableViewRowAction(style: .normal, title: "Hide") { _ in
            self.isEditing = false
            print("hide button pressed")
        }
        hideAction.backgroundColor = .orange
        let unhideAction = UITableViewRowAction(style: .normal, title: "Unhide") { _ in
            self.isEditing = false
            print("Unhide button pressed")
        }
        unhideAction.backgroundColor = .green
        return [hideAction, unhideAction]
    }
    
    
}
