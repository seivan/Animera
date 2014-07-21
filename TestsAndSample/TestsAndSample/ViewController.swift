//
//  ViewController.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 20/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import UIKit

import QuartzCore
typealias DisplayLinkProgressHandler = (progress:Double, reversedProgress:Double, isFinished:Bool) -> Void

class __AnimeraInternalWrapper : NSObject {
  let handler:DisplayLinkProgressHandler
  let duration:NSTimeInterval = 0
  let startTime:NSTimeInterval
  init(duration:NSTimeInterval, handler:DisplayLinkProgressHandler) {
    self.duration = duration
    self.handler = handler
    self.startTime = CACurrentMediaTime()
  }
  
  func update(displayLink:CADisplayLink) {
//    println(CACurrentMediaTime())
//    println(displayLink.timestamp)
//    println("\n")
//    println("\n")
    println("\n")
    let currentDuration = displayLink.timestamp - self.startTime
    println(currentDuration)
    if(currentDuration >= self.duration) {
      self.handler(progress: 1, reversedProgress: 0, isFinished:true)
      displayLink.invalidate()
      __AnimeraInternalManager.map.removeValueForKey(displayLink)
    }
    else {
      let percentage = currentDuration/self.duration
      let reversePercentage = (1.0-percentage)
      self.handler(progress: percentage, reversedProgress: reversePercentage, isFinished:false)
      
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
  var previousCenter:CGPoint?
  var newCenter:CGPoint?
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
    
    
    
    
    
    let delay = 2 * Double(NSEC_PER_SEC)
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
    dispatch_after(time, dispatch_get_main_queue()) {
      self.update()
      
    }
    
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  
  func update() {
    
    
    Animera.runWithDuration(self.duration) { progress, reversedProgress, isFinished in

      let timedPercentage = self.timingFunctionHandler(progress)
      self.box.center.x = (self.newCenter!.x * timedPercentage) + (self.previousCenter!.x * (1.0-timedPercentage))
      self.box.center.y =  (self.newCenter!.y * timedPercentage) + (self.previousCenter!.y * (1.0-timedPercentage))
      
      self.box.bounds.size.width = (self.newSize!.width * timedPercentage) + (self.previousSize!.width * (1.0-timedPercentage))
      self.box.bounds.size.height =  (self.newSize!.height * timedPercentage) + (self.previousSize!.height * (1.0-timedPercentage))
      
      self.box.layer.cornerRadius = (self.newCornerRadius! * timedPercentage) + (self.previousCornerRadius! * (1.0-timedPercentage))
      if(isFinished == true) {
        self.timingFunctionHandler = TimingFunctions.randomTimingFunction
        self.previousCenter = self.box.center
        self.previousCornerRadius = self.newCornerRadius
        self.previousSize = self.newSize
        self.newCornerRadius = 20.sh_randomFromZero
        self.newCenter = CGPoint(x: 320.sh_randomFromZero, y: 480.sh_randomFromZero)
        
        let random = Double.sh_random(min: 25, max: 100)
        self.newSize = CGSize(width: random, height: random)
        self.update()
        
      }
      
    }
  }
  
}

