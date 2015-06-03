//
//  ViewController.swift
//  countUp
//
//  Created by 松下慶大 on 2015/06/03.
//  Copyright (c) 2015年 matsushita keita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let numberLabel = UILabel()
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 135/255, green: 199/255, blue: 52/255, alpha: 1.0)

        setNumberLabel()
        
        setCalculateButton(self.view.center.x + 85, title: "+", tag: 1)
        setCalculateButton(self.view.center.x - 85, title: "-", tag: 2)
        setCalculateButton(self.view.center.x, title: "c", tag: 3)
        
    }
    
    func setNumberLabel() {
        numberLabel.frame.size = CGSize(width: 150, height: 150)
        numberLabel.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 130)
        numberLabel.text = String(number)
        numberLabel.textAlignment = NSTextAlignment.Center
        numberLabel.font = UIFont(name: "Helvetica", size: 40)
        numberLabel.backgroundColor = UIColor(red: 238/255, green: 2/255, blue: 94/255, alpha: 1.0)
        numberLabel.textColor = UIColor.whiteColor()
        numberLabel.layer.cornerRadius = 75
        numberLabel.layer.masksToBounds = true
        self.view.addSubview(numberLabel)
        
    }
    
    func setCalculateButton(x: CGFloat, title: String, tag: Int) {
        let calculateButton = UIButton()
        calculateButton.frame.size = CGSize(width: 80, height: 80)
        calculateButton.center = CGPoint(x: x, y: self.view.center.y + 100)
        calculateButton.setTitle(title, forState: UIControlState.Normal)
        calculateButton.titleLabel?.font = UIFont.systemFontOfSize(30)
        calculateButton.backgroundColor = UIColor(red: 238/255, green: 2/255, blue: 94/255, alpha: 1.0)
        calculateButton.addTarget(self, action: "tapCalculateButton:", forControlEvents: UIControlEvents.TouchUpInside)
        calculateButton.tintColor = UIColor.whiteColor()
        calculateButton.tag = tag
        calculateButton.layer.cornerRadius = 40
        calculateButton.layer.masksToBounds = true
        self.view.addSubview(calculateButton)
    }
    
    func tapCalculateButton(sender: UIButton) {
        if sender.tag == 1 {
            number = number + 1
            numberLabel.text = String(number)
        } else if sender.tag == 2 {
            number = number - 1
            numberLabel.text = String(number)
        } else if sender.tag == 3 {
            number = 0
            numberLabel.text = String(number)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

