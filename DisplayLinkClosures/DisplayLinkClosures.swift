//
//  DisplayLinkClosures.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 20/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import Foundation
import QuartzCore
typealias DisplayLinkProgressHandler = (progress:Double, reversedProgress:Double, isFinished:Bool, action:DisplayLinkTween?) -> Void
typealias DisplayLinkTween = (identifier:String, fromValue:Double, toValue:Double) -> Double

typealias AnimeraHandler = (event:AnimeraEvent) -> Void

public struct AnimeraEvent {
  private(set) var progress = 0.0
  var reversedProgress:Double { get { 1.0-self.progress } }
  private(set) var duration:NSTimeInterval = 0
  private(set) var timeElapsed:NSTimeInterval = 0
  var timeLeft:NSTimeInterval { get { self.duration - self.timeElapsed } }

  private      var originalValues = [String:Double]()
  ////  weak var animera:Animera
  private init() {
    //    self.d
  }
  mutating func tween(identifier:String, fromValue:Double, toValue:Double) -> Double {
    if let existingValue:Double = self.originalValues[identifier] {
      return (toValue * self.progress) + (existingValue * self.reversedProgress)
    }
    else {
      self.originalValues[identifier] = fromValue
      return (toValue * self.progress) + (fromValue * self.reversedProgress)
    }
  }
  
  
}


public class Animera {
  @objc private class InternalAnimeraWrapper  {
    var event = AnimeraEvent()
    var displayLink:CADisplayLink
    
    let handlerX:AnimeraHandler
    let handler:DisplayLinkProgressHandler?
    let completionHandler:DisplayLinkProgressHandler?
    let action:DisplayLinkTween?



    
    
    init(duration:NSTimeInterval, handler:DisplayLinkProgressHandler) {

//      self.displayLink = CADisplayLink(target: self, selector: "update:")
      self.event.duration = duration
      self.handler = handler
      
    }

    init(duration:NSTimeInterval, handler:AnimeraHandler) {
    
      self.event.duration = duration
      self.handlerX = handler
      
    }

    @objc func update(displayLink:CADisplayLink) {
      self.event.timeElapsed += displayLink.duration
      println(self.event.timeElapsed)
      if(self.event.timeElapsed >= self.event.duration && self.event.duration != -1.0) {
        self.event.progress = 1.0
        self.handler!(progress: self.event.progress, reversedProgress: 0, isFinished:true, action:nil)
        displayLink.invalidate()
        
      }
      else {
        let percentage = self.event.timeElapsed/self.event.duration
        self.progress = percentage
        let reversePercentage = (1.0-percentage)
        self.handler!(progress: percentage, reversedProgress: reversePercentage, isFinished:false, action:nil)
        
      }
    }
    
    func cancel() {

    }
    
    func pause() {
      self.displayLink.paused = true
    }
    

  }
  
  private var  wrapper:InternalAnimeraWrapper?
  var displayLink:CADisplayLink?
  
  init(){

  }
  
  func cancel() {
    //self.wrapper?.cancel();
  }
  func pause() {
    
  }
  
  func resume() {
    
  }
  
  func runAnimationWithDuration(duration:NSTimeInterval, _ handler:AnimeraHandler) -> Animera {
    return self
  }
  
  func runAnimationWithDuration(duration:NSTimeInterval, _ handler:DisplayLinkProgressHandler) -> Animera {
    
    self.displayLink?.invalidate()
    self.wrapper = InternalAnimeraWrapper(duration: duration, handler:handler)
    self.displayLink = CADisplayLink(target: self.wrapper, selector: "update:")
    displayLink!.addToRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
    return self
    
  }
  
  
}