//
//  WelcomeViewController.swift
//  homeWork2.3
//
//  Created by Александра Пушмина on 25.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var pictureLabel: UILabel!
    
    @IBOutlet weak var logOutButton: UIButton!
    
    internal var userName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pictureLabel.text = " \u{1f44b} "
        welcomeLabel.text = "Welcome, \(userName)"
        logOutButton.layer.cornerRadius = 20
    }

    @IBAction func logOutButtonTapped(_ sender: UIButton) {
    }
}
