//
//  specials.swift
//  Color
//
//  Created by tosy on 30.11.22.
//

import UIKit
func setSlider(opacityslider: UISlider) {
    let tgl = CAGradientLayer()
    let frame = CGRect(x: 0.0, y: 0.0, width: opacityslider.bounds.width, height: 15.0)
    tgl.frame = frame
    
    tgl.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor, UIColor.green.cgColor]
    
    tgl.borderWidth = 1.0
    tgl.borderColor = UIColor.black.cgColor
    tgl.cornerRadius = 5.0
    
    tgl.endPoint = CGPoint(x: 1.0, y: 1.0)
    tgl.startPoint = CGPoint(x: 0.0, y: 1.0)
    
    UIGraphicsBeginImageContextWithOptions(tgl.frame.size, false, 0.0)
    tgl.render(in: UIGraphicsGetCurrentContext()!)
    let backgroundImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    opacityslider.setMaximumTrackImage(backgroundImage?.resizableImage(withCapInsets: .zero), for: .normal)
    opacityslider.setMinimumTrackImage(backgroundImage?.resizableImage(withCapInsets: .zero), for: .normal)
    
    let layerFrame = CGRect(x: 0, y: 0, width: 10.0, height: 30.0)
    
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = CGPath(rect: layerFrame, transform: nil)
    shapeLayer.fillColor = UIColor.black.cgColor
    
    let thumb = CALayer()
    thumb.frame = layerFrame
    thumb.addSublayer(shapeLayer)
    
    UIGraphicsBeginImageContextWithOptions(thumb.frame.size, false, 0.0)
    
    thumb.render(in: UIGraphicsGetCurrentContext()!)
    let thumbImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    opacityslider.setThumbImage(thumbImage, for: .normal)
    opacityslider.setThumbImage(thumbImage, for: .highlighted)
}
