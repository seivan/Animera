//
//  ViewController.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 20/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import UIKit

import QuartzCore
typealias DisplayLinkProgressHandler = (progress:Double, reversedProgress:Double, isFinished:Bool, action:DisplayLinkTween) -> Void
typealias DisplayLinkTween = (identifier:String, fromValue:Double, toValue:Double) -> Double

class __AnimeraInternalWrapper : NSObject {
  let handler:DisplayLinkProgressHandler?
  let duration:NSTimeInterval = 0
  let startTime:NSTimeInterval = 0
  var originalValues = [String:Double]()
  let action:DisplayLinkTween?
  var progress:Double = 0.0
  init(duration:NSTimeInterval, handler:DisplayLinkProgressHandler) {
    super.init()
    self.duration = duration
    self.handler = handler
    self.startTime = CACurrentMediaTime()
    self.action = { identifier, fromValue, toValue in
      if let existingValue:Double = self.originalValues[identifier] {
        return (toValue * self.progress) + (existingValue * (1.0-self.progress))
      }
      else {
        self.originalValues[identifier] = fromValue
        return (toValue * self.progress) + (fromValue * (1.0-self.progress))
      }
    }
  }
  
  func update(displayLink:CADisplayLink) {
    println("\n")
    let currentDuration = displayLink.timestamp - self.startTime
    println(currentDuration)
    if(currentDuration >= self.duration) {
      self.progress = 1.0
      self.handler!(progress: self.progress, reversedProgress: 0, isFinished:true, action:self.action!)
      displayLink.invalidate()
      __AnimeraInternalManager.map.removeValueForKey(displayLink)
    }
    else {
      let percentage = currentDuration/self.duration
      self.progress = percentage
      let reversePercentage = (1.0-percentage)
      self.handler!(progress: percentage, reversedProgress: reversePercentage, isFinished:false, action:self.action!)
      
    }
    
  }
}

struct __AnimeraInternalManager {
  static var map = [CADisplayLink:__AnimeraInternalWrapper]()
}
struct Animera {
  static func runWithDuration(duration:NSTimeInterval, _ handler:DisplayLinkProgressHandler) {
    let internal = __AnimeraInternalWrapper(duration: duration, handler:handler)
    let displayLink = CADisplayLink(target: internal, selector: "update:")
    __AnimeraInternalManager.map[displayLink] = internal
    displayLink.addToRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
    
  }
  
  
}

class ViewController: UIViewController {
  @IBOutlet var box:UIView
  var newCenter:CGPoint?
  var previousCenter:CGPoint?
  var duration = 1.5
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
  func update() {
    
    
    Animera.runWithDuration(self.duration) { progress, reversedProgress, isFinished, action in
      let timedPercentage = self.timingFunctionHandler(progress)
//      self.box.center.x = (self.newCenter!.x * timedPercentage) + (self.box.center.x * (1.0-timedPercentage))
//      self.box.center.y =  (self.newCenter!.y * timedPercentage) + (self.box.center.y * (1.0-timedPercentage))

      self.box.center.x = action(identifier: "centerX", fromValue: self.box.center.x, toValue: self.newCenter!.x)
      self.box.center.y =  action(identifier: "centerY", fromValue: self.box.center.y, toValue: self.newCenter!.y)

//      self.box.bounds.size.width = (self.newSize!.width * timedPercentage) + (self.previousSize!.width * (1.0-timedPercentage))
//      self.box.bounds.size.height =  (self.newSize!.height * timedPercentage) + (self.previousSize!.height * (1.0-timedPercentage))
      
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

