//
//  SpacerView.swift
//  SlideOutMenu
//
//  Created by Xavier Castro on 2/12/19.
//  Copyright © 2019 Xavier Castro. All rights reserved.
//

import UIKit

class SpacerView: UIView {
    
    let space: CGFloat
    
    override var intrinsicContentSize: CGSize {
        return .init(width: space, height: space)
    }
    
    init(space: CGFloat) {
        self.space = space
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
