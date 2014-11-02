//
//  CircleImage.swift
//  ViewDebugging
//
//  Created by Jordan Morgan on 10/31/14.
//  Copyright (c) 2014 Jordan Morgan. All rights reserved.
//

import UIKit

class CircleImage: UIImageView
{
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        self.contentMode = UIViewContentMode.ScaleAspectFill
        self.layer.cornerRadius = 50
        self.layer.borderColor = UIColor.whiteColor().CGColor
        self.layer.borderWidth = 5
        self.clipsToBounds = true
    }
}
