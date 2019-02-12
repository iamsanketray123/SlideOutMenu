//
//  ViewController.swift
//  SlideOutMenu
//
//  Created by Xavier Castro on 2/11/19.
//  Copyright © 2019 Xavier Castro. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(handleOpen))
    }
    
    @objc func handleOpen() {
        print("Opening Menu")
    }

    // When editing table view you need to override numberOfRowsInSection and cellForRowAt
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = "Row: \(indexPath.row)"
        return cell
    }

}

