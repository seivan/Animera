//
//  ViewController.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 20/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
  @IBOutlet var box:UIView!
  var newCenter:CGPoint?
  var previousCenter:CGPoint?
  var duration = 0.5
  var previousCornerRadius:Double?
  var newCornerRadius:Double?
  var previousSize:CGSize?
  var newSize:CGSize?

  var timingFunctionHandler = TimingFunctions.randomTimingFunction
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    

    self.previousCornerRadius = self.box.layer.cornerRadius
    self.previousSize = self.box.frame.size
    let random = Double.sh_random(min: 25, max: 100)
    self.newSize = CGSize(width: random, height: random)
    self.newCenter = CGPoint(x: 320.sh_randomFromZero, y: 480.sh_randomFromZero)
    self.newCornerRadius = 30.sh_randomFromZero
    self.previousCenter = self.box.center
    
    
    
    
    
    let delay = 2 * Double(NSEC_PER_SEC)
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
    dispatch_after(time, dispatch_get_main_queue()) {
      self.update()
      
    }
    let tap = UITapGestureRecognizer(target: self, action: "didTap:")
    self.view.addGestureRecognizer(tap)
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  func didTap(tap:UITapGestureRecognizer) {
    if(tap.state == .Ended) {
      self.newCenter = tap.locationInView(self.view)
      self.update()
    }
  }
  
  let anim = Animera()
  func update() {
    
    self.previousCenter = self.box.center

    self.anim.runAnimationWithDuration(self.duration) { progress, reversedProgress, isFinished, action in
      let timedPercentage = self.timingFunctionHandler(progress)
      self.box.center.x = (self.newCenter!.x * timedPercentage) + (self.previousCenter!.x * (1.0-timedPercentage))
      self.box.center.y =  (self.newCenter!.y * timedPercentage) + (self.previousCenter!.y * (1.0-timedPercentage))

//      self.box.center.x = action(identifier: "centerX", fromValue: self.box.center.x, toValue: self.newCenter!.x)
//      self.box.center.y =  action(identifier: "centerY", fromValue: self.box.center.y, toValue: self.newCenter!.y)

      let timedSizePercentage = TimingFunctions.elasticEaseInOut(progress)
      self.box.bounds.size.width = (self.newSize!.width * timedSizePercentage) + (self.previousSize!.width * (1.0-timedSizePercentage))
      self.box.bounds.size.height =  (self.newSize!.height * timedSizePercentage) + (self.previousSize!.height * (1.0-timedSizePercentage))
      
      self.box.layer.cornerRadius = (self.newCornerRadius! * timedPercentage) + (self.previousCornerRadius! * (1.0-timedPercentage))
      if(isFinished == true) {
        self.timingFunctionHandler = TimingFunctions.randomTimingFunction
        self.previousCornerRadius = self.newCornerRadius
        self.previousSize = self.newSize
        self.newCornerRadius = 20.sh_randomFromZero
//        self.newCenter = CGPoint(x: 320.sh_randomFromZero, y: 480.sh_randomFromZero)
        self.previousCenter = self.box.center
        let random = Double.sh_random(min: 25, max: 100)
        self.newSize = CGSize(width: random, height: random)
//        self.update()
        
      }
      
    }
  }
  
}

