//
//  ViewController.swift
//  AccessibilitySampleApp
//
//  Created by Abhay Curam on 10/11/16.
//  Copyright © 2016 Abhay Curam. All rights reserved.
//

import UIKit

class AccessibilityTestViewController: UIViewController {
    
    var mainBackgroundContainerView = RedContainerView(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainBackgroundContainerView = RedContainerView(frame: UIScreen.main.bounds)
        view.addSubview(mainBackgroundContainerView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

