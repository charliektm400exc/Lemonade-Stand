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
    var lemonsToPurchaseTitleLabel: UILabel!
    var lemonsToPurchaseLabel: UILabel!
    var iceCubesToPurchaseLabel: UILabel!
    var iceCubesToPurchaseTitleLabel: UILabel!
    var fourthContainerTitleLabel: UILabel!
    var fourthContainerSubTitleLabelLineOne: UILabel!
    var fourthContainerSubTitleLabelLineTwo: UILabel!
    var fiifthContainerTitleLabel: UILabel!
    var fifthContainerSubTitleLabelLineOne: UILabel!
    var fifthContainerSubTitleLabelLineTwo: UILabel!
    var fifthContainerSubTitleLabelLineThree: UILabel!
    var fifthContainerSubTitleLabelLineFour: UILabel!
    var lemonsToMixLabel: UILabel!
    var lemonsToMixTitleLabel: UILabel!
    var iceCubesToMixLabel: UILabel!
    var iceCubesToMixTitleLabel: UILabel!
    
    // Buttons
    
    var lemonsToPurchasePlusButton: UIButton!
    var lemonsToPurchaseMinusButton: UIButton!
    var iceCubesToPurchasePlusButton: UIButton!
    var iceCubesToPurchaseMinusButton: UIButton!
    var lemonsToMixPlusButton: UIButton!
    var lemonsToMixMinusButton: UIButton!
    var iceCubesToMixPlusButton: UIButton!
    var iceCubesToMixMinusButton: UIButton!
    
    // sizes
    
    let kMarginForView:CGFloat = 10
    let kFifth:CGFloat = 1.0/5.0
    
    let kSixth:CGFloat = 1.0/6.0
    let kQuarter:CGFloat = 1.0/4.0
    let kThird:CGFloat = 1.0/3.0
    let kHalf:CGFloat = 1.0/2.0
    let kEigth:CGFloat = 1.0/8.0
    let kTenth:CGFloat = 1.0/10.0
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
           self.setupContainerViews()
            setupFirstContainer(self.firstContainer)
            setupSecondContainer(self.secondContainer)
            setupThirdContainer(self.thirdContainer)
            setUpFourthContainer(self.fourthContainer)
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
        self.secondContainerTitelLabel.center = CGPoint(x: self.secondContainer.bounds.origin.x + 50, y: self.secondContainerTitelLabel.bounds.origin.y + 18)
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
        self.thirdContainerTitleLabel.font = UIFont(name: "AmericanTypewriter", size: 20)
        self.thirdContainerTitleLabel.sizeToFit()
        self.thirdContainerTitleLabel.center = CGPoint(x: self.thirdContainer.bounds.origin.x + 125, y: self.thirdContainerTitleLabel.bounds.origin.y + 18)
        self.thirdContainerTitleLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.thirdContainerTitleLabel)
        

        self.lemonsToPurchaseTitleLabel = UILabel()
        self.lemonsToPurchaseTitleLabel.text = "Lemons for $2:"
        self.lemonsToPurchaseTitleLabel.textColor = UIColor.blackColor()
        self.lemonsToPurchaseTitleLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.lemonsToPurchaseTitleLabel.sizeToFit()
        self.lemonsToPurchaseTitleLabel.center = CGPoint(x: self.thirdContainer.bounds.origin.x + 110, y: self.thirdContainer.bounds.height * kThird + 10)
        self.lemonsToPurchaseTitleLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.lemonsToPurchaseTitleLabel)
        
        self.lemonsToPurchasePlusButton = UIButton()
        self.lemonsToPurchasePlusButton.setTitle("+", forState: UIControlState.Normal)
        self.lemonsToPurchasePlusButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.lemonsToPurchasePlusButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 16)
        self.lemonsToPurchasePlusButton.sizeToFit()
        self.lemonsToPurchasePlusButton.center = CGPoint(x: containerView.frame.width * kHalf + 20, y: self.thirdContainer.bounds.height * kThird + 10)
        self.lemonsToPurchasePlusButton.addTarget(self, action: "lemonsToPurcasePlusButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.lemonsToPurchasePlusButton)
        
        self.lemonsToPurchaseLabel = UILabel()
        self.lemonsToPurchaseLabel.text = "0"
        self.lemonsToPurchaseLabel.textColor = UIColor.blackColor()
        self.lemonsToPurchaseLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.lemonsToPurchaseLabel.sizeToFit()
        self.lemonsToPurchaseLabel.center = CGPoint(x: self.thirdContainer.bounds.width * kHalf + 60, y: self.thirdContainer.bounds.height * kThird + 10)
        self.lemonsToPurchaseLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.lemonsToPurchaseLabel)
        
        
        self.lemonsToPurchaseMinusButton = UIButton()
        self.lemonsToPurchaseMinusButton.setTitle("-", forState: UIControlState.Normal)
    
        self.lemonsToPurchaseMinusButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.lemonsToPurchaseMinusButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 16)
        self.lemonsToPurchaseMinusButton.sizeToFit()
        self.lemonsToPurchaseMinusButton.center = CGPoint(x: containerView.frame.width * kHalf + 100, y: self.thirdContainer.bounds.height * kThird + 10)
        self.lemonsToPurchaseMinusButton.addTarget(self, action: "lemonsToPurcaseMinusButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.lemonsToPurchaseMinusButton)
        
        
        
        self.iceCubesToPurchaseTitleLabel = UILabel()
        self.iceCubesToPurchaseTitleLabel.text = "Ice Cubes for $1:"
        self.iceCubesToPurchaseTitleLabel.textColor = UIColor.blackColor()
        self.iceCubesToPurchaseTitleLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.iceCubesToPurchaseTitleLabel.sizeToFit()
        self.iceCubesToPurchaseTitleLabel.center = CGPoint(x: self.thirdContainer.bounds.origin.x + 95,  y: self.thirdContainer.bounds.height * kThird * 2)
        self.iceCubesToPurchaseTitleLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.iceCubesToPurchaseTitleLabel)
    
        
     
        
        self.iceCubesToPurchasePlusButton = UIButton()
        self.iceCubesToPurchasePlusButton.setTitle("+", forState: UIControlState.Normal)
        self.iceCubesToPurchasePlusButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.iceCubesToPurchasePlusButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 16)
        self.iceCubesToPurchasePlusButton.sizeToFit()
        self.iceCubesToPurchasePlusButton.center = CGPoint(x: containerView.frame.width * kHalf + 20, y: self.thirdContainer.bounds.height * kThird * 2)
        self.iceCubesToPurchasePlusButton.addTarget(self, action: "iceToPurcasePlusButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.iceCubesToPurchasePlusButton)
        
        self.iceCubesToPurchaseLabel = UILabel()
        self.iceCubesToPurchaseLabel.text = "0"
        self.iceCubesToPurchaseLabel.textColor = UIColor.blackColor()
        self.iceCubesToPurchaseLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.iceCubesToPurchaseLabel.sizeToFit()
        self.iceCubesToPurchaseLabel.center = CGPoint(x: self.thirdContainer.bounds.width * kHalf + 60, y: self.thirdContainer.bounds.height * kThird * 2)
        self.iceCubesToPurchaseLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.iceCubesToPurchaseLabel)
        
        
        self.iceCubesToPurchaseMinusButton = UIButton()
        self.iceCubesToPurchaseMinusButton.setTitle("-", forState: UIControlState.Normal)
        
        self.iceCubesToPurchaseMinusButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.iceCubesToPurchaseMinusButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 16)
        self.iceCubesToPurchaseMinusButton.sizeToFit()
        self.iceCubesToPurchaseMinusButton.center = CGPoint(x: containerView.frame.width * kHalf + 100, y: self.thirdContainer.bounds.height * kThird * 2)
        self.iceCubesToPurchaseMinusButton.addTarget(self, action: "iceToPurcaseMinusButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.iceCubesToPurchaseMinusButton)
        
      }
    
    
    func setUpFourthContainer(containerView: UIView) {
     
        self.fourthContainerTitleLabel = UILabel()
        self.fourthContainerTitleLabel.text = "Step 2: Mix your lemonade."
        self.fourthContainerTitleLabel.textColor = UIColor.blueColor()
        self.fourthContainerTitleLabel.font = UIFont(name: "American Typewriter", size: 20)
        self.fourthContainerTitleLabel.sizeToFit()
        self.fourthContainerTitleLabel.center = CGPointMake(self.fourthContainer.frame.origin.x + 125, self.fourthContainer.bounds.origin.y + 10)
        self.fourthContainerTitleLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.fourthContainerTitleLabel)
        

        self.fourthContainerSubTitleLabelLineOne = UILabel()
        self.fourthContainerSubTitleLabelLineOne.text = "Do your cusomers prefer more"
        self.fourthContainerSubTitleLabelLineOne.textColor = UIColor.blueColor()
        self.fourthContainerSubTitleLabelLineOne.font = UIFont(name: "American Typewriter", size: 15)
        self.fourthContainerSubTitleLabelLineOne.sizeToFit()
        self.fourthContainerSubTitleLabelLineOne.center = CGPointMake(self.fourthContainer.frame.origin.x + 220, self.fourthContainer.bounds.height * kThird - 10)
        self.fourthContainerSubTitleLabelLineOne.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.fourthContainerSubTitleLabelLineOne)
        
        
        self.fourthContainerSubTitleLabelLineTwo = UILabel()
        self.fourthContainerSubTitleLabelLineTwo.text = "ice or more lemons today"
        self.fourthContainerSubTitleLabelLineTwo.textColor = UIColor.blueColor()
        self.fourthContainerSubTitleLabelLineTwo.font = UIFont(name: "American Typewriter", size: 15)
        self.fourthContainerSubTitleLabelLineTwo.sizeToFit()
        self.fourthContainerSubTitleLabelLineTwo.center = CGPointMake(self.fourthContainer.frame.origin.x + 200, self.fourthContainer.bounds.height * kThird + 5)
        self.fourthContainerSubTitleLabelLineTwo.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.fourthContainerSubTitleLabelLineTwo)
        
        self.lemonsToMixLabel = UILabel()
        self.lemonsToMixLabel.text = "Lemons:"
        self.lemonsToMixLabel.textColor = UIColor.blackColor()
        self.lemonsToMixLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.lemonsToMixLabel.sizeToFit()
        self.lemonsToMixLabel.center = CGPoint(x: self.fourthContainer.bounds.origin.x + 150, y: self.fourthContainer.bounds.height * kThird + 25)
        self.lemonsToMixLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.lemonsToMixLabel)

                self.lemonsToMixPlusButton = UIButton()
        self.lemonsToMixPlusButton.setTitle("+", forState: UIControlState.Normal)
        self.lemonsToMixPlusButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.lemonsToMixPlusButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 16)
        self.lemonsToMixPlusButton.sizeToFit()
        self.lemonsToMixPlusButton.center = CGPoint(x: containerView.frame.width * kHalf + 20, y: self.fourthContainer.bounds.height * kThird + 25)
        self.lemonsToMixPlusButton.addTarget(self, action: "lemonsToPurcasePlusButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.lemonsToMixPlusButton)
        
        self.lemonsToMixLabel = UILabel()
        self.lemonsToMixLabel.text = "0"
        self.lemonsToMixLabel.textColor = UIColor.blackColor()
        self.lemonsToMixLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.lemonsToMixLabel.sizeToFit()
        self.lemonsToMixLabel.center = CGPoint(x: self.fourthContainer.bounds.width * kHalf + 60, y: self.fourthContainer.bounds.height * kThird + 25)
        self.lemonsToMixLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.lemonsToMixLabel)
        
        
        self.lemonsToMixMinusButton = UIButton()
        self.lemonsToMixMinusButton.setTitle("-", forState: UIControlState.Normal)
        
        self.lemonsToMixMinusButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.lemonsToMixMinusButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 16)
        self.lemonsToMixMinusButton.sizeToFit()
        self.lemonsToMixMinusButton.center = CGPoint(x: containerView.frame.width * kHalf + 100, y: self.fourthContainer.bounds.height * kThird + 25)
        self.lemonsToMixMinusButton.addTarget(self, action: "lemonsToPurcaseMinusButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.lemonsToMixMinusButton)
        
        
        
        self.iceCubesToMixTitleLabel = UILabel()
        self.iceCubesToMixTitleLabel.text = "Ice Cubes for $1:"
        self.iceCubesToMixTitleLabel.textColor = UIColor.blackColor()
        self.iceCubesToMixTitleLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.iceCubesToMixTitleLabel.sizeToFit()
        self.iceCubesToMixTitleLabel.center = CGPoint(x: self.fourthContainer.bounds.origin.x + 95,  y: self.fourthContainer.bounds.height * kThird * 2 + 10)
        self.iceCubesToMixTitleLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.iceCubesToMixTitleLabel)
        
        self.iceCubesToMixPlusButton = UIButton()
        self.iceCubesToMixPlusButton.setTitle("+", forState: UIControlState.Normal)
        self.iceCubesToMixPlusButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.iceCubesToMixPlusButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 16)
        self.iceCubesToMixPlusButton.sizeToFit()
        self.iceCubesToMixPlusButton.center = CGPoint(x: containerView.frame.width * kHalf + 20, y: self.fourthContainer.bounds.height * kThird * 2 + 10)
        self.iceCubesToMixPlusButton.addTarget(self, action: "iceToPurcasePlusButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.iceCubesToMixPlusButton)
        
        self.iceCubesToMixLabel = UILabel()
        self.iceCubesToMixLabel.text = "0"
        self.iceCubesToMixLabel.textColor = UIColor.blackColor()
        self.iceCubesToMixLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        self.iceCubesToMixLabel.sizeToFit()
        self.iceCubesToMixLabel.center = CGPoint(x: self.fourthContainer.bounds.width * kHalf + 60, y: self.fourthContainer.bounds.height * kThird * 2 + 10)
        self.iceCubesToMixLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.iceCubesToMixLabel)
        
        
        self.iceCubesToMixMinusButton = UIButton()
        self.iceCubesToMixMinusButton.setTitle("-", forState: UIControlState.Normal)
        
        self.iceCubesToMixMinusButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.iceCubesToMixMinusButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 16)
        self.iceCubesToMixMinusButton.sizeToFit()
        self.iceCubesToMixMinusButton.center = CGPoint(x: containerView.frame.width * kHalf + 100, y: self.fourthContainer.bounds.height * kThird * 2 + 10)
        self.iceCubesToMixMinusButton.addTarget(self, action: "iceToPurcaseMinusButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.iceCubesToMixMinusButton)
    
    }
 
    func setUpFifthContainer(containerView: UIView) {
        
        self.fiifthContainerTitleLabel = UILabel()
        self.fiifthContainerTitleLabel.text = "Step 2: Start selling your brew"
        self.fiifthContainerTitleLabel.textColor = UIColor.blueColor()
        self.fiifthContainerTitleLabel.font = UIFont(name: "American Typewriter", size: 20)
        self.fiifthContainerTitleLabel.sizeToFit()
        self.fiifthContainerTitleLabel.center = CGPointMake(self.fourthContainer.frame.origin.x + 125, self.fourthContainer.bounds.origin.y + 10)
        self.fiifthContainerTitleLabel.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.fiifthContainerTitleLabel)
        
        
        self.fifthContainerSubTitleLabelLineOne = UILabel()
        self.fifthContainerSubTitleLabelLineOne.text = "At the end of the day you will either"
        self.fifthContainerSubTitleLabelLineOne.textColor = UIColor.blueColor()
        self.fifthContainerSubTitleLabelLineOne.font = UIFont(name: "American Typewriter", size: 15)
        self.fifthContainerSubTitleLabelLineOne.sizeToFit()
        self.fifthContainerSubTitleLabelLineOne.center = CGPointMake(self.fourthContainer.frame.origin.x + 220, self.fourthContainer.bounds.height * kThird - 10)
        self.fifthContainerSubTitleLabelLineOne.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.fifthContainerSubTitleLabelLineOne)
        
        
        self.fifthContainerSubTitleLabelLineTwo = UILabel()
        self.fifthContainerSubTitleLabelLineTwo.text = "make or lose money. If you don't have"
        self.fifthContainerSubTitleLabelLineTwo.textColor = UIColor.blueColor()
        self.fifthContainerSubTitleLabelLineTwo.font = UIFont(name: "American Typewriter", size: 15)
        self.fifthContainerSubTitleLabelLineTwo.sizeToFit()
        self.fifthContainerSubTitleLabelLineTwo.center = CGPointMake(self.fourthContainer.frame.origin.x + 200, self.fourthContainer.bounds.height * kThird + 5)
        self.fifthContainerSubTitleLabelLineTwo.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.fifthContainerSubTitleLabelLineTwo)
        
       
        self.fifthContainerSubTitleLabelLineThree = UILabel()
        self.fifthContainerSubTitleLabelLineThree.text = "enough money to buy ne inventory"
        self.fifthContainerSubTitleLabelLineThree.textColor = UIColor.blueColor()
        self.fifthContainerSubTitleLabelLineThree.font = UIFont(name: "American Typewriter", size: 15)
        self.fifthContainerSubTitleLabelLineThree.sizeToFit()
        self.fifthContainerSubTitleLabelLineThree.center = CGPointMake(self.fourthContainer.frame.origin.x + 220, self.fourthContainer.bounds.height * kThird - 10)
        self.fifthContainerSubTitleLabelLineThree.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.fifthContainerSubTitleLabelLineThree)
        
        self.fifthContainerSubTitleLabelLineFour = UILabel()
        self.fifthContainerSubTitleLabelLineFour.text = "then you lose the game"
        self.fifthContainerSubTitleLabelLineFour.textColor = UIColor.blueColor()
        self.fifthContainerSubTitleLabelLineFour.font = UIFont(name: "American Typewriter", size: 15)
        self.fifthContainerSubTitleLabelLineFour.sizeToFit()
        self.fifthContainerSubTitleLabelLineFour.center = CGPointMake(self.fourthContainer.frame.origin.x + 220, self.fourthContainer.bounds.height * kThird - 10)
        self.fifthContainerSubTitleLabelLineFour.textAlignment = NSTextAlignment.Left
        containerView.addSubview(self.fifthContainerSubTitleLabelLineThree)
        
    }
    

}


//go back and see if I can build a constant to make column positioning easier and easy to change


