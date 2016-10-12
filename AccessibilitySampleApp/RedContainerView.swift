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
            let firstAccessibleElement = UIAccessibilityElement(accessibilityContainer: self, accessibilityElementView: innerContainerView)
            let secondAccessibleElement = UIAccessibilityElement(accessibilityContainer: self, accessibilityElementView: innerContainerView.leafButton)
            let thirdAccessibleElement = UIAccessibilityElement(accessibilityContainer: self, accessibilityElementView: innerContainerView.leafLabel)
            elements?.append(firstAccessibleElement)
            elements?.append(secondAccessibleElement)
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

public extension UIAccessibilityElement
{
    public convenience init(accessibilityContainer container: Any, accessibilityElementView view: UIView)
    {
        self.init(accessibilityContainer: container)
        accessibilityLabel = view.accessibilityLabel
        accessibilityHint = view.accessibilityHint
        accessibilityValue = view.accessibilityValue
        accessibilityFrame = view.accessibilityFrame
        accessibilityTraits = view.accessibilityTraits
    }
}

