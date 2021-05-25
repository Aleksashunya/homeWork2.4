//
//  ViewController.swift
//  homeWork2.3
//
//  Created by Александра Пушмина on 25.05.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func logInButtonTapped(_ sender: UIButton) {
        if userNameTextField.text != "User" && passwordTextField.text != "Password" {
            let alertVC = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: .alert)
            present(alertVC, animated: true)
            alertVC.addAction(UIAlertAction(title: "OK", style: .default))
        }
    }
   
    @IBAction func forgotNameButton(_ sender: UIButton) {
        let alertVC = UIAlertController(title: "Oops!", message: "Your name is User \u{1F609}", preferredStyle: .alert)
        present(alertVC, animated: true)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default))
    }
    

    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        let alertVC = UIAlertController(title: "Oops!", message: "Your password is Password \u{1F609}", preferredStyle: .alert)
        present(alertVC, animated: true)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default))
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.userName = userNameTextField.text ?? ""
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
    }
    
    
    
}

