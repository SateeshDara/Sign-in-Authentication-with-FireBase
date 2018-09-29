//
//  ViewController.swift
//  FIreBaseChatApp
//
//  Created by Sateesh Dara on 17/09/18.
//  Copyright © 2018 Sateesh Dara. All rights reserved.
//

import UIKit
import Firebase


class ViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        view.backgroundColor = .cyan 
   }
    
    @objc func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
    

}
