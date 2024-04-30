//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Sergey Zakurakin on 26/04/2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        
        userNameTextField.text = user.login
        passwordTextField.text = user.password
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    @IBAction func forgotUsernameAction() {
        alert(title: "Forgot Login or Password", massage: "Please enter \(user.login)")
    }
    
    
    @IBAction func forgotPasswordAction() {
        alert(title: "Forgot Login or Password", massage: "Please enter \(user.password)")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userNameTextField.text == user.login && passwordTextField.text == user.password {
            print("Login successful!")
            return true
        } else {
            alert(
                title: "Forgot Login or Password",
                massage: "Please enter your Login or Password") {
                    self.passwordTextField.text = ""
                }
            print("Incorrect username or password")
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tapBarVC = segue.destination as? UITabBarController
        tapBarVC?.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                if let infoVC = navigationVC.topViewController as? InfoViewController {
                    infoVC.user = user
                }
            }
        }
        
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) {
        userNameTextField.text = "zak"
        passwordTextField.text = "7777"
    }
    
    private func alert(title: String, massage: String, complition: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let closeButton = UIAlertAction(title: "OK", style: .cancel) { _ in
            complition?()
        }
        alert.addAction(closeButton)
        self.present(alert, animated: true)

    }
}
