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
    let rocketImageView = UIImageView(image: #imageLiteral(resourceName: "rocket"))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.2980392157, green: 0.2078431373, blue: 0.2862745098, alpha: 1)
        
        let chatroomsView = chatroomsMenuController.view!
        view.addSubview(chatroomsView)
        
        view.addSubview(searchContainer)
        searchContainer.backgroundColor = #colorLiteral(red: 0.2549019608, green: 0.1843137255, blue: 0.2470588235, alpha: 1)
        
        rocketImageView.contentMode = .scaleAspectFit
        rocketImageView.layer.cornerRadius = 3
        rocketImageView.clipsToBounds = true
        view.addSubview(rocketImageView)
        rocketImageView.anchor(top: nil, leading: view.leadingAnchor, bottom: searchContainer.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 8, bottom: 8, right: 0), size: .init(width: 44, height: 44))
        
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).textColor = .white
        
        let searchBar = UISearchBar()
        searchContainer.addSubview(searchBar)
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Enter some filter"
        searchBar.anchor(top: nil, leading: rocketImageView.trailingAnchor, bottom: searchContainer.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 4, right: 0))
        
        searchContainer.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        searchContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 64).isActive = true
        chatroomsView.anchor(top: searchContainer.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
    
}
