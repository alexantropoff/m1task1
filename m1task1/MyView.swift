//
//  MyView.swift
//  m1task1
//
//  Created by Alex Antropoff on 01.03.2023.
//

import UIKit
class MyView: UIView {
    override open class var layerClass: AnyClass {
        return CAGradientLayer.classForCoder()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let gradientLayer = layer as! CAGradientLayer
        gradientLayer.colors = [UIColor.blue.cgColor,
                                UIColor.systemPurple.cgColor,
                                UIColor.red.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.cornerRadius=10
        gradientLayer.shadowOpacity=0.2
        gradientLayer.shadowOffset=CGSize(width: 10, height: 10)
    }
    
}
