//
//  CustomButton.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

final class CustomButton: UIButton {
    
    private let title = UILabel()
    private let iconImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String) {
        self.title.text = title
    }
}

private extension CustomButton {
    
    func addViews() {
        addView(title)
        addView(iconImageView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconImageView.heightAnchor.constraint(equalToConstant: 5),
            iconImageView.widthAnchor.constraint(equalToConstant: 10)
        ])
        
        NSLayoutConstraint.activate([
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            title.trailingAnchor.constraint(equalTo: iconImageView.leadingAnchor, constant: -10),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configure() {
        backgroundColor = Resources.Colors.customButtonColor
        layer.cornerRadius = 14
        makeSystem(self)
        
        title.textAlignment = .center
        title.textColor = Resources.Colors.active
        title.font = Resources.Fonts.helveticaRegular(withSize: 15)
        
        iconImageView.image = Resources.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        iconImageView.tintColor = Resources.Colors.active
    }
    
}
