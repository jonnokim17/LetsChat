//
//  ViewController.swift
//  LetsChat
//
//  Created by Jon Kim on 10/18/16.
//  Copyright © 2016 Jon Kim. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .Plain, target: self, action: #selector(handleLogout))
    }
    
    func handleLogout() {
        let loginVC = LoginController()
        presentViewController(loginVC, animated: true, completion: nil)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}