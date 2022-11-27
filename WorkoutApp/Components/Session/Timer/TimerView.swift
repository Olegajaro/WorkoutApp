//
//  TimerView.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 27.11.2022.
//

import UIKit

final class TimerView: BaseInfoView {
    
    private let progressView: ProgressView = {
        let progressView = ProgressView()
        progressView.drawProgress(with: 0.5)
        return progressView
    }()
    
}

extension TimerView {
    override func addViews() {
        super.addViews()
        
        addView(progressView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        
    }
}
