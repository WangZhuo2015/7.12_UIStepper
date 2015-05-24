//
//  ViewController.swift
//  7.12_UIStepper
//
//  Created by 王卓 on 15/4/17.
//  Copyright (c) 2015年 王卓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stepper:UIStepper!
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stepper=UIStepper()
        stepper.center=view.center
        stepper.maximumValue=10
        stepper.minimumValue=0
        stepper.value=1
        stepper.stepValue=0.1
        stepper.continuous=true
        stepper.wraps=false
        stepper.addTarget(self, action: ("ValueChanged"), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(stepper)
        label=UILabel(frame: CGRectMake(100, 200, 300, 30))
        self.view.addSubview(label)
        
        
        
        
        
        
    }

    func ValueChanged(){
        label.text="stepper的值为\(stepper.value)"
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

