//
//  ViewController.swift
//  YetAnotherScrollViewerDemo
//
//  Created by Trojka Software on 10/11/15.
//  Copyright © 2015 sergedesmedt. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate{

    @IBOutlet weak var theTable: UITableView!

    @IBOutlet weak var theScrollValues: UILabel!
    
    var contentInsetTop : CGFloat = 0.0
    var contentInsetBottom : CGFloat = 0.0
    var contentInsetLeft : CGFloat = 0
    var contentInsetRight : CGFloat = 0
    
    var scrollInsetTop : CGFloat = 0.0
    var scrollInsetBottom : CGFloat = 0.0
    var scrollInsetLeft : CGFloat = 0
    var scrollInsetRight : CGFloat = 0
    
    var contentRowCount : Int = 20
    
    var contentOffsetX : CGFloat = 0
    var contentOffsetY : CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.theTable.delegate = self
        self.theTable.dataSource = self
        
        self.theTable.contentInset = UIEdgeInsets(top: contentInsetTop, left: contentInsetLeft, bottom: contentInsetBottom, right: contentInsetRight)
        
        self.theTable.scrollIndicatorInsets = UIEdgeInsets(top: scrollInsetTop, left: scrollInsetLeft, bottom: scrollInsetBottom, right: scrollInsetRight);
        
        self.theTable.contentOffset = CGPoint(x: contentOffsetX, y: contentOffsetY)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentRowCount
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TheCell")
        cell!.textLabel!.text = "Een cell" +  String(indexPath.item)
        cell!.selectionStyle = UITableViewCellSelectionStyle.None
        return cell!
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        theScrollValues.text = "Scroll X: " + String(scrollView.contentOffset.x) + ", Y: " + String(scrollView.contentOffset.y)
    }

}

