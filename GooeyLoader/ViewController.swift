//
//  ViewController.swift
//  GooeyLoader
//
//  Created by Kitten Yang on 10/23/15.
//  Copyright © 2015 Kitten Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let gooeyLoader = GooeyLoader(frame: CGRectZero)
        gooeyLoader.center = self.view.center
        gooeyLoader.bounds = CGRectMake(0, 0, 300, 60)
        gooeyLoader.LoaderCounts = 5
        gooeyLoader.LoaderColor = UIColor.redColor()
        
        self.view .addSubview(gooeyLoader)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
}

