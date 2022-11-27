//
//  WeekdayView.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 19.11.2022.
//

import UIKit

extension WeekView {
    final class WeekdayView: BaseView {
        
        private let nameLabel: UILabel = {
            let label = UILabel()
            label.font = Resources.Fonts.helveticaRegular(withSize: 9)
            label.textAlignment = .center
            return label
        }()
        
        private let dateLabel: UILabel = {
            let label = UILabel()
            label.font = Resources.Fonts.helveticaRegular(withSize: 15 )
            label.textAlignment = .center
            return label
        }()
        
        private let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.spacing = 4
            stackView.axis = .vertical
            stackView.distribution = .fillEqually
            return stackView
        }()
        
        func configureWith(index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Date.calendar.component(.day, from: currentDay)
            
            let isTooday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isTooday ? Resources.Colors.active : Resources.Colors.background
             
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isTooday ? .white : Resources.Colors.inactive
            dateLabel.text = "\(day)"
            dateLabel.textColor = isTooday ? .white : Resources.Colors.inactive
        }
        
    }
}

extension WeekView.WeekdayView {
    override func addViews() {
        super.addViews()
        
        addView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        
        layer.cornerRadius = 5
    }
}
