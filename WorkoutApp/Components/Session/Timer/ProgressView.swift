//
//  ProgressView.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 27.11.2022.
//

import UIKit

extension TimerView {
    final class ProgressView: UIView {
        
        func drawProgress(with percent: CGFloat) {
            let circleFrame = UIScreen.main.bounds.width - (15 + 40) * 2
            let radius = circleFrame * 0.5
            let center = CGPoint(x: radius, y: radius)
            let startAngle = -CGFloat.pi * 7 / 6
            let endAngle = CGFloat.pi * 1 / 6
            
            let circlePath = UIBezierPath(arcCenter: center,
                                          radius: radius,
                                          startAngle: startAngle,
                                          endAngle: endAngle,
                                          clockwise: true)
            
            let circleLayer = CAShapeLayer()
            circleLayer.path = circlePath.cgPath
            circleLayer.strokeColor = Resources.Colors.active.cgColor
            circleLayer.lineWidth = 20
            circleLayer.strokeEnd = percent
            circleLayer.fillColor = UIColor.clear.cgColor
            circleLayer.lineCap = .round
            
            layer.addSublayer(circleLayer)
        }
        
    }
}
