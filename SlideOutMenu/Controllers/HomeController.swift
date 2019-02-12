//
//  ViewController.swift
//  SlideOutMenu
//
//  Created by Xavier Castro on 2/11/19.
//  Copyright © 2019 Xavier Castro. All rights reserved.
//

import UIKit

class HomeController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .red
        setupNavigationItems()
    }
    
    let menuController = MenuController()
    
    @objc func handleOpen() {
        print("Opening Menu")
        menuController.view.frame = CGRect(x: 0, y: 0, width: 300, height: self.view.frame.height)
        
        // Grabbing entire application's window via Singleton
        // This makes the view span the entire device instead of under the navigation tab
        let mainWindow = UIApplication.shared.keyWindow
        mainWindow?.addSubview(menuController.view)
        
        // We need this to be able to see the cells inside the MenuController
        addChild(menuController)
    }
    
    @objc func handleHide() {
        print("Hiding Menu")
        menuController.view.removeFromSuperview()
        menuController.removeFromParent()
    }
    
    fileprivate func setupNavigationItems() {
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(handleOpen))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Hide", style: .plain, target: self, action: #selector(handleHide))
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

