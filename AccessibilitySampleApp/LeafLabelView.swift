//
//  LeafLabelView.swift
//  AccessibilitySampleApp
//
//  Created by Abhay Curam on 10/11/16.
//  Copyright © 2016 Abhay Curam. All rights reserved.
//

import Foundation
import UIKit

public class LeafLabelView : UILabel
{
    override public var accessibilityLabel: String? {
        get {
            return "Label Example Accessibility Label"
        }
        set {}
    }
    
    override public var accessibilityIdentifier: String? {
        get {
            return "Label Example Accessibility ID"
        }
        set {}
    }
    
    override public init(frame: CGRect)
    {
        super.init(frame: frame)
        backgroundColor = UIColor.white
        text = "Label"
        textColor = UIColor.black
        textAlignment = .center
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
