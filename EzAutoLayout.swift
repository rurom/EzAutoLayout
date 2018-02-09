//  EzAutolayout.swift
//  EzAutolayout
//
//  Created by Roman on 2/9/18.
//  Copyright © 2018 Roman Rudavskiy. All rights reserved.
//


import UIKit

extension UIViewController {

//Use this generic function for Autolayout to setup all constraints programmatically using NSLayoutAnchor
func setupViewConstraints(item:UIView, leadingTo:NSLayoutXAxisAnchor, leadingCon:CGFloat, trailingTo:NSLayoutXAxisAnchor, trailingCon:CGFloat, topTo:NSLayoutYAxisAnchor, topCon:CGFloat, bottomTo:NSLayoutYAxisAnchor, bottomCon:CGFloat) {
    
        item.translatesAutoresizingMaskIntoConstraints = false
        item.leadingAnchor.constraint(equalTo: leadingTo, constant: leadingCon).isActive = true
        item.trailingAnchor.constraint(equalTo: trailingTo, constant: trailingCon).isActive = true
        item.topAnchor.constraint(equalTo: topTo, constant:topCon).isActive = true
        item.bottomAnchor.constraint(equalTo: bottomTo, constant:bottomCon).isActive = true
    }

//Use this generic function for Autolayout if you need to setup width and height of the view and align it to center vertically and horizontally
func setupViewWidthHeightCenter (item:UIView, widthMp:CGFloat, heightMp:CGFloat) {
    
    item.translatesAutoresizingMaskIntoConstraints = false
    item.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    item.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    item.widthAnchor.constraint(equalToConstant: (self.view.frame.width)*widthMp).isActive = true
    item.heightAnchor.constraint(equalToConstant: (self.view.frame.height)*heightMp).isActive = true
}

//A Very convenient generic function for shortening the code of self.view.frame.width
func widthMp(mp:CGFloat) -> CGFloat {
    let res = (self.view.frame.width)*mp
    return res
    
}
    
//A Very convenient generic function for shortening the code of self.view.frame.height
func heightMp(mp:CGFloat) -> CGFloat {
    let res = (self.view.frame.height)*mp
    return res
}
    
   
}
    
    



