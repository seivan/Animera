//
//  ViewController.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 20/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import UIKit

import QuartzCore
extension CADisplayLink {
  
}

class ViewController: UIViewController {
  @IBOutlet var box:UIView
  var previousCenter:CGPoint?
  var newCenter:CGPoint?
  var timeElapsed = 0.0
  var duration = 1.5
  var previousCornerRadius:Double?
  var newCornerRadius:Double?
  var previousSize:CGSize?
  var newSize:CGSize?
  var timingFunctionHandler = TimingFunctions.randomTimingFunction

  override func viewDidLoad() {
    super.viewDidLoad()
    self.previousCenter = self.box.center
    self.previousCornerRadius = self.box.layer.cornerRadius
    self.previousSize = self.box.frame.size
    let random = Double.sh_random(min: 25, max: 100)
    self.newSize = CGSize(width: random, height: random)
    self.newCenter = CGPoint(x: 320.sh_randomFromZero, y: 480.sh_randomFromZero)
    self.newCornerRadius = 30.sh_randomFromZero
    
    
    // Do any additional setup after loading the view, typically from a nib.
    let d = CADisplayLink(target: self, selector: "update:")
    let x = NSRunLoop.mainRunLoop()
    let delay = 4 * Double(NSEC_PER_SEC)
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
    dispatch_after(time, dispatch_get_main_queue()) {
    d.addToRunLoop(x, forMode: NSDefaultRunLoopMode)
    }


  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  

  func update(display:CADisplayLink) {
    self.timeElapsed += display.duration
    let percentage = self.timeElapsed/self.duration
    let timedPercentage = self.timingFunctionHandler(percentage)
    box.center.x = (self.newCenter!.x * timedPercentage) + (self.previousCenter!.x * (1.0-timedPercentage))
    box.center.y =  (self.newCenter!.y * timedPercentage) + (self.previousCenter!.y * (1.0-timedPercentage))
    
    box.bounds.size.width = (self.newSize!.width * timedPercentage) + (self.previousSize!.width * (1-timedPercentage))
    box.bounds.size.height =  (self.newSize!.height * timedPercentage) + (self.previousSize!.height * (1-timedPercentage))

    
    box.layer.cornerRadius = (self.newCornerRadius! * timedPercentage) + (self.previousCornerRadius! * (1-timedPercentage))
    if(self.timeElapsed >= self.duration) {
      display.removeFromRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
      self.timingFunctionHandler = TimingFunctions.randomTimingFunction
      self.timeElapsed = 0
      self.previousCenter = self.box.center
      self.previousCornerRadius = self.newCornerRadius
      self.previousSize = self.newSize
      self.newCornerRadius = 20.sh_randomFromZero
      self.newCenter = CGPoint(x: 320.sh_randomFromZero, y: 480.sh_randomFromZero)
      
      let random = Double.sh_random(min: 25, max: 100)
      self.newSize = CGSize(width: random, height: random)
//      let delay = 0 * Double(NSEC_PER_SEC)
//      let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
//      dispatch_after(time, dispatch_get_main_queue()) {
      
        display.addToRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
//      }
    }
  }

}

