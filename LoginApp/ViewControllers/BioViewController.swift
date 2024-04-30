//
//  BioViewController.swift
//  LoginApp
//
//  Created by Sergey Zakurakin on 29/04/2024.
//

import UIKit

final class BioViewController: UIViewController {

    
    @IBOutlet var bioLabel: UILabel!
    
    
    
    var bio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bioLabel.text = bio
    }

}


//
//
