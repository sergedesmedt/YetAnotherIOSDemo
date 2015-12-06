//
//  MainViewController.swift
//  YetAnotherScrollViewerDemo
//
//  Created by Trojka Software on 20/11/15.
//  Copyright © 2015 sergedesmedt. All rights reserved.
//

import UIKit



class MainViewController: UIViewController {
    @IBOutlet weak var ScreenSize: UILabel!
    
    @IBOutlet weak var ScrollviewContentInsetTop: UITextField!
    
    @IBOutlet weak var ScrollviewContentInsetBottom: UITextField!
    
    @IBOutlet weak var ScrollviewContentInsetLeft: UITextField!
    
    @IBOutlet weak var ScrollviewContentInsetRight: UITextField!

    
    
    @IBOutlet weak var ScrollviewScrollInsetTop: UITextField!
    
    @IBOutlet weak var ScrollviewScrollInsetBottom: UITextField!
    
    @IBOutlet weak var ScrollviewScrollInsetLeft: UITextField!
    
    @IBOutlet weak var ScrollviewScrollInsetRight: UITextField!
    
    
    @IBOutlet weak var ScrollviewContentSizeWidth: UITextField!
    
    @IBOutlet weak var ScrollviewContentSizeHeight: UITextField!
    
    
    @IBOutlet weak var ScrollviewContentOffsetX: UITextField!
    
    @IBOutlet weak var TableRowCount: UITextField!
    
    @IBOutlet weak var ScrollviewContentOffsetY: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ScreenSize.text = "Width: " + String(self.view.frame.width) + ", Height: " + String(self.view.frame.height)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "ShowScrollview") {
            let target = segue.destinationViewController as! ScrollViewController
            
            target.contentInsetTop = CGFloat((ScrollviewContentInsetTop.text! as NSString).floatValue)
            target.contentInsetBottom = CGFloat((ScrollviewContentInsetBottom.text! as NSString).floatValue)
            target.contentInsetLeft = CGFloat((ScrollviewContentInsetLeft.text! as NSString).floatValue)
            target.contentInsetRight = CGFloat((ScrollviewContentInsetRight.text! as NSString).floatValue)
            
            target.scrollInsetTop = CGFloat((ScrollviewScrollInsetTop.text! as NSString).floatValue)
            target.scrollInsetBottom = CGFloat((ScrollviewScrollInsetBottom.text! as NSString).floatValue)
            target.scrollInsetLeft = CGFloat((ScrollviewScrollInsetLeft.text! as NSString).floatValue)
            target.scrollInsetRight = CGFloat((ScrollviewScrollInsetRight.text! as NSString).floatValue)
            
            target.contentSizeWidth = CGFloat((ScrollviewContentSizeWidth.text! as NSString).floatValue)
            target.contentSizeHeight = CGFloat((ScrollviewContentSizeHeight.text! as NSString).floatValue)
            
            target.contentOffsetX = CGFloat((ScrollviewContentOffsetX.text! as NSString).floatValue)
            target.contentOffsetY = CGFloat((ScrollviewContentOffsetY.text! as NSString).floatValue)
        }
        if(segue.identifier == "ShowTableview") {
            let target = segue.destinationViewController as! TableViewController
            
            target.contentInsetTop = CGFloat((ScrollviewContentInsetTop.text! as NSString).floatValue)
            target.contentInsetBottom = CGFloat((ScrollviewContentInsetBottom.text! as NSString).floatValue)
            target.contentInsetLeft = CGFloat((ScrollviewContentInsetLeft.text! as NSString).floatValue)
            target.contentInsetRight = CGFloat((ScrollviewContentInsetRight.text! as NSString).floatValue)
            
            target.scrollInsetTop = CGFloat((ScrollviewScrollInsetTop.text! as NSString).floatValue)
            target.scrollInsetBottom = CGFloat((ScrollviewScrollInsetBottom.text! as NSString).floatValue)
            target.scrollInsetLeft = CGFloat((ScrollviewScrollInsetLeft.text! as NSString).floatValue)
            target.scrollInsetRight = CGFloat((ScrollviewScrollInsetRight.text! as NSString).floatValue)
            
            target.contentRowCount = Int((TableRowCount.text! as NSString).intValue)
            
            target.contentOffsetX = CGFloat((ScrollviewContentOffsetX.text! as NSString).floatValue)
            target.contentOffsetY = CGFloat((ScrollviewContentOffsetY.text! as NSString).floatValue)
        }
    }
    
}