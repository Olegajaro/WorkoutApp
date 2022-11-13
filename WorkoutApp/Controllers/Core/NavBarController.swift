//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.appTextGrayColor,
            .font: Resources.Fonts.helveticaRegular(withSize: 17)
        ]
        
        navigationBar.addBottomBorder(withColor: Resources.Colors.separator, height: 1)
    }
    
}
