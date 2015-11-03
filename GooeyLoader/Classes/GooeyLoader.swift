//
//  GooeyLoader.swift
//  GooeyLoader
//
//  Created by Kitten Yang on 10/23/15.
//  Copyright © 2015 Kitten Yang. All rights reserved.
//

import UIKit

enum LoaderEffects{
    case Line
    case Circle
}

protocol LoaderProperty{
    var LoaderCounts : Int {get set}
    var LoaderColor : UIColor {get set}
    var LoaderEffect : LoaderEffects {get set}
}

extension LoaderProperty where Self : GooeyLoader{
    
    func setUpSubViews(){
        let CircleRadius : CGFloat = self.frame.width / CGFloat(2*self.LoaderCounts + 1)
        
        for i in 0..<self.LoaderCounts {
            let circle = UIView(frame: CGRect(x: CircleRadius*(2 * CGFloat(i)+1), y: frame.height/2 - CircleRadius/2, width: CircleRadius, height: CircleRadius))
            circle.layer.masksToBounds = true
            circle.layer.cornerRadius = CircleRadius/2
            circle.backgroundColor = self.LoaderColor
            self.addSubview(circle)
        }
    }
}


class GooeyLoader: UIView,LoaderProperty {
    
    var LoaderCounts : Int = 1
    var LoaderColor : UIColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 1.0){
        didSet{

        }
    }
    var LoaderEffect : LoaderEffects = .Line;

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = self.LoaderColor
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func willMoveToSuperview(newSuperview: UIView?) {
        super.willMoveToSuperview(newSuperview)
        setUpSubViews()
        
    }
    
}


