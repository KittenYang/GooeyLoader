//
//  KYAnimator.swift
//  GooeyLoader
//
//  Created by Kitten Yang on 10/24/15.
//  Copyright © 2015 Kitten Yang. All rights reserved.
//

import UIKit



//protocol CurveFuction{
//    
//    func animationCurveWithFuntion
//}

class KYAnimator: NSObject{

    
    func createCosCurveAnimation(keyPath:String?,duration:CFTimeInterval,fromValue:Double,toValue:Double){
        
        let keyFrameAnimation = CAKeyframeAnimation(keyPath: keyPath)
        keyFrameAnimation.values = cosCurveFromValue(duration ,fromValue: fromValue, toValue: toValue)
        keyFrameAnimation.duration = duration
        keyFrameAnimation.fillMode = kCAFillModeForwards
        keyFrameAnimation.removedOnCompletion = false
    }
    
    
    func cosCurveFromValue(duration:CFTimeInterval,fromValue:Double,toValue:Double) -> [Double]{
        let numOfFrames = Int(duration * 60)
        var values = [Double](count: numOfFrames, repeatedValue: 0.0)
        
        for frame in 0..<numOfFrames{
            let x = Double(frame / numOfFrames)
            let value = fromValue + cos(5 * x)
            values[frame] = value
        }
        
        return values
    }
    
    
    
}
