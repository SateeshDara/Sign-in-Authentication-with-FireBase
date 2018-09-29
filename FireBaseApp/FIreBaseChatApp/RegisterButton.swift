//
//  RegisterButton.swift
//  FIreBaseChatApp
//
//  Created by Sateesh Dara on 20/09/18.
//  Copyright © 2018 Sateesh Dara. All rights reserved.
//
import UIKit

class RegisterButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setTitle("Register", for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        setTitleColor(.white, for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var gradientLayer: CAGradientLayer!
    
    override func draw(_ rect: CGRect) {
        backgroundColor = .red
        
        if gradientLayer == nil {
            gradientLayer = CAGradientLayer()
            let startColor = UIColor.rgb(r: 108, g:220, b:158).cgColor
            let endColor = UIColor.rgb(r: 68, g: 199, b: 238).cgColor
            gradientLayer.colors = [startColor,endColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
            layer.insertSublayer(gradientLayer, at: 0)
        }
        gradientLayer.frame = rect
        layer.cornerRadius = rect.height / 2
        layer.masksToBounds = true
        super.draw(rect)
    }
}

extension UIColor {
    static let mainBlue = UIColor.rgb(r: 0, g: 119, b:245)
    static func rgb(r: CGFloat, g:CGFloat, b:CGFloat)-> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}

extension UIViewController {
    func setupGradient() {
        let gradientLayer = CAGradientLayer()
        let topColor = UIColor.rgb(r: 68, g: 80, b: 95).cgColor
        let bottomColor = UIColor.rgb(r: 49, g: 60, b: 76).cgColor
        gradientLayer.colors = [topColor,bottomColor]
        gradientLayer.locations = [0,1]
        view.layer.addSublayer(gradientLayer)
        gradientLayer.frame = view.bounds
    }
}
