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
    
    var userName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pictureLabel.text = " \u{1f44b} "
        welcomeLabel.text = "Welcome, \(userName)"
    }

    @IBAction func logOutButtonTapped(_ sender: UIButton) {
    }
    
}
