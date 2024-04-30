//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Sergey Zakurakin on 26/04/2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        welcomeLabel.text = "Welcome \(user.login)! \nMy name is \(user.person.fullname)"
    }
    
}
