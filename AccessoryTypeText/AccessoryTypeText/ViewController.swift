//
//  ViewController.swift
//  AccessoryTypeText
//
//  Created by Antonio Adrian Chavez on 6/3/20.
//  Copyright © 2020 Antonio Adrian Chavez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var date = ["Due to \n 12/15/2020", "Due to \n 12/20/2020", "Due to \n 12/23/2020" ]
    var reason = ["House Bill", "passbook rates", "(INFO REQUESTED) \nRenew Car insurance " ]

    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        TableView.rowHeight = UITableView.automaticDimension
        
        TableView.delegate = self
        TableView.dataSource = self


    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return date.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = TableView.dequeueReusableCell(withIdentifier: "subtitleCell", for: indexPath) as UITableViewCell

        cell.textLabel?.text = reason[indexPath.row]
        
        // This is face no appear on the right cells
        cell.detailTextLabel?.text = date[indexPath.row]
        
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = .byWordWrapping
        cell.detailTextLabel?.textAlignment = .right
        
        cell.detailTextLabel?.numberOfLines = 0
               cell.textLabel?.lineBreakMode = .byWordWrapping
        return cell
    }
    
     
    
}


