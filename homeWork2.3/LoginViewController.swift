//
//  ViewController.swift
//  homeWork2.3
//
//  Created by Александра Пушмина on 25.05.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    private let userLogin = "User"
    private let userPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 20
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        userNameTextField.tag = 0
        passwordTextField.tag = 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.userName = userNameTextField.text ?? ""
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        let textTag = textField.tag + 1
        if let nextResponder = textField.superview?.viewWithTag(textTag) {
            nextResponder.becomeFirstResponder()
        }
        else {
            self.logInButtonTapped(logInButton)
        }
        return true
    }
    
    @IBAction func logInButtonTapped(_ sender: UIButton) {
        guard userNameTextField.text == userLogin && passwordTextField.text == userPassword else {
            let alertVC = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: .alert)
            present(alertVC, animated: true)
            alertVC.addAction(UIAlertAction(title: "OK", style: .default))
            return
        }
        performSegue(withIdentifier: "welcome", sender: nil)
    }
    
    @IBAction func forgotNameButton(_ sender: UIButton) {
        sayError("Your name is User \u{1F609}")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        sayError("Your password is Password \u{1F609}")
    }
    
    private func sayError(_ message: String) {
        let alertVC = UIAlertController(title: "Oops!", message: message, preferredStyle: .alert)
        present(alertVC, animated: true)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default))
    }
}

