//
//  MenuController.swift
//  SlideOutMenu
//
//  Created by Xavier Castro on 2/11/19.
//  Copyright © 2019 Xavier Castro. All rights reserved.
//

import UIKit

struct MenuItem {
    let icon: UIImage
    let title: String
}

class MenuController: UITableViewController {
    
    let menuItems = [
        MenuItem(icon: #imageLiteral(resourceName: "profile"), title: "Profile"),
        MenuItem(icon: #imageLiteral(resourceName: "lists"), title: "Lists"),
        MenuItem(icon: #imageLiteral(resourceName: "bookmarks"), title: "Bookmarks"),
        MenuItem(icon: #imageLiteral(resourceName: "moments"), title: "Moments")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
    }
    
    // Adding a header to the Menu
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let purpleView = CustomMenuHeaderView()
        return purpleView
    }
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MenuItemCell(style: .default, reuseIdentifier: "cellId")
        let menuItem = menuItems[indexPath.row]
//        cell.textLabel?.text = menuItem.title
//        cell.imageView?.image = menuItem.icon
        return cell
    }
    
}
