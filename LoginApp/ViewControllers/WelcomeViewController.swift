//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Sergey Zakurakin on 26/04/2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
     
    var welcome: String!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome \(welcome!)!"
    }
    
}
