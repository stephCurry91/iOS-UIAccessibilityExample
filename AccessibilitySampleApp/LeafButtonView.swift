//
//  LeafButtonView.swift
//  AccessibilitySampleApp
//
//  Created by Abhay Curam on 10/11/16.
//  Copyright © 2016 Abhay Curam. All rights reserved.
//

import Foundation
import UIKit

public class LeafButtonView : UIButton
{
    override public var accessibilityLabel: String? {
        get {
            return "Button Example Label"
        }
        set {}
    }
    
    override public var accessibilityIdentifier: String? {
        get {
            return "Button Accessibility ID"
        }
        set {}
    }
    
    override public init(frame: CGRect)
    {
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setTitle("Button", for: .normal)
        setTitleColor(UIColor.black, for: .normal)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
