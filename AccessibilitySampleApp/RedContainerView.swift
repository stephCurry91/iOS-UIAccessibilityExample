//
//  RedContainerView.swift
//  AccessibilitySampleApp
//
//  Created by Abhay Curam on 10/11/16.
//  Copyright © 2016 Abhay Curam. All rights reserved.
//

import Foundation
import UIKit

public class RedContainerView : UIView
{
    public var innerContainerView = BlackContainerView(frame: CGRect.zero)
    
    override public var isAccessibilityElement: Bool {
        get {
            return false
        }
        set {}
    }
    
    override public var accessibilityElements: [Any]? {
        get {
            var elements: [Any]? = [Any]()
            
            let firstAccessibleElement = UIAccessibilityElement(accessibilityContainer: self)
            firstAccessibleElement.accessibilityLabel = innerContainerView.accessibilityLabel
            firstAccessibleElement.accessibilityIdentifier = innerContainerView.accessibilityIdentifier
            firstAccessibleElement.accessibilityFrame = convert(innerContainerView.frame, to: nil)
            elements?.append(firstAccessibleElement)
            
            let secondAccessibleElement = UIAccessibilityElement(accessibilityContainer: self)
            secondAccessibleElement.accessibilityLabel = innerContainerView.leafButton.accessibilityLabel
            secondAccessibleElement.accessibilityIdentifier = innerContainerView.leafButton.accessibilityIdentifier
            secondAccessibleElement.accessibilityFrame = convert(innerContainerView.leafButton.frame, to: self)
            elements?.append(secondAccessibleElement)
            
            let thirdAccessibleElement = UIAccessibilityElement(accessibilityContainer: self)
            thirdAccessibleElement.accessibilityLabel = innerContainerView.leafLabel.accessibilityLabel
            thirdAccessibleElement.accessibilityIdentifier = innerContainerView.leafLabel.accessibilityIdentifier
            thirdAccessibleElement.accessibilityFrame = convert(innerContainerView.leafLabel.frame, to: self)
            elements?.append(thirdAccessibleElement)
            
            return elements
        }
        set {}
    }
    
    override public init(frame: CGRect)
    {
        super.init(frame: frame)
        backgroundColor = UIColor.red
        let innerContainerRect = CGRect(x: 30, y: 30, width: frame.width - 60, height: frame.height - 60)
        innerContainerView = BlackContainerView(frame: innerContainerRect)
        addSubview(innerContainerView)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
