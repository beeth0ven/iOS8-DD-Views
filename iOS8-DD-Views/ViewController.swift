//
//  ViewController.swift
//  iOS8-DD-Views
//
//  Created by luojie on 4/7/15.
//  Copyright (c) 2015 luojie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        boundsAndCenter()
        
    }
    
    private func boundsAndCenter(){
        let v1 = UIView(frame: CGRectMake(113, 111, 132, 194))
        v1.backgroundColor = UIColor.redColor()
        
        let v2 = UIView(frame: CGRectInset(v1.bounds, 10, 10))
        v2.backgroundColor = UIColor.greenColor()
        
        view.addSubview(v1)
        v1.addSubview(v2)
        
        v1.bounds.origin.x += 10
        v1.bounds.origin.y += 10

        v2.center = v1.convertPoint(v1.center, fromView: v1.superview)
//        v2.bounds.size.height -= 20
//        v2.bounds.size.width  -= 20
        
        
        
//        let v1 = UIView(frame: CGRectMake(113, 111, 132, 194))
//        v1.backgroundColor = UIColor.redColor()
//        
//        let v2 = UIView(frame: CGRectInset(v1.frame, 10, 10))
//        v2.backgroundColor = UIColor.greenColor()
//        
//        view.addSubview(v1)
//        view.addSubview(v2)

    }
    
    private func subviewAndSuperview(){
        let v1 = UIView(frame: CGRectMake(113, 111, 132, 194))
        v1.backgroundColor = UIColor.purpleColor()
        
        let v2 = UIView(frame: CGRectMake(41, 56, 132, 194))
        v2.backgroundColor = UIColor.greenColor()
        
        let v3 = UIView(frame: CGRectMake(43, 197, 160, 230))
        v3.backgroundColor = UIColor.redColor()
        
        v1.addSubview(v2)
        view.addSubview(v1)
        view.addSubview(v3)
    }
    
}

