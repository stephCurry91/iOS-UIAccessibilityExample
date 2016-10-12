//
//  BlackContainerView.swift
//  AccessibilitySampleApp
//
//  Created by Abhay Curam on 10/11/16.
//  Copyright © 2016 Abhay Curam. All rights reserved.
//

import Foundation
import UIKit

public class BlackContainerView : UIView
{
    public var leafButton = LeafButtonView(frame: CGRect.zero)
    public var leafLabel = LeafLabelView(frame: CGRect.zero)
    
    override public var accessibilityLabel: String? {
        get {
            return "Black Container Example Label"
        }
        set {}
    }
    
    override public var accessibilityIdentifier: String? {
        get {
            return "Black Container Example Accessibility ID"
        }
        set {}
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.black
        leafButton = LeafButtonView(frame: CGRect(x: frame.width/2, y: frame.height/2, width: 70, height: 30));
        leafLabel = LeafLabelView(frame: CGRect(x: frame.width/2, y: frame.height/2 + 40, width: 70, height: 30));
        addSubview(leafButton)
        addSubview(leafLabel)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
