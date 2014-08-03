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

  private(set) var tick:NSTimeInterval = 0 {
    didSet {
      if self.isReversing { self.timeElapsed -= self.tick  }
      else { self.timeElapsed += self.tick}
      self.untimedProgress = self.timeElapsed / self.duration
      self.progress = self.timingFunction(self.untimedProgress)
    }
  }
  
  private(set) var timingFunction:(Double) -> (Double) =  { t in return t }
  private(set) var untimedProgress = 0.0
  private(set) var progress = 0.0
  private(set) var isReversing = false
  public var reversedProgress:Double  { return 1.0-self.progress }
  private(set) var duration:NSTimeInterval = 0
  private(set) var timeElapsed:NSTimeInterval = 0
  var timeLeft:NSTimeInterval  { return self.duration - self.timeElapsed }


  private      var fromValues = [String:Double]()


  private init() {}
  
  
  public func tween(#identifier:String, fromValue:Double?, toValue:Double) -> Double {
    if let existingValue = self.fromValues[identifier] {
      return (toValue * self.progress) + (existingValue * self.reversedProgress)
    }
    else {
      self.fromValues[identifier] = fromValue!
      return (toValue * self.progress) + (fromValue! * self.reversedProgress)
    }
  }
  
  public func tween(#identifier:String, fromValue:CGPoint, toValue:CGPoint) -> CGPoint {
    
    let x = self.tween(identifier:identifier+"_X", fromValue: fromValue.x, toValue: toValue.x)
    let y = self.tween(identifier:identifier+"_Y", fromValue: fromValue.y, toValue: toValue.y)
    return CGPoint(x: x, y: y)
    
  }

  public func tween(#identifier:String, fromValue:CGSize, toValue:CGSize) -> CGSize {
    let width = self.tween(identifier:identifier+"_width", fromValue: fromValue.width, toValue: toValue.width)
    let height = self.tween(identifier:identifier+"_height", fromValue: fromValue.height, toValue: toValue.height)
    return CGSize(width: width, height: height)
    
  }

  private var colorToValues = [String:Double]()
  public func tween(#identifier:String, fromValue:UIColor, toValue:UIColor) -> UIColor {

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
    let finalRed = self.tween(identifier:redIdentifier, fromValue: fromRed, toValue: self.colorToValues[redIdentifier]!)
    let finalGreen = self.tween(identifier:greenIdentifier, fromValue: fromGreen, toValue: self.colorToValues[greenIdentifier]!)
    let finalBlue = self.tween(identifier:blueIdentifier, fromValue: fromBlue, toValue: self.colorToValues[blueIdentifier]!)
    let finalAlpha = self.tween(identifier:alphaIdentifier, fromValue: fromAlpha, toValue: self.colorToValues[alphaIdentifier]!)
    
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
    self.activateLoop()
  }
  
  @objc func update(displayLink:CADisplayLink) {
    self.event.tick = displayLink.duration
    if self.shouldAnimate == true { self.animationHandler(event: self.event) }
    else { self.stop(isFinished: true) }
  }
  
  func stop(#isFinished:Bool) {
    self.displayLink.invalidate()
    if(self.displayLink.paused == false) { if let completion = self.completionHandler { completion(isFinished: isFinished) } }
    //self.completionHandler = nil
    self.displayLink.paused = true
  }
  
  func toggleOn(isOn:Bool) { self.displayLink.paused = isOn == false }
  
  func undo() {
    self.stop(isFinished: false)
    self.activateLoop()
    self.event.isReversing = self.event.isReversing == false
    self.toggleOn(true)
  }
  
  func activateLoop() {
    self.displayLink = CADisplayLink(target: self, selector: "update:")
    self.toggleOn(false)
    self.displayLink.addToRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
  }

  
}

public protocol AnimeraActions {
  var isPaused:Bool { get set }
  var completionHandler:AnimeraCompletionHandler? { get }
  func cancel()
  func undo()
  func pause()
  func resume()
  func onCompletion(handler:AnimeraCompletionHandler) -> Self
  
}

public class Animera : AnimeraActions {
  
  private var wrapper:InternalAnimeraWrapper?
  public var  completionHandler:AnimeraCompletionHandler?
  
  public var isPaused:Bool {
    get {
      if let w = self.wrapper { return w.displayLink.paused }
      else { return true }
    }
    set {
      if newValue == true {
        self.pause()
      }
      else {
        self.resume()
      }
    }
  }
  
  init(){
    
  }
  
  public func cancel() {
    self.wrapper?.stop(isFinished: false)
  }
  public func undo() {
    self.wrapper?.undo()
  }
  
  public func pause() { self.wrapper?.toggleOn(false) }
  
  public func resume() { self.wrapper?.toggleOn(true) }

  public func onCompletion(handler:AnimeraCompletionHandler) -> Animera {
    self.completionHandler = handler
    if let w = self.wrapper { w.completionHandler = self.completionHandler }
    return self
  }
  
  func animationWithDuration(duration:NSTimeInterval, _ handler:AnimeraHandler) -> Animera {
    self.cancel()
    self.wrapper = InternalAnimeraWrapper(duration: duration, handler:handler, completionHandler:self.completionHandler)
    return self
  }
  
  func runAnimationWithDuration(duration:NSTimeInterval, _ handler:AnimeraHandler) -> Animera {
    self.animationWithDuration(duration, handler)
    self.wrapper?.toggleOn(true)
    return self
  }
  
}

public class AnimeraGroup : AnimeraActions {
  
  private var isUndoing:Bool = false {
    didSet {
      self.hasUndone = true
    }
  }
  private var hasUndone = false
  private let signal:dispatch_group_t = dispatch_group_create()
  private var waitingAnimations   = [Animera]()
  private var runningAnimations   = [Animera]()
  private var executedAnimations  = [Animera]()
  private var stackedAnimations:[Animera] {
    get {
      if(self.isUndoing) { return self.executedAnimations }
      else { return self.waitingAnimations }
    }
    set {
      if(self.isUndoing) { self.executedAnimations = newValue }
      else { self.waitingAnimations = newValue }
      
    }
  }

  private let isQueued = false

  public var  completionHandler:AnimeraCompletionHandler?
  
  public var isPaused:Bool {
    get {
      if(self.runningAnimations.isEmpty) { return true }
      let animation = self.runningAnimations[0]
      if(animation !== nil) { return animation.isPaused}
      else { return true }
    }
  set {
    if newValue == true {
      self.pause()
    }
    else {
      self.resume()
    }
  }
  }
  
  public init(isQueued:Bool = false) {
    self.isQueued = isQueued
  }
  
  public convenience init(animations:[Animera], isQueued:Bool = false) {
    self.init(isQueued:isQueued)
    self.waitingAnimations = animations
  }
  
  
  private func callbackFinished(isFinsished:Bool) {
    if let existingHandler = self.completionHandler {
      existingHandler(isFinished: isFinsished)
      self.completionHandler = nil
    }
  }
  public func cancel() {
    for animation in self.runningAnimations {
      animation.cancel()
    }
    self.callbackFinished(false)
    self.waitingAnimations.removeAll(keepCapacity: false)

    
    
  }

  public func undo() {
    self.isUndoing = !self.isUndoing
    for animation in self.runningAnimations {
      animation.pause()
      self.stackedAnimations += animation
    }
    self.stackedAnimations = self.stackedAnimations.reverse()
    self.runningAnimations.removeAll(keepCapacity: true)
    self.resume()
    
  }
  
  public func pause()  {
    for animation in self.runningAnimations {
      animation.pause()
    }

    
  }
  
  public func resume()  {
    if(self.isQueued) {
      if self.self.stackedAnimations.isEmpty {
        self.callbackFinished(true)
        return
      }
      else if self.runningAnimations.isEmpty == false {
        for animation in self.runningAnimations  { animation.resume() }
      }
      else {
        let animation = self.stackedAnimations[0]
        self.runningAnimations = [animation]
        self.stackedAnimations.removeAtIndex(0)
        let optionalCompletionHandler = animation.completionHandler
        
//        dispatch_group_enter(self.signal)
        animation.onCompletion() { isFinished in
          if let existingHandler = optionalCompletionHandler { existingHandler(isFinished: isFinished) }
          if self.isUndoing { self.waitingAnimations += animation   }
          else { self.executedAnimations += animation }
          animation.completionHandler = optionalCompletionHandler
          self.runningAnimations = [Animera]()
          self.resume()

//          dispatch_group_leave(self.signal)
        }

//        dispatch_group_notify(self.signal, dispatch_get_main_queue()) { [weak self] in
//          if let weakSelf = self {
//            weakSelf.runningAnimations = [Animera]()
//            weakSelf.resume()
//          }
//        }
        
        if(self.isUndoing) { animation.undo() }
        else if(self.hasUndone) { animation.undo() }
        else { animation.resume() }
        
        
      }
      
    }
    else {
      
    }

    

    
  }
  
  public func onCompletion(handler:AnimeraCompletionHandler) -> AnimeraGroup {
    self.completionHandler = handler
    return self
  }
  
  
  
}