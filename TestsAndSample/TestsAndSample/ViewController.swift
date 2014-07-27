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

  func toggleButtons(isOn:Bool) {
    for button:UIBarButtonItem in self.toolbarItems as [UIBarButtonItem] {
      button.enabled = isOn
    }
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    self.drawCanvas1(self.box.bounds)
    self.box.layer.mask = self.shape
    self.toggleButtons(false)

    

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
    self.newCenter = tap.locationInView(self.view)
    self.update()
  }
  
  let animator = Animera()
  var angle:Double = 45
  
  func update() {
    
    self.previousCenter = self.box.center
    self.newCornerRadius = 20.sh_randomFromZero
    let random = 100.sh_randomFromZero/100.0
    let circle = 200.sh_randomFromZero.sh_clamp(min: 50, max: 200)
    self.newSize = CGSize(width: circle, height: circle)
    
    let newAngle = 300.sh_randomFromZero
    
    let newRandomColor = UIColor(red: 100.sh_randomFromZero/100, green: 100.sh_randomFromZero/100, blue: 100.sh_randomFromZero/100, alpha: (10.sh_randomFromZero/10).sh_clamp(min: 0.5, max: 1))


    
    
    
    
    
     self.toggleButtons(true)
    
    
    
    
    
    
    self.animator.animationWithDuration(1) { event in
        self.box.center = event.tween(identifier: "box", fromValue: self.box.center, toValue: self.newCenter!)
        self.box.backgroundColor = event.tween(identifier: "hehe color", fromValue: self.box.backgroundColor, toValue: newRandomColor)
      self.box.frame.size = event.tween(identifier: "LOLSIZE", fromValue: self.box.frame.size, toValue: self.newSize!)
      self.angle = event.tween(identifier: "One of the angles", fromValue: self.angle, toValue: newAngle)
      self.drawCanvas1(self.box.bounds)
      }.onCompletion(){ finished in
        self.toggleButtons(false)
        println("NOT REVERSED")
        println(finished)
      }.resume()
    
    
    
    let colorAnimation = Animera().onCompletion() { isFinished in
      println(isFinished)
      }.animationWithDuration(2) { event in
        self.box.backgroundColor = event.tween(identifier: "hehe color", fromValue: self.box.backgroundColor, toValue: newRandomColor)
    }
    
    
    let sizeAnimation = Animera().animationWithDuration(1) { event in
      self.box.frame.size = event.tween(identifier: "LOLSIZE", fromValue: self.box.frame.size, toValue: self.newSize!)
      self.drawCanvas1(self.box.bounds)
      
    }
    
    let angleAnimation = Animera().animationWithDuration(1) { event in
      self.angle = event.tween(identifier: "One of the angles", fromValue: self.angle, toValue: newAngle)
      self.drawCanvas1(self.box.bounds)
    }

    
//    AnimeraQueue(animations: [positionAnimation, colorAnimation,  sizeAnimation, angleAnimation]).resume()
    
  }
  
  
  @IBAction func tapTogglePauseOrResume(sender:UIBarButtonItem) {
    self.animator.isPaused = !self.animator.isPaused
    
    if(self.animator.isPaused) {
      sender.title = "Resume"
    }
    else {
      sender.title = "Pause"
    }
  }
  
  @IBAction func tapCancel(sender:UIBarButtonItem?) {
    self.animator.cancel()
    self.toggleButtons(false)
  }

  @IBAction func tapCancelAndAbort(sender:UIBarButtonItem) {
    self.animator.resume()
    self.animator.cancelAndUndo()
  }

  
}
    

