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
  var newCenter:CGPoint!
  var shape = CAShapeLayer()
  func drawCanvas1(frame: CGRect) {
    
    var textPath = UIBezierPath()
    textPath.moveToPoint(CGPointMake(frame.minX + 39.68, frame.minY + 11.68))
    textPath.addLineToPoint(CGPointMake(frame.minX + 39.68, frame.minY + 18.98))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 39.96, frame.minY + 19.36), controlPoint1: CGPointMake(frame.minX + 39.68, frame.minY + 19.23), controlPoint2: CGPointMake(frame.minX + 39.77, frame.minY + 19.36))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 40.04, frame.minY + 19.34), controlPoint1: CGPointMake(frame.minX + 39.97, frame.minY + 19.36), controlPoint2: CGPointMake(frame.minX + 40, frame.minY + 19.35))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 40.12, frame.minY + 19.34), controlPoint1: CGPointMake(frame.minX + 40.07, frame.minY + 19.34), controlPoint2: CGPointMake(frame.minX + 40.09, frame.minY + 19.34))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 40.34, frame.minY + 19.3), controlPoint1: CGPointMake(frame.minX + 40.23, frame.minY + 19.31), controlPoint2: CGPointMake(frame.minX + 40.3, frame.minY + 19.3))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 40.9, frame.minY + 19.66), controlPoint1: CGPointMake(frame.minX + 40.55, frame.minY + 19.3), controlPoint2: CGPointMake(frame.minX + 40.74, frame.minY + 19.42))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 41.14, frame.minY + 20.54), controlPoint1: CGPointMake(frame.minX + 41.06, frame.minY + 19.9), controlPoint2: CGPointMake(frame.minX + 41.14, frame.minY + 20.19))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 40.78, frame.minY + 21.64), controlPoint1: CGPointMake(frame.minX + 41.14, frame.minY + 20.98), controlPoint2: CGPointMake(frame.minX + 41.02, frame.minY + 21.35))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 39.88, frame.minY + 22.08), controlPoint1: CGPointMake(frame.minX + 40.54, frame.minY + 21.93), controlPoint2: CGPointMake(frame.minX + 40.24, frame.minY + 22.08))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 39, frame.minY + 21.98), controlPoint1: CGPointMake(frame.minX + 39.91, frame.minY + 22.08), controlPoint2: CGPointMake(frame.minX + 39.61, frame.minY + 22.05))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 38.1, frame.minY + 21.94), controlPoint1: CGPointMake(frame.minX + 38.75, frame.minY + 21.95), controlPoint2: CGPointMake(frame.minX + 38.45, frame.minY + 21.94))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 37.32, frame.minY + 22), controlPoint1: CGPointMake(frame.minX + 37.93, frame.minY + 21.94), controlPoint2: CGPointMake(frame.minX + 37.67, frame.minY + 21.96))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 36.54, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 36.97, frame.minY + 22.04), controlPoint2: CGPointMake(frame.minX + 36.71, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 35.58, frame.minY + 20.68), controlPoint1: CGPointMake(frame.minX + 35.9, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 35.58, frame.minY + 21.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 36.3, frame.minY + 19.4), controlPoint1: CGPointMake(frame.minX + 35.58, frame.minY + 19.93), controlPoint2: CGPointMake(frame.minX + 35.82, frame.minY + 19.51))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 36.6, frame.minY + 19.22), controlPoint1: CGPointMake(frame.minX + 36.46, frame.minY + 19.36), controlPoint2: CGPointMake(frame.minX + 36.56, frame.minY + 19.3))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 36.66, frame.minY + 18.68), controlPoint1: CGPointMake(frame.minX + 36.64, frame.minY + 19.14), controlPoint2: CGPointMake(frame.minX + 36.66, frame.minY + 18.96))
    textPath.addLineToPoint(CGPointMake(frame.minX + 36.66, frame.minY + 16.82))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 36.3, frame.minY + 16.4), controlPoint1: CGPointMake(frame.minX + 36.66, frame.minY + 16.54), controlPoint2: CGPointMake(frame.minX + 36.54, frame.minY + 16.4))
    textPath.addLineToPoint(CGPointMake(frame.minX + 34.34, frame.minY + 16.4))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 33.94, frame.minY + 16.72), controlPoint1: CGPointMake(frame.minX + 34.07, frame.minY + 16.4), controlPoint2: CGPointMake(frame.minX + 33.94, frame.minY + 16.51))
    textPath.addLineToPoint(CGPointMake(frame.minX + 33.94, frame.minY + 18.74))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 33.99, frame.minY + 19.25), controlPoint1: CGPointMake(frame.minX + 33.94, frame.minY + 19.01), controlPoint2: CGPointMake(frame.minX + 33.96, frame.minY + 19.18))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 34.3, frame.minY + 19.4), controlPoint1: CGPointMake(frame.minX + 34.02, frame.minY + 19.32), controlPoint2: CGPointMake(frame.minX + 34.13, frame.minY + 19.37))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 34.98, frame.minY + 20.54), controlPoint1: CGPointMake(frame.minX + 34.75, frame.minY + 19.49), controlPoint2: CGPointMake(frame.minX + 34.98, frame.minY + 19.87))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 33.92, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 34.98, frame.minY + 21.55), controlPoint2: CGPointMake(frame.minX + 34.63, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 33.14, frame.minY + 22), controlPoint1: CGPointMake(frame.minX + 33.75, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 33.49, frame.minY + 22.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 32.36, frame.minY + 21.94), controlPoint1: CGPointMake(frame.minX + 32.79, frame.minY + 21.96), controlPoint2: CGPointMake(frame.minX + 32.53, frame.minY + 21.94))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 31.62, frame.minY + 21.98), controlPoint1: CGPointMake(frame.minX + 32.09, frame.minY + 21.94), controlPoint2: CGPointMake(frame.minX + 31.85, frame.minY + 21.95))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 30.74, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 31.17, frame.minY + 22.03), controlPoint2: CGPointMake(frame.minX + 30.87, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 29.84, frame.minY + 21.63), controlPoint1: CGPointMake(frame.minX + 30.38, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 30.08, frame.minY + 21.92))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 29.48, frame.minY + 20.54), controlPoint1: CGPointMake(frame.minX + 29.6, frame.minY + 21.34), controlPoint2: CGPointMake(frame.minX + 29.48, frame.minY + 20.98))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 29.72, frame.minY + 19.66), controlPoint1: CGPointMake(frame.minX + 29.48, frame.minY + 20.19), controlPoint2: CGPointMake(frame.minX + 29.56, frame.minY + 19.9))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 30.28, frame.minY + 19.3), controlPoint1: CGPointMake(frame.minX + 29.88, frame.minY + 19.42), controlPoint2: CGPointMake(frame.minX + 30.07, frame.minY + 19.3))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 30.38, frame.minY + 19.3), controlPoint1: CGPointMake(frame.minX + 30.29, frame.minY + 19.3), controlPoint2: CGPointMake(frame.minX + 30.33, frame.minY + 19.3))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 30.51, frame.minY + 19.33), controlPoint1: CGPointMake(frame.minX + 30.43, frame.minY + 19.31), controlPoint2: CGPointMake(frame.minX + 30.48, frame.minY + 19.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 30.66, frame.minY + 19.34), controlPoint1: CGPointMake(frame.minX + 30.54, frame.minY + 19.34), controlPoint2: CGPointMake(frame.minX + 30.59, frame.minY + 19.34))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 30.94, frame.minY + 18.98), controlPoint1: CGPointMake(frame.minX + 30.85, frame.minY + 19.34), controlPoint2: CGPointMake(frame.minX + 30.94, frame.minY + 19.22))
    textPath.addLineToPoint(CGPointMake(frame.minX + 30.94, frame.minY + 11.68))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 30.66, frame.minY + 11.32), controlPoint1: CGPointMake(frame.minX + 30.94, frame.minY + 11.44), controlPoint2: CGPointMake(frame.minX + 30.85, frame.minY + 11.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 30.47, frame.minY + 11.34), controlPoint1: CGPointMake(frame.minX + 30.62, frame.minY + 11.32), controlPoint2: CGPointMake(frame.minX + 30.56, frame.minY + 11.33))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 30.28, frame.minY + 11.36), controlPoint1: CGPointMake(frame.minX + 30.38, frame.minY + 11.35), controlPoint2: CGPointMake(frame.minX + 30.32, frame.minY + 11.36))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 29.71, frame.minY + 11), controlPoint1: CGPointMake(frame.minX + 30.05, frame.minY + 11.36), controlPoint2: CGPointMake(frame.minX + 29.86, frame.minY + 11.24))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 29.48, frame.minY + 10.12), controlPoint1: CGPointMake(frame.minX + 29.56, frame.minY + 10.76), controlPoint2: CGPointMake(frame.minX + 29.48, frame.minY + 10.47))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 29.84, frame.minY + 9.03), controlPoint1: CGPointMake(frame.minX + 29.48, frame.minY + 9.68), controlPoint2: CGPointMake(frame.minX + 29.6, frame.minY + 9.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 30.74, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 30.08, frame.minY + 8.74), controlPoint2: CGPointMake(frame.minX + 30.38, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 31.6, frame.minY + 8.67), controlPoint1: CGPointMake(frame.minX + 30.93, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 31.21, frame.minY + 8.62))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 32.48, frame.minY + 8.74), controlPoint1: CGPointMake(frame.minX + 31.99, frame.minY + 8.72), controlPoint2: CGPointMake(frame.minX + 32.28, frame.minY + 8.74))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 33.27, frame.minY + 8.67), controlPoint1: CGPointMake(frame.minX + 32.67, frame.minY + 8.74), controlPoint2: CGPointMake(frame.minX + 32.93, frame.minY + 8.72))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 34.04, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 33.61, frame.minY + 8.62), controlPoint2: CGPointMake(frame.minX + 33.87, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 35, frame.minY + 10.02), controlPoint1: CGPointMake(frame.minX + 34.68, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 35, frame.minY + 9.07))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 34.36, frame.minY + 11.28), controlPoint1: CGPointMake(frame.minX + 35, frame.minY + 10.73), controlPoint2: CGPointMake(frame.minX + 34.79, frame.minY + 11.15))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 33.96, frame.minY + 11.62), controlPoint1: CGPointMake(frame.minX + 34.11, frame.minY + 11.36), controlPoint2: CGPointMake(frame.minX + 33.97, frame.minY + 11.47))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 33.94, frame.minY + 12.02), controlPoint1: CGPointMake(frame.minX + 33.95, frame.minY + 11.67), controlPoint2: CGPointMake(frame.minX + 33.94, frame.minY + 11.81))
    textPath.addLineToPoint(CGPointMake(frame.minX + 33.94, frame.minY + 13.28))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 34.01, frame.minY + 13.64), controlPoint1: CGPointMake(frame.minX + 33.94, frame.minY + 13.44), controlPoint2: CGPointMake(frame.minX + 33.96, frame.minY + 13.56))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 34.4, frame.minY + 13.76), controlPoint1: CGPointMake(frame.minX + 34.06, frame.minY + 13.72), controlPoint2: CGPointMake(frame.minX + 34.19, frame.minY + 13.76))
    textPath.addLineToPoint(CGPointMake(frame.minX + 36.24, frame.minY + 13.76))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 36.66, frame.minY + 13.28), controlPoint1: CGPointMake(frame.minX + 36.52, frame.minY + 13.76), controlPoint2: CGPointMake(frame.minX + 36.66, frame.minY + 13.6))
    textPath.addLineToPoint(CGPointMake(frame.minX + 36.66, frame.minY + 11.96))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 36.54, frame.minY + 11.36), controlPoint1: CGPointMake(frame.minX + 36.66, frame.minY + 11.6), controlPoint2: CGPointMake(frame.minX + 36.62, frame.minY + 11.4))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 36.24, frame.minY + 11.3), controlPoint1: CGPointMake(frame.minX + 36.53, frame.minY + 11.35), controlPoint2: CGPointMake(frame.minX + 36.43, frame.minY + 11.33))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 35.64, frame.minY + 10.14), controlPoint1: CGPointMake(frame.minX + 35.84, frame.minY + 11.23), controlPoint2: CGPointMake(frame.minX + 35.64, frame.minY + 10.85))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 36.66, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 35.64, frame.minY + 9.11), controlPoint2: CGPointMake(frame.minX + 35.98, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 37.43, frame.minY + 8.67), controlPoint1: CGPointMake(frame.minX + 36.83, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 37.09, frame.minY + 8.62))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 38.2, frame.minY + 8.74), controlPoint1: CGPointMake(frame.minX + 37.77, frame.minY + 8.72), controlPoint2: CGPointMake(frame.minX + 38.03, frame.minY + 8.74))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 39.14, frame.minY + 8.66), controlPoint1: CGPointMake(frame.minX + 38.45, frame.minY + 8.74), controlPoint2: CGPointMake(frame.minX + 38.77, frame.minY + 8.71))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 39.86, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 39.42, frame.minY + 8.62), controlPoint2: CGPointMake(frame.minX + 39.66, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 40.78, frame.minY + 9.03), controlPoint1: CGPointMake(frame.minX + 40.23, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 40.54, frame.minY + 8.74))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 41.14, frame.minY + 10.12), controlPoint1: CGPointMake(frame.minX + 41.02, frame.minY + 9.32), controlPoint2: CGPointMake(frame.minX + 41.14, frame.minY + 9.68))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 40.9, frame.minY + 11), controlPoint1: CGPointMake(frame.minX + 41.14, frame.minY + 10.47), controlPoint2: CGPointMake(frame.minX + 41.06, frame.minY + 10.76))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 40.34, frame.minY + 11.36), controlPoint1: CGPointMake(frame.minX + 40.74, frame.minY + 11.24), controlPoint2: CGPointMake(frame.minX + 40.55, frame.minY + 11.36))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 40.15, frame.minY + 11.34), controlPoint1: CGPointMake(frame.minX + 40.3, frame.minY + 11.36), controlPoint2: CGPointMake(frame.minX + 40.24, frame.minY + 11.35))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 39.96, frame.minY + 11.32), controlPoint1: CGPointMake(frame.minX + 40.06, frame.minY + 11.33), controlPoint2: CGPointMake(frame.minX + 40, frame.minY + 11.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 39.68, frame.minY + 11.68), controlPoint1: CGPointMake(frame.minX + 39.77, frame.minY + 11.32), controlPoint2: CGPointMake(frame.minX + 39.68, frame.minY + 11.44))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 48.76, frame.minY + 17.66))
    textPath.addLineToPoint(CGPointMake(frame.minX + 44.7, frame.minY + 17.66))
    textPath.addLineToPoint(CGPointMake(frame.minX + 44.7, frame.minY + 17.98))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 46, frame.minY + 20.1), controlPoint1: CGPointMake(frame.minX + 44.7, frame.minY + 19.39), controlPoint2: CGPointMake(frame.minX + 45.13, frame.minY + 20.1))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 47.16, frame.minY + 19.08), controlPoint1: CGPointMake(frame.minX + 46.6, frame.minY + 20.1), controlPoint2: CGPointMake(frame.minX + 46.99, frame.minY + 19.76))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 47.5, frame.minY + 18.36), controlPoint1: CGPointMake(frame.minX + 47.25, frame.minY + 18.71), controlPoint2: CGPointMake(frame.minX + 47.37, frame.minY + 18.47))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 48.24, frame.minY + 18.2), controlPoint1: CGPointMake(frame.minX + 47.63, frame.minY + 18.25), controlPoint2: CGPointMake(frame.minX + 47.88, frame.minY + 18.2))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 49.5, frame.minY + 19.46), controlPoint1: CGPointMake(frame.minX + 49.08, frame.minY + 18.2), controlPoint2: CGPointMake(frame.minX + 49.5, frame.minY + 18.62))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 48.55, frame.minY + 21.48), controlPoint1: CGPointMake(frame.minX + 49.5, frame.minY + 20.27), controlPoint2: CGPointMake(frame.minX + 49.18, frame.minY + 20.95))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 46.16, frame.minY + 22.28), controlPoint1: CGPointMake(frame.minX + 47.92, frame.minY + 22.01), controlPoint2: CGPointMake(frame.minX + 47.12, frame.minY + 22.28))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 43.17, frame.minY + 20.97), controlPoint1: CGPointMake(frame.minX + 44.88, frame.minY + 22.28), controlPoint2: CGPointMake(frame.minX + 43.88, frame.minY + 21.84))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 42.1, frame.minY + 17.3), controlPoint1: CGPointMake(frame.minX + 42.46, frame.minY + 20.1), controlPoint2: CGPointMake(frame.minX + 42.1, frame.minY + 18.87))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 43.13, frame.minY + 13.31), controlPoint1: CGPointMake(frame.minX + 42.1, frame.minY + 15.59), controlPoint2: CGPointMake(frame.minX + 42.44, frame.minY + 14.26))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 46, frame.minY + 11.88), controlPoint1: CGPointMake(frame.minX + 43.82, frame.minY + 12.36), controlPoint2: CGPointMake(frame.minX + 44.77, frame.minY + 11.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 48.64, frame.minY + 13.08), controlPoint1: CGPointMake(frame.minX + 47.11, frame.minY + 11.88), controlPoint2: CGPointMake(frame.minX + 47.99, frame.minY + 12.28))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 49.62, frame.minY + 16.3), controlPoint1: CGPointMake(frame.minX + 49.29, frame.minY + 13.88), controlPoint2: CGPointMake(frame.minX + 49.62, frame.minY + 14.95))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 49.44, frame.minY + 17.38), controlPoint1: CGPointMake(frame.minX + 49.62, frame.minY + 16.83), controlPoint2: CGPointMake(frame.minX + 49.56, frame.minY + 17.19))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 48.76, frame.minY + 17.66), controlPoint1: CGPointMake(frame.minX + 49.32, frame.minY + 17.57), controlPoint2: CGPointMake(frame.minX + 49.09, frame.minY + 17.66))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 44.82, frame.minY + 15.66))
    textPath.addLineToPoint(CGPointMake(frame.minX + 47, frame.minY + 15.66))
    textPath.addLineToPoint(CGPointMake(frame.minX + 47, frame.minY + 15.44))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 46.72, frame.minY + 14.46), controlPoint1: CGPointMake(frame.minX + 47, frame.minY + 15.04), controlPoint2: CGPointMake(frame.minX + 46.91, frame.minY + 14.71))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 45.98, frame.minY + 14.08), controlPoint1: CGPointMake(frame.minX + 46.53, frame.minY + 14.21), controlPoint2: CGPointMake(frame.minX + 46.29, frame.minY + 14.08))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 44.82, frame.minY + 15.66), controlPoint1: CGPointMake(frame.minX + 45.27, frame.minY + 14.08), controlPoint2: CGPointMake(frame.minX + 44.89, frame.minY + 14.61))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 53.62, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 54.18, frame.minY + 9.3), controlPoint1: CGPointMake(frame.minX + 53.99, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 54.18, frame.minY + 8.83))
    textPath.addLineToPoint(CGPointMake(frame.minX + 54.18, frame.minY + 19.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 54.5, frame.minY + 19.88), controlPoint1: CGPointMake(frame.minX + 54.18, frame.minY + 19.6), controlPoint2: CGPointMake(frame.minX + 54.29, frame.minY + 19.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 54.58, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 54.51, frame.minY + 19.88), controlPoint2: CGPointMake(frame.minX + 54.54, frame.minY + 19.87))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 54.68, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 54.62, frame.minY + 19.86), controlPoint2: CGPointMake(frame.minX + 54.65, frame.minY + 19.86))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 54.86, frame.minY + 19.84), controlPoint1: CGPointMake(frame.minX + 54.72, frame.minY + 19.85), controlPoint2: CGPointMake(frame.minX + 54.78, frame.minY + 19.84))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 55.5, frame.minY + 20.78), controlPoint1: CGPointMake(frame.minX + 55.29, frame.minY + 19.84), controlPoint2: CGPointMake(frame.minX + 55.5, frame.minY + 20.15))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 54.5, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 55.5, frame.minY + 21.63), controlPoint2: CGPointMake(frame.minX + 55.17, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 53.66, frame.minY + 22), controlPoint1: CGPointMake(frame.minX + 54.35, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 54.07, frame.minY + 22.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 52.74, frame.minY + 21.96), controlPoint1: CGPointMake(frame.minX + 53.38, frame.minY + 21.97), controlPoint2: CGPointMake(frame.minX + 53.07, frame.minY + 21.96))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 52, frame.minY + 22.01), controlPoint1: CGPointMake(frame.minX + 52.58, frame.minY + 21.96), controlPoint2: CGPointMake(frame.minX + 52.33, frame.minY + 21.98))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 51.26, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 51.67, frame.minY + 22.04), controlPoint2: CGPointMake(frame.minX + 51.42, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 50.3, frame.minY + 20.8), controlPoint1: CGPointMake(frame.minX + 50.62, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 50.3, frame.minY + 21.64))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 50.92, frame.minY + 19.84), controlPoint1: CGPointMake(frame.minX + 50.3, frame.minY + 20.16), controlPoint2: CGPointMake(frame.minX + 50.51, frame.minY + 19.84))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 51.12, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 51.01, frame.minY + 19.84), controlPoint2: CGPointMake(frame.minX + 51.08, frame.minY + 19.85))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 51.22, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 51.15, frame.minY + 19.86), controlPoint2: CGPointMake(frame.minX + 51.18, frame.minY + 19.86))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 51.3, frame.minY + 19.88), controlPoint1: CGPointMake(frame.minX + 51.26, frame.minY + 19.87), controlPoint2: CGPointMake(frame.minX + 51.29, frame.minY + 19.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 51.62, frame.minY + 19.04), controlPoint1: CGPointMake(frame.minX + 51.51, frame.minY + 19.88), controlPoint2: CGPointMake(frame.minX + 51.62, frame.minY + 19.6))
    textPath.addLineToPoint(CGPointMake(frame.minX + 51.62, frame.minY + 11.66))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 51.36, frame.minY + 10.82), controlPoint1: CGPointMake(frame.minX + 51.62, frame.minY + 11.1), controlPoint2: CGPointMake(frame.minX + 51.53, frame.minY + 10.82))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 51.14, frame.minY + 10.85), controlPoint1: CGPointMake(frame.minX + 51.31, frame.minY + 10.82), controlPoint2: CGPointMake(frame.minX + 51.23, frame.minY + 10.83))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 50.94, frame.minY + 10.88), controlPoint1: CGPointMake(frame.minX + 51.05, frame.minY + 10.87), controlPoint2: CGPointMake(frame.minX + 50.98, frame.minY + 10.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 50.24, frame.minY + 9.8), controlPoint1: CGPointMake(frame.minX + 50.47, frame.minY + 10.88), controlPoint2: CGPointMake(frame.minX + 50.24, frame.minY + 10.52))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 51.18, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 50.24, frame.minY + 9), controlPoint2: CGPointMake(frame.minX + 50.55, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 52, frame.minY + 8.68), controlPoint1: CGPointMake(frame.minX + 51.31, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 51.59, frame.minY + 8.63))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 52.8, frame.minY + 8.7), controlPoint1: CGPointMake(frame.minX + 52.33, frame.minY + 8.72), controlPoint2: CGPointMake(frame.minX + 52.6, frame.minY + 8.73))
    textPath.addLineToPoint(CGPointMake(frame.minX + 53.56, frame.minY + 8.6))
    textPath.addLineToPoint(CGPointMake(frame.minX + 53.62, frame.minY + 8.6))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 59, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 59.56, frame.minY + 9.3), controlPoint1: CGPointMake(frame.minX + 59.37, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 59.56, frame.minY + 8.83))
    textPath.addLineToPoint(CGPointMake(frame.minX + 59.56, frame.minY + 19.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 59.88, frame.minY + 19.88), controlPoint1: CGPointMake(frame.minX + 59.56, frame.minY + 19.6), controlPoint2: CGPointMake(frame.minX + 59.67, frame.minY + 19.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 59.96, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 59.89, frame.minY + 19.88), controlPoint2: CGPointMake(frame.minX + 59.92, frame.minY + 19.87))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 60.06, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 60, frame.minY + 19.86), controlPoint2: CGPointMake(frame.minX + 60.03, frame.minY + 19.86))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 60.24, frame.minY + 19.84), controlPoint1: CGPointMake(frame.minX + 60.1, frame.minY + 19.85), controlPoint2: CGPointMake(frame.minX + 60.16, frame.minY + 19.84))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 60.88, frame.minY + 20.78), controlPoint1: CGPointMake(frame.minX + 60.67, frame.minY + 19.84), controlPoint2: CGPointMake(frame.minX + 60.88, frame.minY + 20.15))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 59.88, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 60.88, frame.minY + 21.63), controlPoint2: CGPointMake(frame.minX + 60.55, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 59.04, frame.minY + 22), controlPoint1: CGPointMake(frame.minX + 59.73, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 59.45, frame.minY + 22.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 58.12, frame.minY + 21.96), controlPoint1: CGPointMake(frame.minX + 58.76, frame.minY + 21.97), controlPoint2: CGPointMake(frame.minX + 58.45, frame.minY + 21.96))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 57.38, frame.minY + 22.01), controlPoint1: CGPointMake(frame.minX + 57.96, frame.minY + 21.96), controlPoint2: CGPointMake(frame.minX + 57.71, frame.minY + 21.98))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 56.64, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 57.05, frame.minY + 22.04), controlPoint2: CGPointMake(frame.minX + 56.8, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 55.68, frame.minY + 20.8), controlPoint1: CGPointMake(frame.minX + 56, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 55.68, frame.minY + 21.64))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 56.3, frame.minY + 19.84), controlPoint1: CGPointMake(frame.minX + 55.68, frame.minY + 20.16), controlPoint2: CGPointMake(frame.minX + 55.89, frame.minY + 19.84))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 56.5, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 56.39, frame.minY + 19.84), controlPoint2: CGPointMake(frame.minX + 56.46, frame.minY + 19.85))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 56.6, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 56.53, frame.minY + 19.86), controlPoint2: CGPointMake(frame.minX + 56.56, frame.minY + 19.86))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 56.68, frame.minY + 19.88), controlPoint1: CGPointMake(frame.minX + 56.64, frame.minY + 19.87), controlPoint2: CGPointMake(frame.minX + 56.67, frame.minY + 19.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 57, frame.minY + 19.04), controlPoint1: CGPointMake(frame.minX + 56.89, frame.minY + 19.88), controlPoint2: CGPointMake(frame.minX + 57, frame.minY + 19.6))
    textPath.addLineToPoint(CGPointMake(frame.minX + 57, frame.minY + 11.66))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 56.74, frame.minY + 10.82), controlPoint1: CGPointMake(frame.minX + 57, frame.minY + 11.1), controlPoint2: CGPointMake(frame.minX + 56.91, frame.minY + 10.82))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 56.52, frame.minY + 10.85), controlPoint1: CGPointMake(frame.minX + 56.69, frame.minY + 10.82), controlPoint2: CGPointMake(frame.minX + 56.61, frame.minY + 10.83))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 56.32, frame.minY + 10.88), controlPoint1: CGPointMake(frame.minX + 56.43, frame.minY + 10.87), controlPoint2: CGPointMake(frame.minX + 56.36, frame.minY + 10.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 55.62, frame.minY + 9.8), controlPoint1: CGPointMake(frame.minX + 55.85, frame.minY + 10.88), controlPoint2: CGPointMake(frame.minX + 55.62, frame.minY + 10.52))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 56.56, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 55.62, frame.minY + 9), controlPoint2: CGPointMake(frame.minX + 55.93, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 57.38, frame.minY + 8.68), controlPoint1: CGPointMake(frame.minX + 56.69, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 56.97, frame.minY + 8.63))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 58.18, frame.minY + 8.7), controlPoint1: CGPointMake(frame.minX + 57.71, frame.minY + 8.72), controlPoint2: CGPointMake(frame.minX + 57.98, frame.minY + 8.73))
    textPath.addLineToPoint(CGPointMake(frame.minX + 58.94, frame.minY + 8.6))
    textPath.addLineToPoint(CGPointMake(frame.minX + 59, frame.minY + 8.6))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 65.42, frame.minY + 22.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 62.53, frame.minY + 20.96), controlPoint1: CGPointMake(frame.minX + 64.18, frame.minY + 22.32), controlPoint2: CGPointMake(frame.minX + 63.22, frame.minY + 21.87))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 61.5, frame.minY + 17.12), controlPoint1: CGPointMake(frame.minX + 61.84, frame.minY + 20.05), controlPoint2: CGPointMake(frame.minX + 61.5, frame.minY + 18.77))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 62.53, frame.minY + 13.23), controlPoint1: CGPointMake(frame.minX + 61.5, frame.minY + 15.44), controlPoint2: CGPointMake(frame.minX + 61.84, frame.minY + 14.14))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 65.46, frame.minY + 11.86), controlPoint1: CGPointMake(frame.minX + 63.22, frame.minY + 12.32), controlPoint2: CGPointMake(frame.minX + 64.19, frame.minY + 11.86))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 68.31, frame.minY + 13.19), controlPoint1: CGPointMake(frame.minX + 66.69, frame.minY + 11.86), controlPoint2: CGPointMake(frame.minX + 67.64, frame.minY + 12.3))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 69.32, frame.minY + 16.92), controlPoint1: CGPointMake(frame.minX + 68.98, frame.minY + 14.08), controlPoint2: CGPointMake(frame.minX + 69.32, frame.minY + 15.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 68.31, frame.minY + 20.92), controlPoint1: CGPointMake(frame.minX + 69.32, frame.minY + 18.65), controlPoint2: CGPointMake(frame.minX + 68.98, frame.minY + 19.99))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 65.42, frame.minY + 22.32), controlPoint1: CGPointMake(frame.minX + 67.64, frame.minY + 21.85), controlPoint2: CGPointMake(frame.minX + 66.67, frame.minY + 22.32))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 65.46, frame.minY + 14.26))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 64.12, frame.minY + 16.92), controlPoint1: CGPointMake(frame.minX + 64.61, frame.minY + 14.26), controlPoint2: CGPointMake(frame.minX + 64.16, frame.minY + 15.15))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 64.1, frame.minY + 17.14), controlPoint1: CGPointMake(frame.minX + 64.11, frame.minY + 16.97), controlPoint2: CGPointMake(frame.minX + 64.1, frame.minY + 17.05))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 64.45, frame.minY + 19.17), controlPoint1: CGPointMake(frame.minX + 64.1, frame.minY + 17.99), controlPoint2: CGPointMake(frame.minX + 64.22, frame.minY + 18.67))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 65.4, frame.minY + 19.92), controlPoint1: CGPointMake(frame.minX + 64.68, frame.minY + 19.67), controlPoint2: CGPointMake(frame.minX + 65, frame.minY + 19.92))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 66.7, frame.minY + 17.08), controlPoint1: CGPointMake(frame.minX + 66.27, frame.minY + 19.92), controlPoint2: CGPointMake(frame.minX + 66.7, frame.minY + 18.97))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 66.37, frame.minY + 15.02), controlPoint1: CGPointMake(frame.minX + 66.7, frame.minY + 16.21), controlPoint2: CGPointMake(frame.minX + 66.59, frame.minY + 15.53))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 65.46, frame.minY + 14.26), controlPoint1: CGPointMake(frame.minX + 66.15, frame.minY + 14.51), controlPoint2: CGPointMake(frame.minX + 65.85, frame.minY + 14.26))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 71.6, frame.minY + 23.36))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 72.08, frame.minY + 22.22), controlPoint1: CGPointMake(frame.minX + 71.76, frame.minY + 23.03), controlPoint2: CGPointMake(frame.minX + 71.92, frame.minY + 22.65))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 70.82, frame.minY + 20.22), controlPoint1: CGPointMake(frame.minX + 71.24, frame.minY + 21.87), controlPoint2: CGPointMake(frame.minX + 70.82, frame.minY + 21.21))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 71.34, frame.minY + 18.78), controlPoint1: CGPointMake(frame.minX + 70.82, frame.minY + 19.67), controlPoint2: CGPointMake(frame.minX + 70.99, frame.minY + 19.19))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 72.56, frame.minY + 18.16), controlPoint1: CGPointMake(frame.minX + 71.69, frame.minY + 18.37), controlPoint2: CGPointMake(frame.minX + 72.09, frame.minY + 18.16))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 73.78, frame.minY + 18.82), controlPoint1: CGPointMake(frame.minX + 73.07, frame.minY + 18.16), controlPoint2: CGPointMake(frame.minX + 73.47, frame.minY + 18.38))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 74.24, frame.minY + 20.6), controlPoint1: CGPointMake(frame.minX + 74.09, frame.minY + 19.26), controlPoint2: CGPointMake(frame.minX + 74.24, frame.minY + 19.85))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 73.06, frame.minY + 24.46), controlPoint1: CGPointMake(frame.minX + 74.24, frame.minY + 21.83), controlPoint2: CGPointMake(frame.minX + 73.85, frame.minY + 23.11))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 71.84, frame.minY + 25.56), controlPoint1: CGPointMake(frame.minX + 72.63, frame.minY + 25.19), controlPoint2: CGPointMake(frame.minX + 72.23, frame.minY + 25.56))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 71.28, frame.minY + 25.33), controlPoint1: CGPointMake(frame.minX + 71.63, frame.minY + 25.56), controlPoint2: CGPointMake(frame.minX + 71.44, frame.minY + 25.48))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 71.04, frame.minY + 24.8), controlPoint1: CGPointMake(frame.minX + 71.12, frame.minY + 25.18), controlPoint2: CGPointMake(frame.minX + 71.04, frame.minY + 25))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 71.18, frame.minY + 24.26), controlPoint1: CGPointMake(frame.minX + 71.04, frame.minY + 24.64), controlPoint2: CGPointMake(frame.minX + 71.09, frame.minY + 24.46))
    textPath.addLineToPoint(CGPointMake(frame.minX + 71.6, frame.minY + 23.36))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 84.14, frame.minY + 12))
    textPath.addLineToPoint(CGPointMake(frame.minX + 84.78, frame.minY + 18.96))
    textPath.addLineToPoint(CGPointMake(frame.minX + 86.38, frame.minY + 9.4))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 87.46, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 86.47, frame.minY + 8.87), controlPoint2: CGPointMake(frame.minX + 86.83, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 88.4, frame.minY + 8.7), controlPoint1: CGPointMake(frame.minX + 87.93, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 88.24, frame.minY + 8.63))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 88.9, frame.minY + 9.4), controlPoint1: CGPointMake(frame.minX + 88.68, frame.minY + 8.81), controlPoint2: CGPointMake(frame.minX + 88.85, frame.minY + 9.04))
    textPath.addLineToPoint(CGPointMake(frame.minX + 90.3, frame.minY + 18.96))
    textPath.addLineToPoint(CGPointMake(frame.minX + 91.08, frame.minY + 11.92))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 91.12, frame.minY + 11.6), controlPoint1: CGPointMake(frame.minX + 91.11, frame.minY + 11.68), controlPoint2: CGPointMake(frame.minX + 91.12, frame.minY + 11.57))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 90.98, frame.minY + 11.32), controlPoint1: CGPointMake(frame.minX + 91.12, frame.minY + 11.45), controlPoint2: CGPointMake(frame.minX + 91.07, frame.minY + 11.36))
    textPath.addLineToPoint(CGPointMake(frame.minX + 90.56, frame.minY + 11.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 89.98, frame.minY + 10.95), controlPoint1: CGPointMake(frame.minX + 90.33, frame.minY + 11.32), controlPoint2: CGPointMake(frame.minX + 90.14, frame.minY + 11.2))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 89.74, frame.minY + 10.04), controlPoint1: CGPointMake(frame.minX + 89.82, frame.minY + 10.7), controlPoint2: CGPointMake(frame.minX + 89.74, frame.minY + 10.4))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 90.08, frame.minY + 9.03), controlPoint1: CGPointMake(frame.minX + 89.74, frame.minY + 9.65), controlPoint2: CGPointMake(frame.minX + 89.85, frame.minY + 9.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 90.9, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 90.31, frame.minY + 8.74), controlPoint2: CGPointMake(frame.minX + 90.58, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 91.63, frame.minY + 8.67), controlPoint1: CGPointMake(frame.minX + 91.06, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 91.3, frame.minY + 8.62))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 92.38, frame.minY + 8.74), controlPoint1: CGPointMake(frame.minX + 91.96, frame.minY + 8.72), controlPoint2: CGPointMake(frame.minX + 92.21, frame.minY + 8.74))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 93.18, frame.minY + 8.67), controlPoint1: CGPointMake(frame.minX + 92.57, frame.minY + 8.74), controlPoint2: CGPointMake(frame.minX + 92.83, frame.minY + 8.72))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 93.96, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 93.53, frame.minY + 8.62), controlPoint2: CGPointMake(frame.minX + 93.79, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 94.82, frame.minY + 8.99), controlPoint1: CGPointMake(frame.minX + 94.31, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 94.59, frame.minY + 8.73))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 95.16, frame.minY + 9.98), controlPoint1: CGPointMake(frame.minX + 95.05, frame.minY + 9.25), controlPoint2: CGPointMake(frame.minX + 95.16, frame.minY + 9.58))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 94.36, frame.minY + 11.22), controlPoint1: CGPointMake(frame.minX + 95.16, frame.minY + 10.78), controlPoint2: CGPointMake(frame.minX + 94.89, frame.minY + 11.19))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 94.04, frame.minY + 11.33), controlPoint1: CGPointMake(frame.minX + 94.2, frame.minY + 11.23), controlPoint2: CGPointMake(frame.minX + 94.09, frame.minY + 11.27))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 93.9, frame.minY + 11.8), controlPoint1: CGPointMake(frame.minX + 93.99, frame.minY + 11.39), controlPoint2: CGPointMake(frame.minX + 93.94, frame.minY + 11.55))
    textPath.addLineToPoint(CGPointMake(frame.minX + 92.24, frame.minY + 21.42))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 91.44, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 92.16, frame.minY + 21.85), controlPoint2: CGPointMake(frame.minX + 91.89, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 90.84, frame.minY + 22.03), controlPoint1: CGPointMake(frame.minX + 91.31, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 91.11, frame.minY + 22.05))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 90.24, frame.minY + 22), controlPoint1: CGPointMake(frame.minX + 90.57, frame.minY + 22.01), controlPoint2: CGPointMake(frame.minX + 90.37, frame.minY + 22))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 89.71, frame.minY + 22.04), controlPoint1: CGPointMake(frame.minX + 90.12, frame.minY + 22), controlPoint2: CGPointMake(frame.minX + 89.94, frame.minY + 22.01))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 89.18, frame.minY + 22.08), controlPoint1: CGPointMake(frame.minX + 89.48, frame.minY + 22.07), controlPoint2: CGPointMake(frame.minX + 89.3, frame.minY + 22.08))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 88.48, frame.minY + 21.3), controlPoint1: CGPointMake(frame.minX + 88.79, frame.minY + 22.08), controlPoint2: CGPointMake(frame.minX + 88.56, frame.minY + 21.82))
    textPath.addLineToPoint(CGPointMake(frame.minX + 87.56, frame.minY + 15.06))
    textPath.addLineToPoint(CGPointMake(frame.minX + 86.58, frame.minY + 21.3))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 85.66, frame.minY + 22.08), controlPoint1: CGPointMake(frame.minX + 86.5, frame.minY + 21.82), controlPoint2: CGPointMake(frame.minX + 86.19, frame.minY + 22.08))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 85.46, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 85.57, frame.minY + 22.08), controlPoint2: CGPointMake(frame.minX + 85.5, frame.minY + 22.07))
    textPath.addLineToPoint(CGPointMake(frame.minX + 84.72, frame.minY + 22))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 83.9, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 84.64, frame.minY + 22), controlPoint2: CGPointMake(frame.minX + 84.37, frame.minY + 22.02))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 83.64, frame.minY + 22.08), controlPoint1: CGPointMake(frame.minX + 83.83, frame.minY + 22.07), controlPoint2: CGPointMake(frame.minX + 83.75, frame.minY + 22.08))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 82.84, frame.minY + 21.3), controlPoint1: CGPointMake(frame.minX + 83.19, frame.minY + 22.08), controlPoint2: CGPointMake(frame.minX + 82.92, frame.minY + 21.82))
    textPath.addLineToPoint(CGPointMake(frame.minX + 81.28, frame.minY + 11.8))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 81, frame.minY + 11.3), controlPoint1: CGPointMake(frame.minX + 81.23, frame.minY + 11.48), controlPoint2: CGPointMake(frame.minX + 81.13, frame.minY + 11.31))
    textPath.addLineToPoint(CGPointMake(frame.minX + 80.68, frame.minY + 11.26))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 80.21, frame.minY + 10.88), controlPoint1: CGPointMake(frame.minX + 80.49, frame.minY + 11.23), controlPoint2: CGPointMake(frame.minX + 80.34, frame.minY + 11.11))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 80.02, frame.minY + 10.08), controlPoint1: CGPointMake(frame.minX + 80.08, frame.minY + 10.65), controlPoint2: CGPointMake(frame.minX + 80.02, frame.minY + 10.39))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 80.36, frame.minY + 9.03), controlPoint1: CGPointMake(frame.minX + 80.02, frame.minY + 9.67), controlPoint2: CGPointMake(frame.minX + 80.13, frame.minY + 9.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 81.22, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 80.59, frame.minY + 8.74), controlPoint2: CGPointMake(frame.minX + 80.87, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 81.99, frame.minY + 8.67), controlPoint1: CGPointMake(frame.minX + 81.39, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 81.65, frame.minY + 8.62))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 82.76, frame.minY + 8.74), controlPoint1: CGPointMake(frame.minX + 82.33, frame.minY + 8.72), controlPoint2: CGPointMake(frame.minX + 82.59, frame.minY + 8.74))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 83.52, frame.minY + 8.67), controlPoint1: CGPointMake(frame.minX + 82.93, frame.minY + 8.74), controlPoint2: CGPointMake(frame.minX + 83.19, frame.minY + 8.72))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 84.28, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 83.85, frame.minY + 8.62), controlPoint2: CGPointMake(frame.minX + 84.11, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 85.14, frame.minY + 9.02), controlPoint1: CGPointMake(frame.minX + 84.63, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 84.91, frame.minY + 8.74))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 85.48, frame.minY + 10.08), controlPoint1: CGPointMake(frame.minX + 85.37, frame.minY + 9.3), controlPoint2: CGPointMake(frame.minX + 85.48, frame.minY + 9.65))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 84.58, frame.minY + 11.3), controlPoint1: CGPointMake(frame.minX + 85.48, frame.minY + 10.87), controlPoint2: CGPointMake(frame.minX + 85.18, frame.minY + 11.27))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 84.12, frame.minY + 11.7), controlPoint1: CGPointMake(frame.minX + 84.27, frame.minY + 11.31), controlPoint2: CGPointMake(frame.minX + 84.12, frame.minY + 11.45))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 84.14, frame.minY + 12), controlPoint1: CGPointMake(frame.minX + 84.12, frame.minY + 11.75), controlPoint2: CGPointMake(frame.minX + 84.13, frame.minY + 11.85))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 98.98, frame.minY + 22.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 96.09, frame.minY + 20.96), controlPoint1: CGPointMake(frame.minX + 97.74, frame.minY + 22.32), controlPoint2: CGPointMake(frame.minX + 96.78, frame.minY + 21.87))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 95.06, frame.minY + 17.12), controlPoint1: CGPointMake(frame.minX + 95.4, frame.minY + 20.05), controlPoint2: CGPointMake(frame.minX + 95.06, frame.minY + 18.77))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 96.09, frame.minY + 13.23), controlPoint1: CGPointMake(frame.minX + 95.06, frame.minY + 15.44), controlPoint2: CGPointMake(frame.minX + 95.4, frame.minY + 14.14))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 99.02, frame.minY + 11.86), controlPoint1: CGPointMake(frame.minX + 96.78, frame.minY + 12.32), controlPoint2: CGPointMake(frame.minX + 97.75, frame.minY + 11.86))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 101.87, frame.minY + 13.19), controlPoint1: CGPointMake(frame.minX + 100.25, frame.minY + 11.86), controlPoint2: CGPointMake(frame.minX + 101.2, frame.minY + 12.3))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 102.88, frame.minY + 16.92), controlPoint1: CGPointMake(frame.minX + 102.54, frame.minY + 14.08), controlPoint2: CGPointMake(frame.minX + 102.88, frame.minY + 15.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 101.87, frame.minY + 20.92), controlPoint1: CGPointMake(frame.minX + 102.88, frame.minY + 18.65), controlPoint2: CGPointMake(frame.minX + 102.54, frame.minY + 19.99))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 98.98, frame.minY + 22.32), controlPoint1: CGPointMake(frame.minX + 101.2, frame.minY + 21.85), controlPoint2: CGPointMake(frame.minX + 100.23, frame.minY + 22.32))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 99.02, frame.minY + 14.26))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 97.68, frame.minY + 16.92), controlPoint1: CGPointMake(frame.minX + 98.17, frame.minY + 14.26), controlPoint2: CGPointMake(frame.minX + 97.72, frame.minY + 15.15))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 97.66, frame.minY + 17.14), controlPoint1: CGPointMake(frame.minX + 97.67, frame.minY + 16.97), controlPoint2: CGPointMake(frame.minX + 97.66, frame.minY + 17.05))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 98.01, frame.minY + 19.17), controlPoint1: CGPointMake(frame.minX + 97.66, frame.minY + 17.99), controlPoint2: CGPointMake(frame.minX + 97.78, frame.minY + 18.67))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 98.96, frame.minY + 19.92), controlPoint1: CGPointMake(frame.minX + 98.24, frame.minY + 19.67), controlPoint2: CGPointMake(frame.minX + 98.56, frame.minY + 19.92))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 100.26, frame.minY + 17.08), controlPoint1: CGPointMake(frame.minX + 99.83, frame.minY + 19.92), controlPoint2: CGPointMake(frame.minX + 100.26, frame.minY + 18.97))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 99.93, frame.minY + 15.02), controlPoint1: CGPointMake(frame.minX + 100.26, frame.minY + 16.21), controlPoint2: CGPointMake(frame.minX + 100.15, frame.minY + 15.53))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 99.02, frame.minY + 14.26), controlPoint1: CGPointMake(frame.minX + 99.71, frame.minY + 14.51), controlPoint2: CGPointMake(frame.minX + 99.41, frame.minY + 14.26))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 107.24, frame.minY + 12.5))
    textPath.addLineToPoint(CGPointMake(frame.minX + 107.24, frame.minY + 12.94))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 109.18, frame.minY + 11.92), controlPoint1: CGPointMake(frame.minX + 107.84, frame.minY + 12.26), controlPoint2: CGPointMake(frame.minX + 108.49, frame.minY + 11.92))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 110.48, frame.minY + 12.6), controlPoint1: CGPointMake(frame.minX + 109.7, frame.minY + 11.92), controlPoint2: CGPointMake(frame.minX + 110.13, frame.minY + 12.15))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 111, frame.minY + 14.3), controlPoint1: CGPointMake(frame.minX + 110.83, frame.minY + 13.05), controlPoint2: CGPointMake(frame.minX + 111, frame.minY + 13.62))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 110.62, frame.minY + 15.71), controlPoint1: CGPointMake(frame.minX + 111, frame.minY + 14.87), controlPoint2: CGPointMake(frame.minX + 110.87, frame.minY + 15.34))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 109.66, frame.minY + 16.26), controlPoint1: CGPointMake(frame.minX + 110.37, frame.minY + 16.08), controlPoint2: CGPointMake(frame.minX + 110.05, frame.minY + 16.26))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 108.83, frame.minY + 15.86), controlPoint1: CGPointMake(frame.minX + 109.33, frame.minY + 16.26), controlPoint2: CGPointMake(frame.minX + 109.05, frame.minY + 16.13))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 108.5, frame.minY + 14.88), controlPoint1: CGPointMake(frame.minX + 108.61, frame.minY + 15.59), controlPoint2: CGPointMake(frame.minX + 108.5, frame.minY + 15.27))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 108.62, frame.minY + 14.14), controlPoint1: CGPointMake(frame.minX + 108.5, frame.minY + 14.68), controlPoint2: CGPointMake(frame.minX + 108.54, frame.minY + 14.43))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 107.72, frame.minY + 17.46), controlPoint1: CGPointMake(frame.minX + 108.02, frame.minY + 14.61), controlPoint2: CGPointMake(frame.minX + 107.72, frame.minY + 15.71))
    textPath.addLineToPoint(CGPointMake(frame.minX + 107.72, frame.minY + 18.94))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 107.98, frame.minY + 19.88), controlPoint1: CGPointMake(frame.minX + 107.72, frame.minY + 19.57), controlPoint2: CGPointMake(frame.minX + 107.81, frame.minY + 19.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 108.2, frame.minY + 19.84), controlPoint1: CGPointMake(frame.minX + 108.02, frame.minY + 19.88), controlPoint2: CGPointMake(frame.minX + 108.09, frame.minY + 19.87))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 108.54, frame.minY + 19.8), controlPoint1: CGPointMake(frame.minX + 108.39, frame.minY + 19.81), controlPoint2: CGPointMake(frame.minX + 108.5, frame.minY + 19.8))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 109.05, frame.minY + 20.12), controlPoint1: CGPointMake(frame.minX + 108.74, frame.minY + 19.8), controlPoint2: CGPointMake(frame.minX + 108.91, frame.minY + 19.91))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 109.26, frame.minY + 20.9), controlPoint1: CGPointMake(frame.minX + 109.19, frame.minY + 20.33), controlPoint2: CGPointMake(frame.minX + 109.26, frame.minY + 20.59))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 109, frame.minY + 21.73), controlPoint1: CGPointMake(frame.minX + 109.26, frame.minY + 21.23), controlPoint2: CGPointMake(frame.minX + 109.17, frame.minY + 21.51))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 108.34, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 108.83, frame.minY + 21.95), controlPoint2: CGPointMake(frame.minX + 108.61, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 107.58, frame.minY + 22), controlPoint1: CGPointMake(frame.minX + 108.21, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 107.95, frame.minY + 22.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 106.62, frame.minY + 21.96), controlPoint1: CGPointMake(frame.minX + 107.33, frame.minY + 21.97), controlPoint2: CGPointMake(frame.minX + 107.01, frame.minY + 21.96))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 105.66, frame.minY + 22), controlPoint1: CGPointMake(frame.minX + 106.26, frame.minY + 21.96), controlPoint2: CGPointMake(frame.minX + 105.94, frame.minY + 21.97))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 104.82, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 105.25, frame.minY + 22.04), controlPoint2: CGPointMake(frame.minX + 104.97, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 104.11, frame.minY + 21.71), controlPoint1: CGPointMake(frame.minX + 104.53, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 104.29, frame.minY + 21.94))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 103.84, frame.minY + 20.8), controlPoint1: CGPointMake(frame.minX + 103.93, frame.minY + 21.48), controlPoint2: CGPointMake(frame.minX + 103.84, frame.minY + 21.17))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 104.48, frame.minY + 19.84), controlPoint1: CGPointMake(frame.minX + 103.84, frame.minY + 20.16), controlPoint2: CGPointMake(frame.minX + 104.05, frame.minY + 19.84))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 104.68, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 104.56, frame.minY + 19.84), controlPoint2: CGPointMake(frame.minX + 104.63, frame.minY + 19.85))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 104.78, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 104.71, frame.minY + 19.86), controlPoint2: CGPointMake(frame.minX + 104.74, frame.minY + 19.86))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 104.86, frame.minY + 19.88), controlPoint1: CGPointMake(frame.minX + 104.82, frame.minY + 19.87), controlPoint2: CGPointMake(frame.minX + 104.85, frame.minY + 19.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 105.16, frame.minY + 19.04), controlPoint1: CGPointMake(frame.minX + 105.06, frame.minY + 19.88), controlPoint2: CGPointMake(frame.minX + 105.16, frame.minY + 19.6))
    textPath.addLineToPoint(CGPointMake(frame.minX + 105.16, frame.minY + 15.12))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 104.9, frame.minY + 14.28), controlPoint1: CGPointMake(frame.minX + 105.16, frame.minY + 14.56), controlPoint2: CGPointMake(frame.minX + 105.07, frame.minY + 14.28))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 104.7, frame.minY + 14.31), controlPoint1: CGPointMake(frame.minX + 104.86, frame.minY + 14.28), controlPoint2: CGPointMake(frame.minX + 104.79, frame.minY + 14.29))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 104.48, frame.minY + 14.34), controlPoint1: CGPointMake(frame.minX + 104.61, frame.minY + 14.33), controlPoint2: CGPointMake(frame.minX + 104.53, frame.minY + 14.34))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 103.8, frame.minY + 13.26), controlPoint1: CGPointMake(frame.minX + 104.03, frame.minY + 14.34), controlPoint2: CGPointMake(frame.minX + 103.8, frame.minY + 13.98))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 104.72, frame.minY + 12.06), controlPoint1: CGPointMake(frame.minX + 103.8, frame.minY + 12.46), controlPoint2: CGPointMake(frame.minX + 104.11, frame.minY + 12.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 105.29, frame.minY + 12.11), controlPoint1: CGPointMake(frame.minX + 104.85, frame.minY + 12.06), controlPoint2: CGPointMake(frame.minX + 105.04, frame.minY + 12.08))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 105.86, frame.minY + 12.16), controlPoint1: CGPointMake(frame.minX + 105.54, frame.minY + 12.14), controlPoint2: CGPointMake(frame.minX + 105.73, frame.minY + 12.16))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 106.58, frame.minY + 12.08), controlPoint1: CGPointMake(frame.minX + 106.07, frame.minY + 12.16), controlPoint2: CGPointMake(frame.minX + 106.31, frame.minY + 12.13))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 106.86, frame.minY + 12.04), controlPoint1: CGPointMake(frame.minX + 106.71, frame.minY + 12.05), controlPoint2: CGPointMake(frame.minX + 106.81, frame.minY + 12.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 107.24, frame.minY + 12.5), controlPoint1: CGPointMake(frame.minX + 107.11, frame.minY + 12.04), controlPoint2: CGPointMake(frame.minX + 107.24, frame.minY + 12.19))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 114.58, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 115.14, frame.minY + 9.3), controlPoint1: CGPointMake(frame.minX + 114.95, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 115.14, frame.minY + 8.83))
    textPath.addLineToPoint(CGPointMake(frame.minX + 115.14, frame.minY + 19.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 115.46, frame.minY + 19.88), controlPoint1: CGPointMake(frame.minX + 115.14, frame.minY + 19.6), controlPoint2: CGPointMake(frame.minX + 115.25, frame.minY + 19.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 115.54, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 115.47, frame.minY + 19.88), controlPoint2: CGPointMake(frame.minX + 115.5, frame.minY + 19.87))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 115.64, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 115.58, frame.minY + 19.86), controlPoint2: CGPointMake(frame.minX + 115.61, frame.minY + 19.86))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 115.82, frame.minY + 19.84), controlPoint1: CGPointMake(frame.minX + 115.68, frame.minY + 19.85), controlPoint2: CGPointMake(frame.minX + 115.74, frame.minY + 19.84))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 116.46, frame.minY + 20.78), controlPoint1: CGPointMake(frame.minX + 116.25, frame.minY + 19.84), controlPoint2: CGPointMake(frame.minX + 116.46, frame.minY + 20.15))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 115.46, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 116.46, frame.minY + 21.63), controlPoint2: CGPointMake(frame.minX + 116.13, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 114.62, frame.minY + 22), controlPoint1: CGPointMake(frame.minX + 115.31, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 115.03, frame.minY + 22.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 113.7, frame.minY + 21.96), controlPoint1: CGPointMake(frame.minX + 114.34, frame.minY + 21.97), controlPoint2: CGPointMake(frame.minX + 114.03, frame.minY + 21.96))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 112.96, frame.minY + 22.01), controlPoint1: CGPointMake(frame.minX + 113.54, frame.minY + 21.96), controlPoint2: CGPointMake(frame.minX + 113.29, frame.minY + 21.98))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 112.22, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 112.63, frame.minY + 22.04), controlPoint2: CGPointMake(frame.minX + 112.38, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 111.26, frame.minY + 20.8), controlPoint1: CGPointMake(frame.minX + 111.58, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 111.26, frame.minY + 21.64))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 111.88, frame.minY + 19.84), controlPoint1: CGPointMake(frame.minX + 111.26, frame.minY + 20.16), controlPoint2: CGPointMake(frame.minX + 111.47, frame.minY + 19.84))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 112.08, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 111.97, frame.minY + 19.84), controlPoint2: CGPointMake(frame.minX + 112.04, frame.minY + 19.85))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 112.18, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 112.11, frame.minY + 19.86), controlPoint2: CGPointMake(frame.minX + 112.14, frame.minY + 19.86))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 112.26, frame.minY + 19.88), controlPoint1: CGPointMake(frame.minX + 112.22, frame.minY + 19.87), controlPoint2: CGPointMake(frame.minX + 112.25, frame.minY + 19.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 112.58, frame.minY + 19.04), controlPoint1: CGPointMake(frame.minX + 112.47, frame.minY + 19.88), controlPoint2: CGPointMake(frame.minX + 112.58, frame.minY + 19.6))
    textPath.addLineToPoint(CGPointMake(frame.minX + 112.58, frame.minY + 11.66))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 112.32, frame.minY + 10.82), controlPoint1: CGPointMake(frame.minX + 112.58, frame.minY + 11.1), controlPoint2: CGPointMake(frame.minX + 112.49, frame.minY + 10.82))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 112.1, frame.minY + 10.85), controlPoint1: CGPointMake(frame.minX + 112.27, frame.minY + 10.82), controlPoint2: CGPointMake(frame.minX + 112.19, frame.minY + 10.83))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 111.9, frame.minY + 10.88), controlPoint1: CGPointMake(frame.minX + 112.01, frame.minY + 10.87), controlPoint2: CGPointMake(frame.minX + 111.94, frame.minY + 10.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 111.2, frame.minY + 9.8), controlPoint1: CGPointMake(frame.minX + 111.43, frame.minY + 10.88), controlPoint2: CGPointMake(frame.minX + 111.2, frame.minY + 10.52))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 112.14, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 111.2, frame.minY + 9), controlPoint2: CGPointMake(frame.minX + 111.51, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 112.96, frame.minY + 8.68), controlPoint1: CGPointMake(frame.minX + 112.27, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 112.55, frame.minY + 8.63))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 113.76, frame.minY + 8.7), controlPoint1: CGPointMake(frame.minX + 113.29, frame.minY + 8.72), controlPoint2: CGPointMake(frame.minX + 113.56, frame.minY + 8.73))
    textPath.addLineToPoint(CGPointMake(frame.minX + 114.52, frame.minY + 8.6))
    textPath.addLineToPoint(CGPointMake(frame.minX + 114.58, frame.minY + 8.6))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 120.24, frame.minY + 11.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 122.14, frame.minY + 12.68), controlPoint1: CGPointMake(frame.minX + 120.85, frame.minY + 11.88), controlPoint2: CGPointMake(frame.minX + 121.49, frame.minY + 12.15))
    textPath.addLineToPoint(CGPointMake(frame.minX + 122.14, frame.minY + 11.44))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 121.9, frame.minY + 10.78), controlPoint1: CGPointMake(frame.minX + 122.14, frame.minY + 11), controlPoint2: CGPointMake(frame.minX + 122.06, frame.minY + 10.78))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 121.68, frame.minY + 10.82), controlPoint1: CGPointMake(frame.minX + 121.89, frame.minY + 10.78), controlPoint2: CGPointMake(frame.minX + 121.81, frame.minY + 10.79))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 121.58, frame.minY + 10.82), controlPoint1: CGPointMake(frame.minX + 121.67, frame.minY + 10.82), controlPoint2: CGPointMake(frame.minX + 121.63, frame.minY + 10.82))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 121.48, frame.minY + 10.84), controlPoint1: CGPointMake(frame.minX + 121.54, frame.minY + 10.83), controlPoint2: CGPointMake(frame.minX + 121.51, frame.minY + 10.84))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 120.74, frame.minY + 9.8), controlPoint1: CGPointMake(frame.minX + 120.99, frame.minY + 10.84), controlPoint2: CGPointMake(frame.minX + 120.74, frame.minY + 10.49))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 121.72, frame.minY + 8.6), controlPoint1: CGPointMake(frame.minX + 120.74, frame.minY + 9), controlPoint2: CGPointMake(frame.minX + 121.07, frame.minY + 8.6))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 122.5, frame.minY + 8.66), controlPoint1: CGPointMake(frame.minX + 121.85, frame.minY + 8.6), controlPoint2: CGPointMake(frame.minX + 122.11, frame.minY + 8.62))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 123.24, frame.minY + 8.7), controlPoint1: CGPointMake(frame.minX + 122.82, frame.minY + 8.7), controlPoint2: CGPointMake(frame.minX + 123.07, frame.minY + 8.71))
    textPath.addLineToPoint(CGPointMake(frame.minX + 124.16, frame.minY + 8.62))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 124.74, frame.minY + 9.4), controlPoint1: CGPointMake(frame.minX + 124.55, frame.minY + 8.62), controlPoint2: CGPointMake(frame.minX + 124.74, frame.minY + 8.88))
    textPath.addLineToPoint(CGPointMake(frame.minX + 124.74, frame.minY + 19.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 125.04, frame.minY + 19.88), controlPoint1: CGPointMake(frame.minX + 124.74, frame.minY + 19.6), controlPoint2: CGPointMake(frame.minX + 124.84, frame.minY + 19.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 125.14, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 125.05, frame.minY + 19.88), controlPoint2: CGPointMake(frame.minX + 125.09, frame.minY + 19.87))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 125.24, frame.minY + 19.86), controlPoint1: CGPointMake(frame.minX + 125.18, frame.minY + 19.86), controlPoint2: CGPointMake(frame.minX + 125.21, frame.minY + 19.86))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 125.42, frame.minY + 19.84), controlPoint1: CGPointMake(frame.minX + 125.28, frame.minY + 19.85), controlPoint2: CGPointMake(frame.minX + 125.34, frame.minY + 19.84))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 126.06, frame.minY + 20.8), controlPoint1: CGPointMake(frame.minX + 125.85, frame.minY + 19.84), controlPoint2: CGPointMake(frame.minX + 126.06, frame.minY + 20.16))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 125.08, frame.minY + 22.06), controlPoint1: CGPointMake(frame.minX + 126.06, frame.minY + 21.64), controlPoint2: CGPointMake(frame.minX + 125.73, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 124.49, frame.minY + 21.99), controlPoint1: CGPointMake(frame.minX + 124.97, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 124.78, frame.minY + 22.04))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 123.82, frame.minY + 21.96), controlPoint1: CGPointMake(frame.minX + 124.2, frame.minY + 21.94), controlPoint2: CGPointMake(frame.minX + 123.98, frame.minY + 21.93))
    textPath.addLineToPoint(CGPointMake(frame.minX + 123.04, frame.minY + 22.06))
    textPath.addLineToPoint(CGPointMake(frame.minX + 122.96, frame.minY + 22.06))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 122.38, frame.minY + 21.42), controlPoint1: CGPointMake(frame.minX + 122.57, frame.minY + 22.06), controlPoint2: CGPointMake(frame.minX + 122.38, frame.minY + 21.85))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 122.4, frame.minY + 21.34), controlPoint1: CGPointMake(frame.minX + 122.38, frame.minY + 21.41), controlPoint2: CGPointMake(frame.minX + 122.39, frame.minY + 21.38))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 122.4, frame.minY + 21.2), controlPoint1: CGPointMake(frame.minX + 122.4, frame.minY + 21.29), controlPoint2: CGPointMake(frame.minX + 122.4, frame.minY + 21.24))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 120.2, frame.minY + 22.32), controlPoint1: CGPointMake(frame.minX + 121.8, frame.minY + 21.95), controlPoint2: CGPointMake(frame.minX + 121.07, frame.minY + 22.32))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 117.94, frame.minY + 20.92), controlPoint1: CGPointMake(frame.minX + 119.25, frame.minY + 22.32), controlPoint2: CGPointMake(frame.minX + 118.5, frame.minY + 21.85))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 117.1, frame.minY + 17.14), controlPoint1: CGPointMake(frame.minX + 117.38, frame.minY + 19.99), controlPoint2: CGPointMake(frame.minX + 117.1, frame.minY + 18.73))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 117.94, frame.minY + 13.29), controlPoint1: CGPointMake(frame.minX + 117.1, frame.minY + 15.51), controlPoint2: CGPointMake(frame.minX + 117.38, frame.minY + 14.23))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 120.24, frame.minY + 11.88), controlPoint1: CGPointMake(frame.minX + 118.5, frame.minY + 12.35), controlPoint2: CGPointMake(frame.minX + 119.27, frame.minY + 11.88))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 120.98, frame.minY + 14.38))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 120.07, frame.minY + 15.09), controlPoint1: CGPointMake(frame.minX + 120.61, frame.minY + 14.38), controlPoint2: CGPointMake(frame.minX + 120.3, frame.minY + 14.62))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 119.72, frame.minY + 16.98), controlPoint1: CGPointMake(frame.minX + 119.84, frame.minY + 15.56), controlPoint2: CGPointMake(frame.minX + 119.72, frame.minY + 16.19))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 120.05, frame.minY + 19), controlPoint1: CGPointMake(frame.minX + 119.72, frame.minY + 17.83), controlPoint2: CGPointMake(frame.minX + 119.83, frame.minY + 18.51))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 120.94, frame.minY + 19.74), controlPoint1: CGPointMake(frame.minX + 120.27, frame.minY + 19.49), controlPoint2: CGPointMake(frame.minX + 120.57, frame.minY + 19.74))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 122.16, frame.minY + 17.16), controlPoint1: CGPointMake(frame.minX + 121.75, frame.minY + 19.74), controlPoint2: CGPointMake(frame.minX + 122.16, frame.minY + 18.88))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 121.84, frame.minY + 15.13), controlPoint1: CGPointMake(frame.minX + 122.16, frame.minY + 16.31), controlPoint2: CGPointMake(frame.minX + 122.05, frame.minY + 15.63))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 120.98, frame.minY + 14.38), controlPoint1: CGPointMake(frame.minX + 121.63, frame.minY + 14.63), controlPoint2: CGPointMake(frame.minX + 121.34, frame.minY + 14.38))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 128.98, frame.minY + 22.3))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 127.79, frame.minY + 21.71), controlPoint1: CGPointMake(frame.minX + 128.5, frame.minY + 22.3), controlPoint2: CGPointMake(frame.minX + 128.1, frame.minY + 22.1))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 127.32, frame.minY + 20.24), controlPoint1: CGPointMake(frame.minX + 127.48, frame.minY + 21.32), controlPoint2: CGPointMake(frame.minX + 127.32, frame.minY + 20.83))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 127.81, frame.minY + 18.79), controlPoint1: CGPointMake(frame.minX + 127.32, frame.minY + 19.67), controlPoint2: CGPointMake(frame.minX + 127.48, frame.minY + 19.18))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 129.02, frame.minY + 18.2), controlPoint1: CGPointMake(frame.minX + 128.14, frame.minY + 18.4), controlPoint2: CGPointMake(frame.minX + 128.54, frame.minY + 18.2))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 130.21, frame.minY + 18.78), controlPoint1: CGPointMake(frame.minX + 129.5, frame.minY + 18.2), controlPoint2: CGPointMake(frame.minX + 129.9, frame.minY + 18.39))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 130.68, frame.minY + 20.26), controlPoint1: CGPointMake(frame.minX + 130.52, frame.minY + 19.17), controlPoint2: CGPointMake(frame.minX + 130.68, frame.minY + 19.66))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 130.2, frame.minY + 21.72), controlPoint1: CGPointMake(frame.minX + 130.68, frame.minY + 20.85), controlPoint2: CGPointMake(frame.minX + 130.52, frame.minY + 21.33))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 128.98, frame.minY + 22.3), controlPoint1: CGPointMake(frame.minX + 129.88, frame.minY + 22.11), controlPoint2: CGPointMake(frame.minX + 129.47, frame.minY + 22.3))
    textPath.closePath()
    textPath.moveToPoint(CGPointMake(frame.minX + 129.1, frame.minY + 17.52))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 128.14, frame.minY + 17.36), controlPoint1: CGPointMake(frame.minX + 128.63, frame.minY + 17.52), controlPoint2: CGPointMake(frame.minX + 128.31, frame.minY + 17.47))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 127.76, frame.minY + 16.52), controlPoint1: CGPointMake(frame.minX + 127.91, frame.minY + 17.21), controlPoint2: CGPointMake(frame.minX + 127.79, frame.minY + 16.93))
    textPath.addLineToPoint(CGPointMake(frame.minX + 127.38, frame.minY + 9.82))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 127.36, frame.minY + 9.68), controlPoint1: CGPointMake(frame.minX + 127.37, frame.minY + 9.79), controlPoint2: CGPointMake(frame.minX + 127.36, frame.minY + 9.75))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 129, frame.minY + 8.38), controlPoint1: CGPointMake(frame.minX + 127.36, frame.minY + 8.81), controlPoint2: CGPointMake(frame.minX + 127.91, frame.minY + 8.38))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 130.72, frame.minY + 9.6), controlPoint1: CGPointMake(frame.minX + 130.15, frame.minY + 8.38), controlPoint2: CGPointMake(frame.minX + 130.72, frame.minY + 8.79))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 130.72, frame.minY + 9.68), controlPoint1: CGPointMake(frame.minX + 130.72, frame.minY + 9.65), controlPoint2: CGPointMake(frame.minX + 130.72, frame.minY + 9.68))
    textPath.addLineToPoint(CGPointMake(frame.minX + 130.26, frame.minY + 16.56))
    textPath.addCurveToPoint(CGPointMake(frame.minX + 129.1, frame.minY + 17.52), controlPoint1: CGPointMake(frame.minX + 130.22, frame.minY + 17.2), controlPoint2: CGPointMake(frame.minX + 129.83, frame.minY + 17.52))
    textPath.closePath()

    shape.strokeColor = self.box.backgroundColor.CGColor
    shape.fillColor   = UIColor.clearColor().CGColor;
    shape.lineWidth = 1.0;
    shape.strokeEnd = 0
    self.shape.path = textPath.CGPath
    
  }

  func toggleButtons(isOn:Bool) {
    for button:UIBarButtonItem in self.toolbarItems as [UIBarButtonItem] {
      button.enabled = isOn
    }
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    self.drawCanvas1(self.box.bounds)
//    self.box.layer.mask = self.shape

    self.toggleButtons(false)

    
    let random = Double.sh_random(min: 25, max: 100)
    
    
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
  
//  let animator = Animera()
  var animator:AnimeraActions?

  
  func update() {
    

    let newCornerRadius = 20.sh_randomFromZero
    let random = 100.sh_randomFromZero/100.0

    let newSize = CGSize(width: 100.sh_randomFromZero, height: 100.sh_randomFromZero)
    
    
    let newRandomColor = UIColor(red: 100.sh_randomFromZero/100, green: 100.sh_randomFromZero/100, blue: 100.sh_randomFromZero/100, alpha: (10.sh_randomFromZero/10).sh_clamp(min: 0.5, max: 1))

    self.toggleButtons(true)
    
    
    println("-------------------")
    func completedTask(task:String) -> AnimeraCompletionHandler {
      return { didFinish in
        println("Task \(task) completion status is \(didFinish)")
      }
    }
    
    
    let positionAnimation = Animera().animationWithDuration(0.5) { event in
      self.box.center = event.tween(identifier: "ze center", fromValue: self.box.center, toValue: self.newCenter)
      }.onCompletion(completedTask("center"))

    
    let colorAnimation = Animera().onCompletion(completedTask("Color")).animationWithDuration(0.5) { event in
        self.box.backgroundColor = event.tween(identifier: "hehe color", fromValue: self.box.backgroundColor, toValue: newRandomColor)
    }

    let radiusAnimation = Animera().onCompletion(completedTask("Radius")).animationWithDuration(0.5) { event in
      self.box.layer.cornerRadius = event.tween(identifier: "hehe radii", fromValue: self.box.layer.cornerRadius, toValue: newCornerRadius)
    }

    
    let sizeAnimation = Animera().animationWithDuration(0.5) { event in
      self.box.frame.size = event.tween(identifier: "LOLSIZE", fromValue: self.box.frame.size, toValue:newSize)
      self.drawCanvas1(self.box.bounds)
    }
    sizeAnimation.completionHandler = completedTask("Size")
    

    
    self.animator = AnimeraGroup(animations: [positionAnimation, colorAnimation, sizeAnimation, radiusAnimation], isQueued:true)
    self.animator?.onCompletion() { isFinished in
      println(isFinished)
      
    }
    
//    self.animator = positionAnimation
    self.animator?.resume()
    

    
  }
  
  
  @IBAction func tapTogglePauseOrResume(sender:UIBarButtonItem) {
    if var a = self.animator {
      a.isPaused = !a.isPaused
    }
    
  }
  
  @IBAction func tapCancel(sender:UIBarButtonItem?) {
    self.animator?.cancel()
    self.toggleButtons(false)
  }

  @IBAction func tapCancelAndAbort(sender:UIBarButtonItem) {
    println("-------------------")

    self.animator?.undo()
  }

  
}
    

