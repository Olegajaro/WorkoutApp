//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

class OverviewController: BaseController {
    
    private let customButton = CustomButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension OverviewController {
    
    override func addViews() {
        super.addViews()
        
        view.addSubview(customButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            customButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customButton.heightAnchor.constraint(equalToConstant: 28),
            customButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    override func configure() {
        super.configure()
        
        customButton.translatesAutoresizingMaskIntoConstraints = false
        customButton.setTitle(Resources.Strings.Overview.customButtonTitle)
        customButton.addTarget(self, action: #selector(customButtonAction), for: .touchUpInside)
    }
    
}

@objc extension OverviewController {
    
    func customButtonAction() {
        print("DEBUG: custom button tapped")
    }
    
}
