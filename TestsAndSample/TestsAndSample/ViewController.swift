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
    
    
    
    
    
    let pan = UIPanGestureRecognizer(target: self, action: "didTap:")
    let tap = UITapGestureRecognizer(target: self, action: "didTap:")
    self.view.addGestureRecognizer(tap)
    self.view.addGestureRecognizer(pan)
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  func didTap(tap:UIPanGestureRecognizer) {
//    if(tap.state == .Ended) {
      self.newCenter = tap.locationInView(self.view)
//      let velocityInPoints = tap.velocityInView(self.view)
//      let velocity = CGVector(velocityInPoints.x, velocityInPoints.y)
      self.update(CGPointZero)
//    }
  }
  
  let animator = Animera()
  func update(velocity:CGPoint) {
    
    self.previousCenter = self.box.center
    self.newCornerRadius = 20.sh_randomFromZero
    let random = Double.sh_random(min: 25, max: 100)
    self.newSize = CGSize(width: random, height: random)

    self.animator.runAnimationWithDuration(5) { event in
      self.box.center = event.tween("box", fromValue: self.box.center, toValue: self.newCenter!)
      self.box.layer.cornerRadius = event.tween("boxCornerStuff", fromValue: self.box.layer.cornerRadius, toValue: self.newCornerRadius!)
      self.box.frame.size = event.tween("LOLSIZE", fromValue: self.box.frame.size, toValue: self.newSize!)
    }
    
    
    let delay = 1 * Double(NSEC_PER_SEC)
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
    dispatch_after(time, dispatch_get_main_queue()) {
      self.animator.pause()
      let delay = 1 * Double(NSEC_PER_SEC)
      let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
      dispatch_after(time, dispatch_get_main_queue()) {
        self.animator.resume()
        
        let delay = 1 * Double(NSEC_PER_SEC)
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue()) {
          self.animator.cancel()
          
        }

        
      }

      
    }
    
    
    self.animator.onCompletion() { isCancelled in
      println(isCancelled)
    }

    
    

  }
  
    
//    self.animatorTransform.runAnimationWithDuration(0.5) { event in
//      let frictionConstant = 20;
//      let  springConstant = 300;
//      let time = event.tick
//      
//      // friction force = velocity * friction constant
//      
//      let frictionForce = CGPointMultiply(velocity, frictionConstant);
//      // spring force = (target point - current position) * spring constant
//      let springForce = CGPointMultiply(CGPointSubtract(self.newCenter, self.view.center), springConstant);
//      // force = spring force - friction force
//      CGPoint force = CGPointSubtract(springForce, frictionForce);
//      
//      // velocity = current velocity + force * time / mass
//      self.velocity = CGPointAdd(self.velocity, CGPointMultiply(force, time));
//      // position = current position + velocity * time
//      self.view.center = CGPointAdd(self.view.center, CGPointMultiply(self.velocity, time));
//      
//      CGFloat speed = CGPointLength(self.velocity);
//      CGFloat distanceToGoal = CGPointLength(CGPointSubtract(self.targetPoint, self.view.center));
//      if (speed < 0.05 && distanceToGoal < 1) {
//        self.view.center = self.targetPoint;
//        *finished = YES;
//      }
//    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}