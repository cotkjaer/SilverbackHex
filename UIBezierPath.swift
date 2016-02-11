//
//  UIBezierPath.swift
//  SilverbackHex
//
//  Created by Christian Otkjær on 11/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import UIKit

public extension UIBezierPath
{
    /// Initializeses the bezier curve as a 6-Sided Convex Regular Polygon (a Hex)
    convenience init(hexagonWithCenter center: CGPoint = CGPointZero, sideLength: CGFloat, orientation: HexOrientation = .Vertical)
    {
        self.init()

        let n = 6
        
        let π = CGFloat(M_PI)
        let π2 = CGFloat(M_PI + M_PI)
        
        let radius = sideLength
        
        moveToPoint(CGPoint(x: radius, y: 0))
        
        for theta in (1 ..< n).map({ CGFloat($0) * π2 / CGFloat(n)} )
        {
            addLineToPoint(CGPoint(x: radius * cos(theta), y: radius * sin(theta)))
        }
        
        closePath()
        
        if orientation == .Vertical
        {
            applyTransform(CGAffineTransformMakeRotation(π / CGFloat(n)))
        }
        
        applyTransform(CGAffineTransformMakeTranslation(center.x, center.y))
    }
}

