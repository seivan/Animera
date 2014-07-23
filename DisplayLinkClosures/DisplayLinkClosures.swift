//
//  DisplayLinkClosures.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 20/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import Foundation
import QuartzCore

public typealias AnimeraHandler = (event:AnimeraEvent) -> Void
public typealias AnimeraCompletionHandler = (isCancelled:Bool) -> Void

public class AnimeraEvent {
  private(set) var progress = 0.0
  var reversedProgress:Double  { return 1.0-self.progress }
  private(set) var duration:NSTimeInterval = 0
  private(set) var timeElapsed:NSTimeInterval = 0
  var timeLeft:NSTimeInterval  { return self.duration - self.timeElapsed }

  private      var originalValues = [String:Double]()
  ////  weak var animera:Animera
  private init() {
    //    self.d
  }
  
  func tween(identifier:String, fromValue:Double, toValue:Double) -> Double {
    if let existingValue:Double = self.originalValues[identifier] {
      return (toValue * self.progress) + (existingValue * self.reversedProgress)
    }
    else {
      self.originalValues[identifier] = fromValue
      return (toValue * self.progress) + (fromValue * self.reversedProgress)
    }
  }
  
  func tween(identifier:String, fromValue:CGPoint, toValue:CGPoint) -> CGPoint {
    let x = self.tween(identifier+"_X", fromValue: fromValue.x, toValue: toValue.x)
    let y = self.tween(identifier+"_Y", fromValue: fromValue.y, toValue: toValue.y)
    return CGPoint(x: x, y: y)
    
  }

  func tween(identifier:String, fromValue:CGSize, toValue:CGSize) -> CGSize {
    let width = self.tween(identifier+"_X", fromValue: fromValue.width, toValue: toValue.width)
    let height = self.tween(identifier+"_Y", fromValue: fromValue.width, toValue: toValue.height)
    return CGSize(width: width, height: height)
    
  }

  
  
}


public class Animera {
  @objc private class InternalAnimeraWrapper  {

    var event = AnimeraEvent()
    lazy var displayLink:CADisplayLink = CADisplayLink(target: self, selector: "update:")
    var animationHandler:AnimeraHandler
    var completionHandler:AnimeraCompletionHandler?
    var shouldAnimate:Bool { return self.event.timeElapsed <= self.event.duration || self.event.duration == -1.0 }
    


    
    

    init(duration:NSTimeInterval, handler:AnimeraHandler) {
      self.event.duration = duration
      self.animationHandler = handler
      
    }

    @objc func update(displayLink:CADisplayLink) {
      self.event.timeElapsed += displayLink.duration
      if(self.shouldAnimate == true) {
        let percentage = self.event.timeElapsed/self.event.duration
        self.event.progress = percentage
        self.animationHandler(event: self.event)
      }
      else { self.stop() }
    }
    
    func stop(isCancelled:Bool = true) {
      self.displayLink.invalidate()
      self.displayLink.paused = true
      if let completion = self.completionHandler {
        completion(isCancelled: true)
        self.completionHandler = nil
      }
    }
    
    func pause() {
//      self.displayLink?.paused = true
    }
    
    func resume() {
      self.displayLink.paused = false
      self.displayLink.addToRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
    }
    

  }
  
  private var  wrapper:InternalAnimeraWrapper?
  
  init(){
    
  }
  
  func cancel() {
    if let w = self.wrapper {
      w.stop(isCancelled: true)
    }
  }
  func pause() {
    
  }
  
  func resume() {
    
  }
  
  
  func runAnimationWithDuration(duration:NSTimeInterval, _ handler:AnimeraHandler) -> Animera {
    self.cancel()
    self.wrapper = InternalAnimeraWrapper(duration: duration, handler:handler)
    self.wrapper?.resume()
    return self
  }
  
//  func runAnimationWithDuration(duration:NSTimeInterval, _ handler:DisplayLinkProgressHandler) -> Animera {
//    
////    self.displayLink?.invalidate()
////    self.wrapper = InternalAnimeraWrapper(duration: duration, handler:handler)
////    self.displayLink = CADisplayLink(target: self.wrapper, selector: "update:")
////    displayLink!.addToRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
//    return self
//    
//  }
  
  
}