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

        autoLayout()
        
    }
    
    private func autoLayout() {
        
        let redView = UIView()
        redView.backgroundColor = UIColor.redColor()
        redView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellowColor()
        yellowView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        view.addSubview(redView)
        redView.addSubview(yellowView)
        
        view.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "H:|-(0)-[redView]-(0)-|",
                options: nil,
                metrics: nil,
                views: ["redView":redView])
        
        )
        
        view.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "V:|-(0)-[redView]-(0)-|",
                options: nil,
                metrics: nil,
                views: ["redView":redView])
            
        )
        
        redView.preservesSuperviewLayoutMargins = false
        
        
        redView.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "H:|-[yellowView]-|",
                options: nil,
                metrics: nil,
                views: ["yellowView":yellowView])
            
        )
        
        redView.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "V:|-[yellowView]-|",
                options: nil,
                metrics: nil,
                views: ["yellowView":yellowView])
            
        )
        
//        var constraintsWith = [NSLayoutConstraint]()
//        var constraintsWithout = [NSLayoutConstraint]()
//        
//        let redView = UIView()
//        redView.backgroundColor = UIColor.redColor()
//        redView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        let yellowView = UIView()
//        yellowView.backgroundColor = UIColor.yellowColor()
//        yellowView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        let blueView = UIView()
//        blueView.backgroundColor = UIColor.blueColor()
//        blueView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        view.addSubview(redView)
//        view.addSubview(yellowView)
//        view.addSubview(blueView)
//        
//        let c1 = NSLayoutConstraint.constraintsWithVisualFormat(
//            "H:|-20-[view(100)]",
//            options: nil,
//            metrics: nil,
//            views: ["view":redView]) as [NSLayoutConstraint]
//        
//        let c2 = NSLayoutConstraint.constraintsWithVisualFormat(
//            "H:|-20-[view(100)]",
//            options: nil,
//            metrics: nil,
//            views: ["view":yellowView]) as [NSLayoutConstraint]
//        
//        let c3 = NSLayoutConstraint.constraintsWithVisualFormat(
//            "H:|-20-[view(100)]",
//            options: nil,
//            metrics: nil,
//            views: ["view":blueView]) as [NSLayoutConstraint]
//        
//        let c4 = NSLayoutConstraint.constraintsWithVisualFormat(
//            "V:[tlg]-[view(20)]",
//            options: nil,
//            metrics: nil,
//            views: ["tlg":topLayoutGuide, "view":redView]) as [NSLayoutConstraint]
//        
//        let c5with = NSLayoutConstraint.constraintsWithVisualFormat(
//            "V:[redView]-20-[yellowView(20)]-20-[blueView(20)]",
//            options: nil,
//            metrics: nil,
//            views: ["redView":redView, "yellowView":yellowView, "blueView":blueView]) as [NSLayoutConstraint]
//        
//        let c5without = NSLayoutConstraint.constraintsWithVisualFormat(
//            "V:[redView]-20-[blueView(20)]",
//            options: nil,
//            metrics: nil,
//            views: ["redView":redView, "blueView":blueView]) as [NSLayoutConstraint]
//        
//        constraintsWith.extend(c1)
//        constraintsWith.extend(c2)
//        constraintsWith.extend(c3)
//        constraintsWith.extend(c4)
//        constraintsWith.extend(c5with)
//
//        constraintsWithout.extend(c1)
//        constraintsWithout.extend(c3)
//        constraintsWithout.extend(c4)
//        constraintsWithout.extend(c5without)
//        
//        NSLayoutConstraint.activateConstraints(constraintsWith)
        
        
//        let purpleView = UIView(frame: CGRectMake(100, 111, 132, 194))
//        purpleView.backgroundColor = UIColor.purpleColor()
//        
//        let greenView = UIView()
//        greenView.backgroundColor = UIColor.greenColor()
//        
//        let redView = UIView()
//        redView.backgroundColor = UIColor.redColor()
//        
//        view.addSubview(purpleView)
//        purpleView.addSubview(greenView)
//        purpleView.addSubview(redView)
//        greenView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        redView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        let dictionary = ["greenView":greenView,"redView" :redView]
//        
//        purpleView.addConstraints(
//            NSLayoutConstraint.constraintsWithVisualFormat("H:|[greenView]|",
//                options: nil,
//                metrics: nil,
//                views: dictionary)
//        )
//        
//        purpleView.addConstraints(
//            NSLayoutConstraint.constraintsWithVisualFormat("V:|[greenView(10)]",
//                options: nil,
//                metrics: nil,
//                views: dictionary)
//        )
//        
//        purpleView.addConstraints(
//            NSLayoutConstraint.constraintsWithVisualFormat("H:[redView(20)]|",
//                options: nil,
//                metrics: nil,
//                views: dictionary)
//        )
//        
//        purpleView.addConstraints(
//            NSLayoutConstraint.constraintsWithVisualFormat("V:[redView(20)]|",
//                options: nil,
//                metrics: nil,
//                views: dictionary)
//        )
//        purpleView.addConstraint(
//            NSLayoutConstraint(item: purpleView,
//                attribute: .Left,
//                relatedBy: .Equal,
//                toItem: greenView,
//                attribute: .Left,
//                multiplier: 1, constant: 0)
//        )
//        
//        purpleView.addConstraint(
//            NSLayoutConstraint(item: purpleView,
//                attribute: .Top,
//                relatedBy: .Equal,
//                toItem: greenView,
//                attribute: .Top,
//                multiplier: 1, constant: 0)
//        )
//        
//        purpleView.addConstraint(
//            NSLayoutConstraint(item: purpleView,
//                attribute: .Right,
//                relatedBy: .Equal,
//                toItem: greenView,
//                attribute: .Right,
//                multiplier: 1, constant: 0)
//        )
//        
//        greenView.addConstraint(
//            NSLayoutConstraint(item: greenView,
//                attribute: .Height,
//                relatedBy: .Equal,
//                toItem: nil,
//                attribute: .NotAnAttribute,
//                multiplier: 1, constant: 20)
//        )
//        
//        purpleView.addConstraint(
//            NSLayoutConstraint(item: purpleView,
//                attribute: .Right,
//                relatedBy: .Equal,
//                toItem: redView,
//                attribute: .Right,
//                multiplier: 1, constant: 0)
//        )
//        
//        purpleView.addConstraint(
//            NSLayoutConstraint(item: purpleView,
//                attribute: .Bottom,
//                relatedBy: .Equal,
//                toItem: redView,
//                attribute: .Bottom,
//                multiplier: 1, constant: 0)
//        )
//        
//        redView.addConstraint(
//            NSLayoutConstraint(item: redView,
//                attribute: .Height,
//                relatedBy: .Equal,
//                toItem: nil,
//                attribute: .NotAnAttribute,
//                multiplier: 1, constant: 20)
//        )
//        
//        redView.addConstraint(
//            NSLayoutConstraint(item: redView,
//                attribute: .Width,
//                relatedBy: .Equal,
//                toItem: nil,
//                attribute: .NotAnAttribute,
//                multiplier: 1, constant: 20)
//        )


    }
    
    private func layout() {
        
        let purpleView = UIView(frame: CGRectMake(100, 111, 132, 194))
        purpleView.backgroundColor = UIColor.purpleColor()
        
        let greenView = UIView(frame: CGRectMake(0, 0, 132, 10))
        greenView.backgroundColor = UIColor.greenColor()
        
        let redView = UIView(frame: CGRectMake(purpleView.bounds.width - 20, purpleView.bounds.height - 20, 20, 20))
        redView.backgroundColor = UIColor.redColor()
        
        view.addSubview(purpleView)
        purpleView.addSubview(greenView)
        purpleView.addSubview(redView)
        
        greenView.autoresizingMask = .FlexibleWidth
        redView.autoresizingMask = .FlexibleTopMargin | .FlexibleLeftMargin
        
        purpleView.autoresizingMask = .FlexibleWidth | .FlexibleHeight

        purpleView.frame = view.frame
//        purpleView.bounds.size.width += 40
//        purpleView.bounds.size.height -= 50
    }
    
    private func transform() {
        let redView = UIView(frame: CGRectMake(113, 111, 132, 194))
        redView.backgroundColor = UIColor.redColor()
        
        let greenView = UIView(frame: CGRectInset(redView.bounds, 10, 10))
        greenView.backgroundColor = UIColor.greenColor()
        
        redView.addSubview(greenView)
        view.addSubview(redView)
        
        redView.transform = CGAffineTransformMake(1, 0, -0.2, 1, 0, 0)
        
//        redView.transform = CGAffineTransformMakeScale(1.8, 1.0)
//            CGAffineTransformMakeRotation(45 * CGFloat(M_PI) / 180)
//        greenView.transform = CGAffineTransformRotate(greenView.transform, 45 * CGFloat(M_PI) / 180)
//        greenView.transform = CGAffineTransformTranslate(greenView.transform, 100.0, 0.0)
        
//        let t = CGAffineTransformMakeTranslation(100.0, 0.0)
//        let r = CGAffineTransformMakeRotation(45 * CGFloat(M_PI) / 180)
//        
//        greenView.transform = CGAffineTransformConcat(t, r)
//        greenView.transform = CGAffineTransformConcat(CGAffineTransformInvert(r),greenView.transform)
        
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

