//
//  RFBImage.swift
//  RFB BioRepository
//
//  Created by Rhed Shi on 2/7/15.
//  Copyright (c) 2015 MGH. All rights reserved.
//

import UIKit

extension UIImage {
    
    class func imageWithColor(color: UIColor) -> UIImage {
        let pixel: CGRect = CGRectMake(0, 0, 1, 1)
        UIGraphicsBeginImageContextWithOptions(pixel.size, false, 0)
        color.setFill()
        UIRectFill(pixel)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}
