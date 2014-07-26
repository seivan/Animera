//
//  DisplayLinkClosures.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 20/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import Foundation
import QuartzCore
import UIKit
public typealias AnimeraHandler = (event:AnimeraEvent) -> Void
public typealias AnimeraCompletionHandler = (isFinished:Bool) -> Void

public class AnimeraEvent {

  private(set) var isReversing:Bool = false
  private(set) var timingFunction:(Double) -> (Double) = { t in return t }
  
  private(set) var untimedProgress = 0.0
  
  private(set) var progress = 0.0
  
  var reversedProgress:Double  { return 1.0-self.progress }
  
  private(set) var duration:NSTimeInterval = 0
  
  private(set) var timeElapsed:NSTimeInterval = 0 {
    willSet {
      self.progress = self.timeElapsed/self.duration
      self.untimedProgress = self.progress
    }
    didSet { self.progress = self.timingFunction(self.progress) }
  }
  var timeLeft:NSTimeInterval  { return self.duration - self.timeElapsed }
  
  private(set) var tick:NSTimeInterval = 0 {
    didSet {
      if(self.isReversing) { self.timeElapsed -= self.tick }
      else { self.timeElapsed += self.tick }
    }
  }
  
  private      var fromValues = [String:Double]()

  
  func tween(identifier:String, fromValue:Double?, toValue:Double) -> Double {
    if let existingValue = self.fromValues[identifier] {
      return (toValue * self.progress) + (existingValue * self.reversedProgress)
    }
    else {
      self.fromValues[identifier] = fromValue!
      return (toValue * self.progress) + (fromValue! * self.reversedProgress)
    }
  }
  
  func tween(identifier:String, fromValue:CGPoint, toValue:CGPoint) -> CGPoint {
    let x = self.tween(identifier+"_X", fromValue: fromValue.x, toValue: toValue.x)
    let y = self.tween(identifier+"_Y", fromValue: fromValue.y, toValue: toValue.y)
    return CGPoint(x: x, y: y)
    
  }

  func tween(identifier:String, fromValue:CGSize, toValue:CGSize) -> CGSize {
    let width = self.tween(identifier+"_width", fromValue: fromValue.width, toValue: toValue.width)
    let height = self.tween(identifier+"_height", fromValue: fromValue.height, toValue: toValue.height)
    return CGSize(width: width, height: height)
    
  }

  var colorToValues = [String:Double]()
  func tween(identifier:String, fromValue:UIColor, toValue:UIColor) -> UIColor {

    let redIdentifier = identifier+"_finalRed"
    let greenIdentifier = identifier+"_finalGreen"
    let blueIdentifier = identifier+"_finalBlue"
    let alphaIdentifier = identifier+"_finalAlpha"
    
    var fromRed:CGFloat?
    var fromGreen:CGFloat?
    var fromBlue:CGFloat?
    var fromAlpha:CGFloat?
    
    if self.fromValues[redIdentifier] == nil {
      var redPointer = UnsafePointer<CGFloat>.alloc(1)
      var greenPointer = UnsafePointer<CGFloat>.alloc(1)
      var bluePointer = UnsafePointer<CGFloat>.alloc(1)
      var alphaPointer = UnsafePointer<CGFloat>.alloc(1)
      
      fromValue.getRed(redPointer, green: greenPointer, blue: bluePointer, alpha: alphaPointer)
      
      fromRed = redPointer.memory
      fromGreen = greenPointer.memory
      fromBlue = bluePointer.memory
      fromAlpha = alphaPointer.memory
      
      toValue.getRed(redPointer, green: greenPointer, blue: bluePointer, alpha: alphaPointer)
      
      let toRed = redPointer.memory
      let toGreen = greenPointer.memory
      let toBlue = bluePointer.memory
      let toAlpha = alphaPointer.memory
      
      self.colorToValues[redIdentifier] = toRed
      self.colorToValues[greenIdentifier] = toGreen
      self.colorToValues[blueIdentifier] = toBlue
      self.colorToValues[alphaIdentifier] = toAlpha
      
      
      redPointer.dealloc(1)
      greenPointer.dealloc(1)
      bluePointer.dealloc(1)
      alphaPointer.dealloc(1)
      
    }
    let finalRed = self.tween(redIdentifier, fromValue: fromRed, toValue: self.colorToValues[redIdentifier]!)
    let finalGreen = self.tween(greenIdentifier, fromValue: fromGreen, toValue: self.colorToValues[greenIdentifier]!)
    let finalBlue = self.tween(blueIdentifier, fromValue: fromBlue, toValue: self.colorToValues[blueIdentifier]!)
    let finalAlpha = self.tween(alphaIdentifier, fromValue: fromAlpha, toValue: self.colorToValues[alphaIdentifier]!)
    
    return UIColor(red: finalRed, green: finalGreen, blue: finalBlue, alpha: finalAlpha)

    
  }

  
  
}


@objc private class InternalAnimeraWrapper  {
  
  let event = AnimeraEvent()
  var animationHandler:AnimeraHandler
  var completionHandler:AnimeraCompletionHandler?
  var shouldAnimate:Bool { return self.event.untimedProgress <= 1.0 && self.event.untimedProgress >= 0.0 }
  lazy var displayLink:CADisplayLink = CADisplayLink(target: self, selector: "update:")
  
  
  init(duration:NSTimeInterval, handler:AnimeraHandler, completionHandler:AnimeraCompletionHandler?) {
    self.event.duration = duration
    self.animationHandler = handler
    self.completionHandler = completionHandler
    self.toggle(isOn: false)
    self.displayLink.addToRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
  }
  
  @objc func update(displayLink:CADisplayLink) {
    self.event.tick = displayLink.duration
    if(self.shouldAnimate == true) { self.animationHandler(event: self.event) }
    else { self.stop(isFinished: true) }
  }
  
  func stop(#isFinished:Bool) {
    self.displayLink.invalidate()
    if(self.displayLink.paused == false) { if let completion = self.completionHandler { completion(isFinished: isFinished) } }
    self.completionHandler = nil
    self.displayLink.paused = true
  }
  
  func toggle(#isOn:Bool) { self.displayLink.paused = (isOn == false) }
  
  func cancel() {
    self.event.isReversing = true
  }
  
}

internal protocol AnimeraCapabilities {
  var isPaused:Bool { get }
  func abort()
  func cancelAndAbort()
  func pause() -> Self
  func resume() -> Self
  func onCompletion(handler:AnimeraCompletionHandler) -> Self
}

public class Animera : AnimeraCapabilities {
  
  private var  wrapper:InternalAnimeraWrapper?
  private var  completionHandler:AnimeraCompletionHandler?
  
  public var isPaused:Bool {
      if let w = self.wrapper { return w.displayLink.paused }
      else { return true }
  }
  
  init(){
    
  }
  
  public func abort() {
    
  }
  public func cancelAndAbort() {
//    self.wrapper?.stop(isFinished: false)
    self.wrapper?.cancel()
  }
  
  public func pause() -> Animera { self.wrapper?.toggle(isOn: false); return self }
  
  public func resume() -> Animera { self.wrapper?.toggle(isOn: true); return self }

  func onCompletion(handler:AnimeraCompletionHandler) -> Animera {
    self.completionHandler = handler
    if let w = self.wrapper { w.completionHandler = self.completionHandler }
    return self
  }
  
  func animationWithDuration(duration:NSTimeInterval, _ handler:AnimeraHandler) -> Animera {
    self.abort()
    self.wrapper = InternalAnimeraWrapper(duration: duration, handler:handler, completionHandler:self.completionHandler)
    return self
  }
  
  func runAnimationWithDuration(duration:NSTimeInterval, _ handler:AnimeraHandler) -> Animera {
    self.animationWithDuration(duration, handler)
    self.wrapper?.toggle(isOn: true)
    return self
  }
  
}

class AnimeraQueue : AnimeraCapabilities {
  let signal:dispatch_group_t = dispatch_group_create()
  var isPaused:Bool {
  return true
  }
  
  
  init(animations:[Animera]) {
    self.queuedAnimations = animations
  }
  
  var queuedAnimations = [Animera]()
  var runningAnimation:Animera?
  var executedAnimations = [Animera]()
  
  func abort() {
    if let animation = self.runningAnimation {
      animation.abort()
      self.queuedAnimations.removeAll(keepCapacity: false)
      self.runningAnimation = nil
    }
    
  }
  func cancelAndAbort() {
    if let animation = self.runningAnimation {
      animation.cancelAndAbort()
      self.queuedAnimations.removeAll(keepCapacity: false)
      self.runningAnimation = nil
    }
  }
  
  func pause() -> AnimeraQueue {
    if let animation = self.runningAnimation {
      animation.pause()
    }
    return self
    
  }
  
  func resume() -> AnimeraQueue {
    if self.queuedAnimations.isEmpty { return self }
    else if let animation = self.runningAnimation  { animation.resume() }
    else {
      self.runningAnimation = self.queuedAnimations[0]
      self.queuedAnimations.removeAtIndex(0)
      let existinCompletionHandler = self.runningAnimation?.completionHandler

      dispatch_group_enter(self.signal)
      self.runningAnimation?.onCompletion() { isFinished in
        if let finishedHandler = existinCompletionHandler { finishedHandler(isFinished: isFinished) }
        dispatch_group_leave(self.signal)
      }
    
      dispatch_group_notify(self.signal, dispatch_get_main_queue()) { [weak self] in
        if let weakSelf = self {
          weakSelf.runningAnimation = nil
          weakSelf.resume()
        }
      }
      self.runningAnimation?.resume()

    }
    
    return self
    
  }
  
  func onCompletion(handler:AnimeraCompletionHandler) -> AnimeraQueue {
    return self
  }
  
  
  
}