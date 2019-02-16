//
//  BookmarksController.swift
//  SlideOutMenu
//
//  Created by Xavier Castro on 2/15/19.
//  Copyright © 2019 Xavier Castro. All rights reserved.
//

import UIKit

class BookmarksController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "Bookmark: \(indexPath.row)"
        return cell
    }
    
}
