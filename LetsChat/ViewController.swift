//
//  ViewController.swift
//  LetsChat
//
//  Created by Jon Kim on 10/18/16.
//  Copyright © 2016 Jon Kim. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .Plain, target: self, action: #selector(handleLogout))
        
        if FIRAuth.auth()?.currentUser?.uid == nil {
            // user is not logged in
            performSelector(#selector(handleLogout), withObject: nil, afterDelay: 0)
        }
        
        self.title = FIRAuth.auth()?.currentUser?.email
    }
    
    func handleLogout() {
        do {
            try FIRAuth.auth()?.signOut()
        } catch let logoutError {
            print(logoutError)
        }
        
        let loginVC = LoginController()
        presentViewController(loginVC, animated: true, completion: nil)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}