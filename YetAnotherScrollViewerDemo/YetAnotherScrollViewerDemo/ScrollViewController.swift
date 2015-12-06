//
//  ScrollViewController.swift
//  YetAnotherScrollViewerDemo
//
//  Created by Trojka Software on 20/11/15.
//  Copyright © 2015 sergedesmedt. All rights reserved.
//

import Foundation


import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var theScrollValues: UILabel!
    
    @IBOutlet weak var theScroll: UIScrollView!
    
    var contentInsetTop : CGFloat = 0.0
    var contentInsetBottom : CGFloat = 0.0
    var contentInsetLeft : CGFloat = 0
    var contentInsetRight : CGFloat = 0
    
    var scrollInsetTop : CGFloat = 0.0
    var scrollInsetBottom : CGFloat = 0.0
    var scrollInsetLeft : CGFloat = 0
    var scrollInsetRight : CGFloat = 0
    
    var contentSizeHeight : CGFloat = 0
    var contentSizeWidth : CGFloat = 0
    
    var contentOffsetX : CGFloat = 0
    var contentOffsetY : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.theScroll.delegate = self

        let containerSize = CGSize(width: contentSizeWidth, height: contentSizeHeight)
        
        let containerView = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size:containerSize))
        containerView.backgroundColor = UIColor.redColor()
        self.theScroll.addSubview(containerView)
        
        self.theScroll.contentInset = UIEdgeInsets(top: contentInsetTop, left: contentInsetLeft, bottom: contentInsetBottom, right: contentInsetRight)
        
        self.theScroll.scrollIndicatorInsets = UIEdgeInsets(top: scrollInsetTop, left: scrollInsetLeft, bottom: scrollInsetBottom, right: scrollInsetRight);
        
        self.theScroll.contentOffset = CGPoint(x: contentOffsetX, y: contentOffsetY)
        
        self.theScroll.contentSize = containerSize;
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        theScrollValues.text = "Scroll X: " + String(scrollView.contentOffset.x) + ", Y: " + String(scrollView.contentOffset.y)
    }
}