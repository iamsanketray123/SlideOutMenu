//
//  CustomMenuHeaderView.swift
//  SlideOutMenu
//
//  Created by Xavier Castro on 2/12/19.
//  Copyright © 2019 Xavier Castro. All rights reserved.
//

import UIKit

class CustomMenuHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        // Custom components for our header
        let nameLabel = UILabel()
        nameLabel.text = "Xavier Castro"
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        let usernameLabel = UILabel()
        usernameLabel.text = "@xavrcstro"
        
        let statsLabel = UILabel()
        statsLabel.text = "42 Following 7091 Followers"
        
        // UIView() spacing hack
        let arrangedSubviews = [
            UIView(),
            nameLabel,
            usernameLabel,
            SpacerView(space: 16),
            statsLabel
        ]
        
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 4
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 24, left: 24, bottom: 24, right: 24)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
