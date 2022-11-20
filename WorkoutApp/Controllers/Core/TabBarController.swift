//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

enum TabIndex: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
    
        let controllers: [NavBarController] = TabIndex.allCases.map { tabIndex in
            let controller = NavBarController(rootViewController: getControllerFor(tabIndex))
            controller.tabBarItem = UITabBarItem(
                title: Resources.Strings.TabBar.title(for: tabIndex),
                image: Resources.Images.TabBar.image(for: tabIndex),
                tag: tabIndex.rawValue
            )
            return controller
        }
        
        setViewControllers(controllers, animated: false)
    }
    
    private func getControllerFor(_ tabIndex: TabIndex) -> BaseController {
        switch tabIndex {
        case .overview:
            return OverviewController()
        case .session:
            return SessionController()
        case .progress:
            return ProgressController()
        case .settings:
            return SettingsController()
        }
    }
    
}
