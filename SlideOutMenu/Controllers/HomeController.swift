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
        
        setupMenuController()
        
        // Pan Gesture
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        view.addGestureRecognizer(panGesture)
    }
    
    @objc func handlePan(gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)
        //        print(translation)
        
        if gesture.state == .changed {
            // let's drag out our menuController somehow
            var x = translation.x
            
            // Makes it so you can't drag to the left side
            x = min(menuWidth, x)
            x = max(0, x)
            
            let transform = CGAffineTransform(translationX: translation.x, y: 0)
            menuController.view.transform = transform
            navigationController?.view.transform = transform
            
        } else if gesture.state == .ended {
            handleOpen()
        }
    }
    
    let menuController = MenuController()
    
    fileprivate let menuWidth: CGFloat = 300
    
    fileprivate func performAnimations(transform: CGAffineTransform) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.menuController.view.transform = transform
//            self.view.transform = transform
            //            self.navigationController?.view.transform = transform
            self.navigationController?.view.transform = transform
        })
    }
    
    @objc func handleOpen() {
        performAnimations(transform: CGAffineTransform(translationX: self.menuWidth, y: 0))
    }
    
    @objc func handleHide() {
        performAnimations(transform: .identity)
    }
    
    // MARK:- Fileprivate
    
    fileprivate func setupMenuController() {
        // Initial position
        menuController.view.frame = CGRect(x: -menuWidth, y: 0, width: menuWidth, height: self.view.frame.height)
        let mainWindow = UIApplication.shared.keyWindow
        mainWindow?.addSubview(menuController.view)
        addChild(menuController)
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

