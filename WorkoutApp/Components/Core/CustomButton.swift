//
//  CustomButton.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

enum CustomButtonType {
    case primary
    case secondary
}

final class CustomButton: UIButton {
    
    private var type: CustomButtonType = .primary
    private var stringValue: String?
    
    private let title: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Resources.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        return imageView
    }()
    
    init(withType type: CustomButtonType) {
        self.type = type
        
        super.init(frame: .zero)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        addViews()
        layoutViews()
        configure()
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
        var horizontalOffset: CGFloat {
            switch type {
            case .primary:
                return 0
            case .secondary:
                return 10
            }
        }
        
        NSLayoutConstraint.activate([
            iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalOffset),
            iconImageView.heightAnchor.constraint(equalToConstant: 5),
            iconImageView.widthAnchor.constraint(equalToConstant: 10)
        ])
        
        NSLayoutConstraint.activate([
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            title.trailingAnchor.constraint(equalTo: iconImageView.leadingAnchor, constant: -10),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalOffset * 2)
        ])
    }
    
    func configure() {
        switch type {
        case .primary:
            title.textColor = Resources.Colors.inactive
            title.font = Resources.Fonts.helveticaRegular(withSize: 13)
            iconImageView.tintColor = Resources.Colors.inactive
        case .secondary:
            backgroundColor = Resources.Colors.customButtonColor
            layer.cornerRadius = 14
            title.textColor = Resources.Colors.active
            title.font = Resources.Fonts.helveticaRegular(withSize: 15)
            iconImageView.tintColor = Resources.Colors.active
        }
        
        makeSystem(self)
    }
    
}
