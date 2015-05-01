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
    var fifthContainer: UIView!
    
    // Information Labels
    
    var titleLabel: UILabel!
    var secondContainerTitelLabel: UILabel!
    var bankBalanceLabel: UILabel!
    var lemonsOnHandLabel: UILabel!
    var iceOnHandLabel: UILabel!
    var thirdContainerTitleLabel: UILabel!
    var lemonsToPurchaseLabel: UILabel!
    var lemonsToPurchaseTitleLabel: UILabel!
    var iceCubesToPurchaseLabel: UILabel!
    var iceCubesToPurchaseTitleLabel: UILabel!
    var fourthContainerTitleLabel: UILabel!
    var fourthContainerSubTitleLabel: UILabel!
    var lemonsToMixLabel: UILabel!
    var lemonsToMixTitleLabel: UILabel!
    var iceCubesToMixLabel: UILabel!
    var iceCubesToMixTitleLabel: UILabel!
    
    // Buttons
    
    var lemonsToPurchasePlusButton: UIButton!
    var lemonsToPurchaseMinusButton: UIButton!
    var iceToPurchasePlusButton: UIButton!
    var iceToPurchaseMinusButton: UIButton!
    var lemonsToMixPlusButton: UIButton!
    var lemonsToMixMinusButton: UIButton!
    var iceToMixPlusButton: UIButton!
    var iceToMixMinusButton: UIButton!
    
    // sizes
    
    let kMarginForView:CGFloat = 10
    let kFifth:CGFloat = 1.0/5.0
    
    let kSixth:CGFloat = 1.0/6.0
    let kThird:CGFloat = 1.0/3.0
    let kHalf:CGFloat = 1.0/2.0
    let kEigth:CGFloat = 1.0/8.0
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
           self.setupContainerViews()
            setupFirstContainer(self.firstContainer)
            setupSecondContainer(self.secondContainer)
            setupThirdContainer(self.thirdContainer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupContainerViews () {
    self.firstContainer = UIView(frame: CGRect(
        x: self.view.bounds.origin.x + kMarginForView,
        y: self.view.bounds.origin.y,
        width: self.view.bounds.width - kMarginForView * 2,
        height: self.view.bounds.height * kFifth))
    self.firstContainer.backgroundColor = UIColor.redColor()
    self.view.addSubview(self.firstContainer)
        
    self.secondContainer = UIView(frame: CGRect(
        x: self.view.bounds.origin.x + kMarginForView,
        y: self.firstContainer.frame.height,
        width: self.view.bounds.width - kMarginForView * 2,
        height: self.view.bounds.height * kFifth))
    self.secondContainer.backgroundColor = UIColor.whiteColor()
    self.view.addSubview(self.secondContainer)

    self.thirdContainer = UIView(frame: CGRect(
        x: self.view.bounds.origin.x + kMarginForView,
        y: self.firstContainer.frame.height + self.secondContainer.frame.height,
        width: self.view.bounds.width - kMarginForView * 2,
        height: self.view.bounds.height * kFifth))
    self.thirdContainer.backgroundColor = UIColor.whiteColor()
    self.view.addSubview(self.thirdContainer)
        
    self.fourthContainer = UIView(frame: CGRect(
        x: self.view.bounds.origin.x + kMarginForView,
        y: self.firstContainer.frame.height + self.secondContainer.frame.height + self.thirdContainer.frame.height,
        width: self.view.bounds.width - kMarginForView * 2,
        height: self.view.bounds.height * kFifth))
    self.fourthContainer.backgroundColor = UIColor.yellowColor()
    self.view.addSubview(self.fourthContainer)
        
    self.fifthContainer = UIView(frame: CGRect(
        x: self.view.bounds.origin.x + kMarginForView,
        y: self.firstContainer.frame.height + self.secondContainer.frame.height + self.thirdContainer.frame.height + self.fourthContainer.frame.height,
        width: self.view.bounds.width - kMarginForView * 2,
        height: self.view.bounds.height * kFifth))
    self.fifthContainer.backgroundColor = UIColor.purpleColor()
    self.view.addSubview(self.fifthContainer)
        
    
    }
        
    func setupFirstContainer(containerView: UIView) {
        self.titleLabel = UILabel()
        self.titleLabel.text = "Lemonade Stand"
        self.titleLabel.textColor = UIColor.blackColor()
        self.titleLabel.font = UIFont(name: "MarkerFelt-Wide", size: 40)
        self.titleLabel.sizeToFit()
        self.titleLabel.center = containerView.center
        containerView.addSubview(self.titleLabel)
            
            
    }
    func setupSecondContainer(containerView: UIView) {
        
        self.secondContainerTitelLabel = UILabel()
        self.secondContainerTitelLabel.text = "You Have"
        self.secondContainerTitelLabel.textColor = UIColor.redColor()
        self.secondContainerTitelLabel.font = UIFont(name: "AmericanTypewriter", size: 20)
        self.secondContainerTitelLabel.sizeToFit()
        self.secondContainerTitelLabel.center = CGPoint(x: self.secondContainer.bounds.origin.x + 55, y: self.secondContainerTitelLabel.bounds.origin.y + 18)
        self.secondContainerTitelLabel.textAlignment = NSTextAlignment.Left
         containerView.addSubview(self.secondContainerTitelLabel)
        
        
        self.bankBalanceLabel = UILabel()
        self.bankBalanceLabel.text = "$ " + "0000"
        self.bankBalanceLabel.textColor = UIColor.greenColor()
        self.bankBalanceLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.bankBalanceLabel.sizeToFit()
        self.bankBalanceLabel.center = CGPoint(x: self.secondContainer.frame.width * kHalf, y: self.bankBalanceLabel.bounds.origin.y + 18)
        self.bankBalanceLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.bankBalanceLabel)

        
        self.lemonsOnHandLabel = UILabel()
        self.lemonsOnHandLabel.text = "  " + "0" + " Lemons"
        self.lemonsOnHandLabel.textColor = UIColor.blackColor()
        self.lemonsOnHandLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.lemonsOnHandLabel.sizeToFit()
        self.lemonsOnHandLabel.center = CGPoint(x: self.secondContainer.frame.width * kHalf, y: self.secondContainer.bounds.height * kThird + 10)
        self.lemonsOnHandLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.lemonsOnHandLabel)
        
    
        self.iceOnHandLabel = UILabel()
        self.iceOnHandLabel.text = "     " + "0" + " Ice Cubes"
        self.iceOnHandLabel.textColor = UIColor.blackColor()
        self.iceOnHandLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.iceOnHandLabel.sizeToFit()
        self.iceOnHandLabel.center = CGPoint(x: self.secondContainer.frame.width * kHalf, y: secondContainer.bounds.height * kThird * 2)
        self.iceOnHandLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.iceOnHandLabel)
    
    }
        
    func setupThirdContainer(containerView: UIView) {
        
        self.thirdContainerTitleLabel = UILabel()
        self.thirdContainerTitleLabel.text = "Step 1: Purchase Supplies"
        self.thirdContainerTitleLabel.textColor = UIColor.blueColor()
        self.thirdContainerTitleLabel.font = UIFont(name: "AmericanTypewriter", size: 16)
        self.thirdContainerTitleLabel.sizeToFit()
        self.thirdContainerTitleLabel.center = CGPoint(x: self.thirdContainer.bounds.origin.x + 100, y: self.thirdContainerTitleLabel.bounds.origin.y + 18)
        self.thirdContainerTitleLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.thirdContainerTitleLabel)
        
    }
    
    

}

