//
//  MenuController.swift
//  SlideOutMenu
//
//  Created by Xavier Castro on 2/11/19.
//  Copyright © 2019 Xavier Castro. All rights reserved.
//

import UIKit

class MenuController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .blue
    }
    
    // Adding a header to the Menu
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let purpleView = UIView()
        purpleView.backgroundColor = .purple
        return purpleView
    }
    
    // Making the header taller
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 200
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = "Menu Item Row: \(indexPath.row)"
        return cell
    }
    
}
