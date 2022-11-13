//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

enum NavBarItemPosition {
    case left
    case right
}

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
    }
    
}

@objc extension BaseController {
    
    func addViews() {
        
    }
    
    func layoutViews() {
        
    }
    
    func configure() {
        view.backgroundColor = Resources.Colors.background
    }
    
    func leftBarButtonItemAction() {
        print("DEBUG: left bar action")
    }
    
    func rightBarButtonItemAction() {
        print("DEBUG: right bar action")
    }
}

extension BaseController {
    
    func addNavBarButton(atPosition position: NavBarItemPosition, withTitle title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(withSize: 17)
        
        switch position {
        case .left:
            button.addTarget(self,
                             action: #selector(leftBarButtonItemAction),
                             for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self,
                             action: #selector(rightBarButtonItemAction),
                             for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
    
}

