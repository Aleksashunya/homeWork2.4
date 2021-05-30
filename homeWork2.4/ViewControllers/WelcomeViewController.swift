//
//  WelcomeViewController.swift
//  homeWork2.3
//
//  Created by Александра Пушмина on 25.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var logOutButton: UIButton!
    
    var userName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \r \(userName)!"
        logOutButton.layer.cornerRadius = 20
        view.addVerticalGradientLayer()
    }
}

