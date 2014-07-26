//
//  ViewController.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 20/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import UIKit
import QuartzCore


class ViewController: UIViewController {
  @IBOutlet var box:UIView!
  var newCenter:CGPoint?
  var previousCenter:CGPoint?
  var duration = 0.5
  var previousCornerRadius:Double?
  var newCornerRadius:Double?
  var previousSize:CGSize?
  var newSize:CGSize?
  var shape = CAShapeLayer()
  
  var timingFunctionHandler = TimingFunctions.randomTimingFunction

  func drawCanvas1(frame: CGRect) {
    
    //// Oval Drawing
    var ovalRect = CGRectMake(frame.minX, frame.minY, floor((frame.width) * 1.00000 + 0.5), floor((frame.height) * 1.00000 + 0.5))
    var ovalPath = UIBezierPath()
    ovalPath.addArcWithCenter(CGPointMake(ovalRect.midX, ovalRect.midY), radius: ovalRect.width / 2.0, startAngle: self.angle * M_PI/180.0, endAngle: 315.0 * M_PI/180.0, clockwise: true)
    ovalPath.addLineToPoint(CGPointMake(ovalRect.midX, ovalRect.midY))
    ovalPath.closePath()
    self.shape.path = ovalPath.CGPath
    
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    self.drawCanvas1(self.box.bounds)
    self.box.layer.mask = self.shape
    
    

    

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
  var angle:Double = 45
  
  func update(velocity:CGPoint) {
    
    self.previousCenter = self.box.center
    self.newCornerRadius = 20.sh_randomFromZero
    let random = 100.sh_randomFromZero/100.0
    let circle = 200.sh_randomFromZero.sh_clamp(min: 50, max: 200)
    self.newSize = CGSize(width: circle, height: circle)
    
    let newAngle = 300.sh_randomFromZero
    
    let newRandomColor = UIColor(red: 100.sh_randomFromZero/100, green: 100.sh_randomFromZero/100, blue: 100.sh_randomFromZero/100, alpha: (10.sh_randomFromZero/10).sh_clamp(min: 0.5, max: 1))


    
    
    
    
    
    
    
    
    
    
    
    
    self.animator.animationWithDuration(3) { event in
        self.box.center = event.tween("box", fromValue: self.box.center, toValue: self.newCenter!)
        self.box.backgroundColor = event.tween("hehe color", fromValue: self.box.backgroundColor, toValue: newRandomColor)
      self.box.frame.size = event.tween("LOLSIZE", fromValue: self.box.frame.size, toValue: self.newSize!)
      self.angle = event.tween("One of the angles", fromValue: self.angle, toValue: newAngle)
      self.drawCanvas1(self.box.bounds)
      }.onCompletion(){ finished in
        println("NOT REVERSED")
        println(finished)
      }.resume()
    
    let delay = 1.5 * Double(NSEC_PER_SEC)
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
    dispatch_after(time, dispatch_get_main_queue()) {
      self.animator.onCompletion() { finished in
        println("REVERSED")
        println(finished)
      }.cancelAndAbort()
    }
        
    
    let colorAnimation = Animera().onCompletion() { isFinished in
      println(isFinished)
      }.animationWithDuration(1) { event in
        self.box.backgroundColor = event.tween("hehe color", fromValue: self.box.backgroundColor, toValue: newRandomColor)
    }
    
    
    let sizeAnimation = Animera().animationWithDuration(1) { event in
      self.box.frame.size = event.tween("LOLSIZE", fromValue: self.box.frame.size, toValue: self.newSize!)
      self.drawCanvas1(self.box.bounds)
      
    }
    
    let angleAnimation = Animera().animationWithDuration(1) { event in
      self.angle = event.tween("One of the angles", fromValue: self.angle, toValue: newAngle)
      self.drawCanvas1(self.box.bounds)
    }

    
//    AnimeraQueue(animations: [positionAnimation, colorAnimation,  sizeAnimation, angleAnimation]).resume()
    
    


    
    
  }
  
  
  
  
}
    

