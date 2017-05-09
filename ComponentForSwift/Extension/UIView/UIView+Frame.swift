//
//  UIView+Frame.swift
//  ComponentForSwift
//
//  Created by 橙子 on 2017/5/9.
//  Copyright © 2017年 Orange. All rights reserved.
//

import UIKit

extension UIView {
    
    var kwidth : CGFloat { return self.frame.size.width }
    
    func setKwidth (width:CGFloat) {
        var frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
    }
    
    var kheight : CGFloat { return self.frame.size.height }
    
    func setKheight (height:CGFloat) {
        var frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
    }
    
    var ktop : CGFloat { return self.frame.origin.y }
    
    func setKtop (top:CGFloat) {
        var frame = self.frame;
        frame.origin.y = top;
        self.frame = frame;
    }
    
    var kleft : CGFloat { return self.frame.origin.x }
    
    func setKleft (left:CGFloat) {
        var frame = self.frame;
        frame.origin.x = left;
        self.frame = frame;
    }
    
    var kbottom : CGFloat { return self.frame.size.height + self.frame.origin.y }
    
    func setKbottom (bottom:CGFloat) {
        var frame = self.frame;
        frame.origin.y = bottom - frame.size.height;
        self.frame = frame;
    }
    
    var kright : CGFloat { return self.frame.size.width }
    
    func setKright (right:CGFloat) {
        var frame = self.frame;
        frame.origin.x = right - frame.size.width;
        self.frame = frame;
    }
    
    var kcenterX : CGFloat { return self.center.x }
    
    func setKcenterX (centerX:CGFloat) {
        self.center = CGPoint.init(x: centerX, y: self.center.y);
    }
    
    var kcenterY : CGFloat { return self.center.y }
    
    func setKcenterY (centerY : CGFloat) {
        self.center = CGPoint.init(x: self.center.x, y: centerY)
    }
}
