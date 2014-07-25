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
    let random = 100.sh_randomFromZero/100.0

    self.newSize = CGSize(width: 200.sh_randomFromZero, height: 200.sh_randomFromZero)
    
    
    let newRandomColor = UIColor(red: 100.sh_randomFromZero/100, green: 100.sh_randomFromZero/100, blue: 100.sh_randomFromZero/100, alpha: 10.sh_randomFromZero/10.sh_clamp(min: 0.1, max: 1))

    self.animator.onCompletion() { isFinished in
      println(isFinished)
    }.animationWithDuration(1) { event in
        self.box.center = event.tween("box", fromValue: self.box.center, toValue: self.newCenter!)
        self.box.layer.cornerRadius = event.tween("boxCornerStuff", fromValue: self.box.layer.cornerRadius, toValue: self.newCornerRadius!)
        self.box.backgroundColor = event.tween("hehe color", fromValue: self.box.backgroundColor, toValue: newRandomColor)
        self.box.frame.size = event.tween("LOLSIZE", fromValue: self.box.frame.size, toValue: self.newSize!)
    }
    
    
  }
  
  
  
  
}
    

