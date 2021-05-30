//
//  AboutMeViewController.swift
//  homeWork2.4
//
//  Created by Александра Мельникова on 29.05.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var firstEducationLabel: UILabel!
    @IBOutlet weak var secondEducationLabel: UILabel!
    @IBOutlet weak var workLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    var fullName = ""
    var birth = ""
    var city = ""
    var firstEducation = ""
    var secondEducation = ""
    var work = ""
    var path = ""
    var instagram = ""
    var mainPhoto = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let pathVC = segue.destination as? PathToSwiftViewController else { return }
        pathVC.path = path
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
   
    private func setup() {
        view.addVerticalGradientLayer()
    
        nameLabel.text = fullName
        birthLabel.text = birth
        cityLabel.text = city
        firstEducationLabel.text = firstEducation
        secondEducationLabel.text = secondEducation
        workLabel.text = work
        instagramLabel.text = instagram
        
        photoImageView.image = UIImage(named: mainPhoto)
        photoImageView.layer.cornerRadius = photoImageView.frame.height / 2
    }
}
