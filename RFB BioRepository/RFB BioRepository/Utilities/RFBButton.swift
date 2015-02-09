//
//  RFBButton.swift
//  RFB BioRepository
//
//  Created by Rhed Shi on 2/7/15.
//  Copyright (c) 2015 MGH. All rights reserved.
//

import UIKit

class RFBButton: UIButton {
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        self.backgroundColor = UIColor.BCMDarkBlueColor()
        self.layer.cornerRadius = 8
    }

}
