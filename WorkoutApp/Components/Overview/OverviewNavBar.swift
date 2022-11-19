//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 19.11.2022.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let customButton = CustomButton()
    private let addButton = UIButton()
    
    private let weakView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottomBorder(withColor: Resources.Colors.separator, height: 1)
    }

    func addCustomButtonAction(_ action: Selector, with targer: Any) {
        customButton.addTarget(targer, action: action, for: .touchUpInside)
    }
    
    func addAdditingAction(_ action: Selector, with targer: Any) {
        addButton.addTarget(self, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    
    override func addViews() {
        super.addViews()
        
        addView(titleLabel)
        addView(customButton)
        addView(addButton)
        addView(weakView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28)
        ])
        
        NSLayoutConstraint.activate([
            customButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            customButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -16),
            customButton.heightAnchor.constraint(equalToConstant: 28),
            customButton.widthAnchor.constraint(equalToConstant: 130)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: customButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: customButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            weakView.topAnchor.constraint(equalTo: customButton.bottomAnchor, constant: 16),
            weakView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            weakView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            weakView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            weakView.heightAnchor.constraint(equalToConstant: 47)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        
        backgroundColor = .white
        
        titleLabel.text = Resources.Strings.NavBar.overview
        titleLabel.textColor = Resources.Colors.appTextGrayColor
        titleLabel.font = Resources.Fonts.helveticaRegular(withSize: 22)
        
        customButton.setTitle(Resources.Strings.Overview.customButtonTitle)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(Resources.Images.Common.add, for: .normal)
    }
    
}
