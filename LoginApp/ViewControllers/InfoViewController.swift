//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Sergey Zakurakin on 29/04/2024.
//

import UIKit

final class InfoViewController: UIViewController {
    
    
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var postLabel: UILabel!

    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        photoImageView.layer.cornerRadius = photoImageView.frame.height / 2
        photoImageView.image = UIImage(named: user.person.photo)
        nameLabel.text = "Name:  \(user.person.name)"
        surnameLabel.text = "Surname:  \(user.person.surname)"
        companyLabel.text = "Company:  \(user.person.job.title)"
        postLabel.text = "working post:  \(user.person.job.department)"

    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bio = segue.destination as? BioViewController
        bio?.bio = user.person.bio
    }

}
