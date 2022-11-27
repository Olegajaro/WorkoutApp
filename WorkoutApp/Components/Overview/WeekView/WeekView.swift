//
//  WeekView.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 19.11.2022.
//

import UIKit

final class WeekView: BaseView {
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        return stackView
    }()
    
}

extension WeekView {
    
    override func addViews() {
        super.addViews()
        
        addView(stackView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        
        var weekdays = Date.calendar.shortStandaloneWeekdaySymbols
        
        if Date.calendar.firstWeekday == 2 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        weekdays.enumerated().forEach { index, name in
            let view = WeekdayView()
            view.configureWith(index: index, and: name)
            stackView.addArrangedSubview(view)
        }
    }
    
}
