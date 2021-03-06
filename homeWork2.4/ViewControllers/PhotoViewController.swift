//
//  PhotoViewController.swift
//  homeWork2.4
//
//  Created by Александра Мельникова on 30.05.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView6: UIImageView!
    
    var photos = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        view.addVerticalGradientLayer()
        
        imageView1.image = UIImage(named: photos[0])
        imageView2.image = UIImage(named: photos[1])
        imageView3.image = UIImage(named: photos[2])
        imageView4.image = UIImage(named: photos[3])
        imageView5.image = UIImage(named: photos[4])
        imageView6.image = UIImage(named: photos[5])
    }
}
