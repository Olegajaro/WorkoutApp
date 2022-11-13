//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

enum TabIndex: Int {
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
        
        let overviewController = UIViewController()
        let sessionController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()
        
        let overviewNavController = UINavigationController(rootViewController: overviewController)
        let sessionNavController = UINavigationController(rootViewController: sessionController)
        let progressNavController = UINavigationController(rootViewController: progressController)
        let settingsNavController = UINavigationController(rootViewController: settingsController)
        
        overviewNavController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                        image: Resources.Images.TabBar.overview,
                                                        tag: TabIndex.overview.rawValue)
        sessionNavController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                       image: Resources.Images.TabBar.session,
                                                       tag: TabIndex.session.rawValue)
        progressNavController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                        image: Resources.Images.TabBar.progress,
                                                        tag: TabIndex.progress.rawValue)
        settingsNavController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                        image: Resources.Images.TabBar.settings,
                                                        tag: TabIndex.settings.rawValue)
        
        setViewControllers([
            overviewNavController,
            sessionNavController,
            progressNavController,
            settingsNavController
        ], animated: false)
    }
    
}
