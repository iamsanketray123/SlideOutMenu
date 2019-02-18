//
//  ChatroomMenuContainerController.swift
//  SlideOutMenu
//
//  Created by Xavier Castro on 2/17/19.
//  Copyright © 2019 Xavier Castro. All rights reserved.
//

import UIKit

class ChatroomMenuContainerController: UIViewController {
    
    let chatroomsMenuController = ChatroomsMenuController()
    
    let searchContainer = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        
        let chatroomsView = chatroomsMenuController.view!
        view.addSubview(chatroomsView)
        
        view.addSubview(searchContainer)
        searchContainer.backgroundColor = #colorLiteral(red: 0.2549019608, green: 0.1843137255, blue: 0.2470588235, alpha: 1)
        
        let searchBar = UISearchBar()
        searchContainer.addSubview(searchBar)
        searchBar.fillSuperview()
        searchBar.searchBarStyle = .minimal
        
        searchContainer.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .zero, size: .init(width: 0, height: 120))
        
        chatroomsView.anchor(top: searchContainer.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
    
}
