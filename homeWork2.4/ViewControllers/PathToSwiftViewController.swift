//
//  PathToSwiftViewController.swift
//  homeWork2.4
//
//  Created by Александра Мельникова on 30.05.2021.
//

import UIKit

class PathToSwiftViewController: UIViewController {
    
    @IBOutlet weak var pathLabel: UILabel!
    
    var path = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pathLabel.text = path
        view.addVerticalGradientLayer()
    }
}
