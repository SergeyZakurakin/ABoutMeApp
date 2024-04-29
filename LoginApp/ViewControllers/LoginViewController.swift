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
    
    private let login = "zak"
    private let password = "7777"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func loginButtonPressed() {
        if userNameTextField.text == login && passwordTextField.text == password {
            print("Login successful!")
            performSegue(withIdentifier: "welcomeSegue", sender: login)
        } else {
            alert(title: "Forgot Login or Password", massage: "Please enter your Login or Password")
            print("Incorrect username or password")
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    @IBAction func forgotUsernameAction() {
        alert(title: "Forgot Login or Password", massage: "Please enter \(login)")
    }
    
    
    @IBAction func forgotPasswordAction() {
        alert(title: "Forgot Login or Password", massage: "Please enter \(password)")
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "welcomeSegue" {
            if let username = sender as? String,
               let welcomeVC = segue.destination as? WelcomeViewController {
                welcomeVC.welcome = username
            }
        }
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func alert(title: String, massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let closeButton = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(closeButton)
        self.present(alert, animated: true)

    }
}
