//
//  RFBColor.swift
//  RFB BioRepository
//
//  Created by Rhed Shi on 2/7/15.
//  Copyright (c) 2015 MGH. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func hexadecimal(string: NSString) -> UIColor {
        var clean: NSString = string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).stringByReplacingOccurrencesOfString("#", withString: "", options: nil, range: nil).uppercaseString
        
        if (clean.length < 6) {
            return UIColor.clearColor()
        }
        if (clean.hasPrefix("0X")) {
            clean = clean.substringFromIndex(2)
        }
        if (clean.length != 6) {
            return UIColor.clearColor()
        }
        
        var rgb: UInt32 = 0;
        if (!NSScanner(string: clean).scanHexInt(&rgb)) {
            return UIColor.clearColor()
        }
        else {
            return UIColor(red: ((CGFloat)((rgb & 0xFF0000) >> 16))/255.0, green: ((CGFloat)((rgb & 0xFF00) >> 8))/255.0, blue: ((CGFloat)(rgb & 0xFF))/255.0, alpha: 1.0)
        }
    }
    
    class func MGHBlueColor() -> UIColor {
        
        return UIColor.hexadecimal("#008BB0")
    }
    
    class func BCMDarkBlueColor() -> UIColor {
        
        return UIColor.hexadecimal("#1D437B")
    }
    
    class func BCMLightBlueColor() -> UIColor {
        
        return UIColor.hexadecimal("#5375AA")
    }
}
