//
//  ViewController.swift
//  Lemonade Stand
//
//  Created by Charlie Franklin on 27/04/2015.
//  Copyright (c) 2015 Charlie Franklin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Containers
    
    var firstContainer: UIView!
    var secondContainer: UIView!
    var thirdContainer: UIView!
    var fourthContainer: UIView!
    
    //sizes
    
    let kMarginForView:CGFloat = 10
    let kQuarter:CGFloat = 1.0/6.0
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
           self.setupContainerViews()}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupContainerViews () {
    self.firstContainer = UIView(frame: CGRect(
        x: self.view.bounds.origin.x + kMarginForView,
        y: self.view.bounds.origin.y,
        width: self.view.bounds.width - kMarginForView * 2,
        height: self.view.bounds.height * kQuarter))
    self.firstContainer.backgroundColor = UIColor.redColor()
    self.view.addSubview(self.firstContainer)
        
    self.secondContainer = UIView(frame: CGRect(
        x: self.view.bounds.origin.x + kMarginForView,
        y: self.firstContainer.frame.height,
        width: self.view.bounds.width - kMarginForView * 2,
        height: self.view.bounds.height * kQuarter))
    self.secondContainer.backgroundColor = UIColor.greenColor()
    self.view.addSubview(self.secondContainer)

    self.thirdContainer = UIView(frame: CGRect(
        x: self.view.bounds.origin.x + kMarginForView,
        y: self.firstContainer.frame.height + self.secondContainer.frame.height,
        width: self.view.bounds.width - kMarginForView * 2,
        height: self.view.bounds.height * kQuarter))
    self.thirdContainer.backgroundColor = UIColor.blueColor()
    self.view.addSubview(self.thirdContainer)
        
    self.fourthContainer = UIView(frame: CGRect(
        x: self.view.bounds.origin.x + kMarginForView,
        y: self.firstContainer.frame.height + self.secondContainer.frame.height + self.thirdContainer.frame.height,
        width: self.view.bounds.width - kMarginForView * 2,
        height: self.view.bounds.height * kQuarter))
    self.fourthContainer.backgroundColor = UIColor.yellowColor()
    self.view.addSubview(self.fourthContainer)
        
        
        
        
        
    }
    

}

