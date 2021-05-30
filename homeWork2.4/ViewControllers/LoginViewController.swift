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
    
    private let newPerson = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        for viewController in tabBarController.viewControllers! {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = newPerson.person.fullName
            } else if let photoVC = viewController as? PhotoViewController {
                photoVC.photos = newPerson.person.photos
            } else if let hobbiesVC = viewController as? HobbiesViewController {
                hobbiesVC.hobbie = newPerson.person.hobbies
            }
            
            else if let navigationVC = viewController as? UINavigationController {
                for view in navigationVC.viewControllers {
                    if let aboutUserVC = view as? AboutMeViewController {
                        aboutUserVC.fullName = newPerson.person.fullName
                        aboutUserVC.birth = newPerson.person.birth
                        aboutUserVC.city = newPerson.person.city
                        aboutUserVC.firstEducation = newPerson.person.firstEducation
                        aboutUserVC.secondEducation = newPerson.person.secondEducation
                        aboutUserVC.work = newPerson.person.work
                        aboutUserVC.path = newPerson.person.pathToSwiftbook
                        aboutUserVC.instagram = newPerson.person.instagram
                        aboutUserVC.mainPhoto = newPerson.person.mainPhoto
                    }
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            self.logInButtonTapped(logInButton)
        }
        return true
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func logInButtonTapped(_ sender: UIButton) {
        guard userNameTextField.text == newPerson.login && passwordTextField.text == newPerson.password else {
            sayError(title: "Invalid login or password", message: "Please, enter correct login and password")
            return
        }
        performSegue(withIdentifier: "welcome", sender: nil)
    }
    
    @IBAction func forgotNameButton(_ sender: UIButton) {
        sayError(title: "Oops!", message: "Your name is \(newPerson.login) 😉")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        sayError(title: "Oops!", message: "Your password is \(newPerson.password) 😉")
    }
    
    private func sayError(title: String, message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertVC, animated: true)
    }
    
    private func setup() {
        logInButton.layer.cornerRadius = 20
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        view.addVerticalGradientLayer()
    }
}

