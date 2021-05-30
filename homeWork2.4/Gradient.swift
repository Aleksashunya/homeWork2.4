//
//  Gradient.swift
//  homeWork2.4
//
//  Created by Александра Мельникова on 30.05.2021.
//

import UIKit

private let primaryColour = UIColor(
    red: 64/255,
    green: 141/255,
    blue: 247/255,
    alpha: 1
)
private let secondaryColour = UIColor(
    red: 130/255,
    green: 0/255,
    blue: 156/255,
    alpha: 1
)

extension UIView {
    func addVerticalGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColour.cgColor, secondaryColour.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
