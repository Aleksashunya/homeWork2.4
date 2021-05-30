//
//  HobbiesViewController.swift
//  homeWork2.4
//
//  Created by Александра Мельникова on 30.05.2021.
//

import UIKit

class HobbiesViewController: UIViewController {
    
    @IBOutlet weak var hobbiesInfo: UILabel!
    
    var hobbie = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbiesInfo.text = hobbie
        view.addVerticalGradientLayer()
    }
}
